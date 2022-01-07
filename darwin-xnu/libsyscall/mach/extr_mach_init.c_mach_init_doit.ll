; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_init.c_mach_init_doit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_init.c_mach_init_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mach_task_self_ = common dso_local global i32 0, align 4
@_task_reply_port = common dso_local global i32 0, align 4
@vm_kernel_page_shift = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@vm_kernel_page_size = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@vm_kernel_page_mask = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@vm_page_shift = common dso_local global i32 0, align 4
@vm_page_size = common dso_local global i32 0, align 4
@vm_page_mask = common dso_local global i32 0, align 4
@_COMM_PAGE_KERNEL_PAGE_SHIFT = common dso_local global i64 0, align 8
@_COMM_PAGE_USER_PAGE_SHIFT_32 = common dso_local global i64 0, align 8
@_COMM_PAGE_USER_PAGE_SHIFT_64 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mach_init_doit() #0 {
  %1 = call i32 (...) @task_self_trap()
  store i32 %1, i32* @mach_task_self_, align 4
  %2 = call i32 (...) @mach_reply_port()
  store i32 %2, i32* @_task_reply_port, align 4
  %3 = load i32, i32* @vm_kernel_page_shift, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %6, i32* @vm_kernel_page_size, align 4
  %7 = load i32, i32* @PAGE_MASK, align 4
  store i32 %7, i32* @vm_kernel_page_mask, align 4
  %8 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %8, i32* @vm_kernel_page_shift, align 4
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i32, i32* @vm_page_shift, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* @vm_kernel_page_shift, align 4
  store i32 %13, i32* @vm_page_shift, align 4
  %14 = load i32, i32* @vm_page_shift, align 4
  %15 = shl i32 1, %14
  store i32 %15, i32* @vm_page_size, align 4
  %16 = load i32, i32* @vm_page_size, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* @vm_page_mask, align 4
  br label %18

18:                                               ; preds = %12, %9
  %19 = call i32 (...) @_init_cpu_capabilities()
  %20 = call i32 @_pthread_set_self(i32 0)
  ret void
}

declare dso_local i32 @task_self_trap(...) #1

declare dso_local i32 @mach_reply_port(...) #1

declare dso_local i32 @_init_cpu_capabilities(...) #1

declare dso_local i32 @_pthread_set_self(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
