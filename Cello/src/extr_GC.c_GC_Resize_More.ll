; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_GC.c_GC_Resize_More.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_GC.c_GC_Resize_More.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GC = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.GC*)* @GC_Resize_More to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GC_Resize_More(%struct.GC* %0) #0 {
  %2 = alloca %struct.GC*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.GC* %0, %struct.GC** %2, align 8
  %5 = load %struct.GC*, %struct.GC** %2, align 8
  %6 = getelementptr inbounds %struct.GC, %struct.GC* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @GC_Ideal_Size(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.GC*, %struct.GC** %2, align 8
  %10 = getelementptr inbounds %struct.GC, %struct.GC* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.GC*, %struct.GC** %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @GC_Rehash(%struct.GC* %16, i64 %17)
  br label %19

19:                                               ; preds = %15, %1
  ret void
}

declare dso_local i64 @GC_Ideal_Size(i32) #1

declare dso_local i32 @GC_Rehash(%struct.GC*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
