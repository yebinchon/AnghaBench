; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_take_paging_space_action.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_take_paging_space_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@no_paging_space_action_in_progress = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@kill_on_no_paging_space = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vm_compressor_take_paging_space_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_compressor_take_paging_space_action() #0 {
  %1 = load i64, i64* @no_paging_space_action_in_progress, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = call i64 @OSCompareAndSwap(i32 0, i32 1, i32* bitcast (i64* @no_paging_space_action_in_progress to i32*))
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = call i64 (...) @no_paging_space_action()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 (...) @memorystatus_send_low_swap_note()
  br label %11

11:                                               ; preds = %9, %6
  store i64 0, i64* @no_paging_space_action_in_progress, align 8
  br label %12

12:                                               ; preds = %11, %3
  br label %13

13:                                               ; preds = %12, %0
  ret void
}

declare dso_local i64 @OSCompareAndSwap(i32, i32, i32*) #1

declare dso_local i64 @no_paging_space_action(...) #1

declare dso_local i32 @memorystatus_send_low_swap_note(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
