; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mig_allocate.c_mig_allocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mig_allocate.c_mig_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mach_task_self_ = common dso_local global i32 0, align 4
@VM_MEMORY_MACH_MSG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mig_allocate(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @mach_task_self_, align 4
  %6 = load i64*, i64** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @VM_MEMORY_MACH_MSG, align 4
  %9 = call i32 @VM_MAKE_TAG(i32 %8)
  %10 = load i32, i32* @TRUE, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @vm_allocate(i32 %5, i64* %6, i32 %7, i32 %11)
  %13 = load i64, i64* @KERN_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64*, i64** %3, align 8
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %15, %2
  ret void
}

declare dso_local i64 @vm_allocate(i32, i64*, i32, i32) #1

declare dso_local i32 @VM_MAKE_TAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
