; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_memory.c_ctr_get_stack_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_memory.c_ctr_get_stack_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__stack_bottom = external dso_local global i64, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ctr_get_stack_free() #0 {
  %1 = alloca i64*, align 8
  %2 = load i64, i64* @__stack_bottom, align 8
  %3 = inttoptr i64 %2 to i64*
  store i64* %3, i64** %1, align 8
  br label %4

4:                                                ; preds = %9, %0
  %5 = load i64*, i64** %1, align 8
  %6 = getelementptr inbounds i64, i64* %5, i32 1
  store i64* %6, i64** %1, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 4244438268
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %4

10:                                               ; preds = %4
  %11 = load i64*, i64** %1, align 8
  %12 = getelementptr inbounds i64, i64* %11, i32 -1
  store i64* %12, i64** %1, align 8
  %13 = load i64*, i64** %1, align 8
  %14 = ptrtoint i64* %13 to i64
  %15 = load i64, i64* @__stack_bottom, align 8
  %16 = sub nsw i64 %14, %15
  ret i64 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
