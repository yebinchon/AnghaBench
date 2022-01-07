; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/system/extr_memory.c__free_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/system/extr_memory.c__free_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }

@MEM_BASE_HEAP_MEM2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_free_r(%struct._reent* %0, i8* %1) #0 {
  %3 = alloca %struct._reent*, align 8
  %4 = alloca i8*, align 8
  store %struct._reent* %0, %struct._reent** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32, i32* @MEM_BASE_HEAP_MEM2, align 4
  %9 = call i32 @MEMGetBaseHeapHandle(i32 %8)
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @MEMFreeToExpHeap(i32 %9, i8* %10)
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @MEMFreeToExpHeap(i32, i8*) #1

declare dso_local i32 @MEMGetBaseHeapHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
