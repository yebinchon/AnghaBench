; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_dtrace_isa.c_dtrace_toxic_ranges.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_dtrace_isa.c_dtrace_toxic_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@VM_MAX_KERNEL_ADDRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_toxic_ranges(void (i64, i64)* %0) #0 {
  %2 = alloca void (i64, i64)*, align 8
  store void (i64, i64)* %0, void (i64, i64)** %2, align 8
  %3 = load void (i64, i64)*, void (i64, i64)** %2, align 8
  %4 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  call void %3(i64 0, i64 %4)
  %5 = load i64, i64* @VM_MAX_KERNEL_ADDRESS, align 8
  %6 = icmp ult i64 %5, -1
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load void (i64, i64)*, void (i64, i64)** %2, align 8
  %9 = load i64, i64* @VM_MAX_KERNEL_ADDRESS, align 8
  %10 = add i64 %9, 1
  call void %8(i64 %10, i64 -1)
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
