; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swapout_thread_throttle_adjust.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swapout_thread_throttle_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_swapout_state = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_COMPRESSOR_TIER2 = common dso_local global i32 0, align 4
@vm_swapper_throttle = common dso_local global i32 0, align 4
@vm_swapper_entered_T2P = common dso_local global i32 0, align 4
@kernel_task = common dso_local global i32 0, align 4
@vm_swapout_thread_id = common dso_local global i32 0, align 4
@TASK_POLICY_INTERNAL = common dso_local global i32 0, align 4
@TASK_POLICY_IO = common dso_local global i32 0, align 4
@TASK_POLICY_PASSIVE_IO = common dso_local global i32 0, align 4
@TASK_POLICY_ENABLE = common dso_local global i32 0, align 4
@VM_SWAPOUT_LIMIT_T2P = common dso_local global i32 0, align 4
@vm_swapout_limit = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_COMPRESSOR_TIER0 = common dso_local global i32 0, align 4
@vm_swapper_entered_T0P = common dso_local global i32 0, align 4
@VM_SWAPOUT_LIMIT_T0P = common dso_local global i32 0, align 4
@swapout_target_age = common dso_local global i32 0, align 4
@hibernate_flushing = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_COMPRESSOR_TIER1 = common dso_local global i32 0, align 4
@vm_swapper_entered_T1P = common dso_local global i32 0, align 4
@VM_SWAPOUT_LIMIT_T1P = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@vm_swapper_entered_T0 = common dso_local global i32 0, align 4
@TASK_POLICY_DISABLE = common dso_local global i32 0, align 4
@VM_SWAPOUT_LIMIT_T0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vm_swapout_thread_throttle_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_swapout_thread_throttle_adjust() #0 {
  %1 = load i32, i32* @vm_swapout_state, align 4
  switch i32 %1, label %157 [
    i32 132, label %2
    i32 128, label %19
    i32 129, label %64
    i32 130, label %109
    i32 131, label %143
  ]

2:                                                ; preds = %0
  %3 = load i32, i32* @THROTTLE_LEVEL_COMPRESSOR_TIER2, align 4
  store i32 %3, i32* @vm_swapper_throttle, align 4
  %4 = load i32, i32* @vm_swapper_entered_T2P, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @vm_swapper_entered_T2P, align 4
  %6 = load i32, i32* @kernel_task, align 4
  %7 = load i32, i32* @vm_swapout_thread_id, align 4
  %8 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %9 = load i32, i32* @TASK_POLICY_IO, align 4
  %10 = load i32, i32* @vm_swapper_throttle, align 4
  %11 = call i32 @proc_set_thread_policy_with_tid(i32 %6, i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* @kernel_task, align 4
  %13 = load i32, i32* @vm_swapout_thread_id, align 4
  %14 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %15 = load i32, i32* @TASK_POLICY_PASSIVE_IO, align 4
  %16 = load i32, i32* @TASK_POLICY_ENABLE, align 4
  %17 = call i32 @proc_set_thread_policy_with_tid(i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @VM_SWAPOUT_LIMIT_T2P, align 4
  store i32 %18, i32* @vm_swapout_limit, align 4
  store i32 128, i32* @vm_swapout_state, align 4
  br label %157

19:                                               ; preds = %0
  %20 = call i32 (...) @SWAPPER_NEEDS_TO_UNTHROTTLE()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load i32, i32* @THROTTLE_LEVEL_COMPRESSOR_TIER0, align 4
  store i32 %23, i32* @vm_swapper_throttle, align 4
  %24 = load i32, i32* @vm_swapper_entered_T0P, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @vm_swapper_entered_T0P, align 4
  %26 = load i32, i32* @kernel_task, align 4
  %27 = load i32, i32* @vm_swapout_thread_id, align 4
  %28 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %29 = load i32, i32* @TASK_POLICY_IO, align 4
  %30 = load i32, i32* @vm_swapper_throttle, align 4
  %31 = call i32 @proc_set_thread_policy_with_tid(i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @kernel_task, align 4
  %33 = load i32, i32* @vm_swapout_thread_id, align 4
  %34 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %35 = load i32, i32* @TASK_POLICY_PASSIVE_IO, align 4
  %36 = load i32, i32* @TASK_POLICY_ENABLE, align 4
  %37 = call i32 @proc_set_thread_policy_with_tid(i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @VM_SWAPOUT_LIMIT_T0P, align 4
  store i32 %38, i32* @vm_swapout_limit, align 4
  store i32 130, i32* @vm_swapout_state, align 4
  br label %157

39:                                               ; preds = %19
  %40 = load i32, i32* @swapout_target_age, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @hibernate_flushing, align 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42, %39
  %47 = load i32, i32* @THROTTLE_LEVEL_COMPRESSOR_TIER1, align 4
  store i32 %47, i32* @vm_swapper_throttle, align 4
  %48 = load i32, i32* @vm_swapper_entered_T1P, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @vm_swapper_entered_T1P, align 4
  %50 = load i32, i32* @kernel_task, align 4
  %51 = load i32, i32* @vm_swapout_thread_id, align 4
  %52 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %53 = load i32, i32* @TASK_POLICY_IO, align 4
  %54 = load i32, i32* @vm_swapper_throttle, align 4
  %55 = call i32 @proc_set_thread_policy_with_tid(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @kernel_task, align 4
  %57 = load i32, i32* @vm_swapout_thread_id, align 4
  %58 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %59 = load i32, i32* @TASK_POLICY_PASSIVE_IO, align 4
  %60 = load i32, i32* @TASK_POLICY_ENABLE, align 4
  %61 = call i32 @proc_set_thread_policy_with_tid(i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @VM_SWAPOUT_LIMIT_T1P, align 4
  store i32 %62, i32* @vm_swapout_limit, align 4
  store i32 129, i32* @vm_swapout_state, align 4
  br label %63

63:                                               ; preds = %46, %42
  br label %157

64:                                               ; preds = %0
  %65 = call i32 (...) @SWAPPER_NEEDS_TO_UNTHROTTLE()
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load i32, i32* @THROTTLE_LEVEL_COMPRESSOR_TIER0, align 4
  store i32 %68, i32* @vm_swapper_throttle, align 4
  %69 = load i32, i32* @vm_swapper_entered_T0P, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @vm_swapper_entered_T0P, align 4
  %71 = load i32, i32* @kernel_task, align 4
  %72 = load i32, i32* @vm_swapout_thread_id, align 4
  %73 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %74 = load i32, i32* @TASK_POLICY_IO, align 4
  %75 = load i32, i32* @vm_swapper_throttle, align 4
  %76 = call i32 @proc_set_thread_policy_with_tid(i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* @kernel_task, align 4
  %78 = load i32, i32* @vm_swapout_thread_id, align 4
  %79 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %80 = load i32, i32* @TASK_POLICY_PASSIVE_IO, align 4
  %81 = load i32, i32* @TASK_POLICY_ENABLE, align 4
  %82 = call i32 @proc_set_thread_policy_with_tid(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* @VM_SWAPOUT_LIMIT_T0P, align 4
  store i32 %83, i32* @vm_swapout_limit, align 4
  store i32 130, i32* @vm_swapout_state, align 4
  br label %157

84:                                               ; preds = %64
  %85 = load i32, i32* @swapout_target_age, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %84
  %88 = load i32, i32* @hibernate_flushing, align 4
  %89 = load i32, i32* @FALSE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load i32, i32* @THROTTLE_LEVEL_COMPRESSOR_TIER2, align 4
  store i32 %92, i32* @vm_swapper_throttle, align 4
  %93 = load i32, i32* @vm_swapper_entered_T2P, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* @vm_swapper_entered_T2P, align 4
  %95 = load i32, i32* @kernel_task, align 4
  %96 = load i32, i32* @vm_swapout_thread_id, align 4
  %97 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %98 = load i32, i32* @TASK_POLICY_IO, align 4
  %99 = load i32, i32* @vm_swapper_throttle, align 4
  %100 = call i32 @proc_set_thread_policy_with_tid(i32 %95, i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* @kernel_task, align 4
  %102 = load i32, i32* @vm_swapout_thread_id, align 4
  %103 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %104 = load i32, i32* @TASK_POLICY_PASSIVE_IO, align 4
  %105 = load i32, i32* @TASK_POLICY_ENABLE, align 4
  %106 = call i32 @proc_set_thread_policy_with_tid(i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* @VM_SWAPOUT_LIMIT_T2P, align 4
  store i32 %107, i32* @vm_swapout_limit, align 4
  store i32 128, i32* @vm_swapout_state, align 4
  br label %108

108:                                              ; preds = %91, %87, %84
  br label %157

109:                                              ; preds = %0
  %110 = call i32 (...) @SWAPPER_NEEDS_TO_RETHROTTLE()
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %109
  %113 = load i32, i32* @THROTTLE_LEVEL_COMPRESSOR_TIER2, align 4
  store i32 %113, i32* @vm_swapper_throttle, align 4
  %114 = load i32, i32* @vm_swapper_entered_T2P, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @vm_swapper_entered_T2P, align 4
  %116 = load i32, i32* @kernel_task, align 4
  %117 = load i32, i32* @vm_swapout_thread_id, align 4
  %118 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %119 = load i32, i32* @TASK_POLICY_IO, align 4
  %120 = load i32, i32* @vm_swapper_throttle, align 4
  %121 = call i32 @proc_set_thread_policy_with_tid(i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* @kernel_task, align 4
  %123 = load i32, i32* @vm_swapout_thread_id, align 4
  %124 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %125 = load i32, i32* @TASK_POLICY_PASSIVE_IO, align 4
  %126 = load i32, i32* @TASK_POLICY_ENABLE, align 4
  %127 = call i32 @proc_set_thread_policy_with_tid(i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* @VM_SWAPOUT_LIMIT_T2P, align 4
  store i32 %128, i32* @vm_swapout_limit, align 4
  store i32 128, i32* @vm_swapout_state, align 4
  br label %157

129:                                              ; preds = %109
  %130 = call i32 (...) @SWAPPER_NEEDS_TO_CATCHUP()
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load i32, i32* @vm_swapper_entered_T0, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* @vm_swapper_entered_T0, align 4
  %135 = load i32, i32* @kernel_task, align 4
  %136 = load i32, i32* @vm_swapout_thread_id, align 4
  %137 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %138 = load i32, i32* @TASK_POLICY_PASSIVE_IO, align 4
  %139 = load i32, i32* @TASK_POLICY_DISABLE, align 4
  %140 = call i32 @proc_set_thread_policy_with_tid(i32 %135, i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* @VM_SWAPOUT_LIMIT_T0, align 4
  store i32 %141, i32* @vm_swapout_limit, align 4
  store i32 131, i32* @vm_swapout_state, align 4
  br label %142

142:                                              ; preds = %132, %129
  br label %157

143:                                              ; preds = %0
  %144 = call i32 (...) @SWAPPER_HAS_CAUGHTUP()
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %143
  %147 = load i32, i32* @vm_swapper_entered_T0P, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* @vm_swapper_entered_T0P, align 4
  %149 = load i32, i32* @kernel_task, align 4
  %150 = load i32, i32* @vm_swapout_thread_id, align 4
  %151 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %152 = load i32, i32* @TASK_POLICY_PASSIVE_IO, align 4
  %153 = load i32, i32* @TASK_POLICY_ENABLE, align 4
  %154 = call i32 @proc_set_thread_policy_with_tid(i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* @VM_SWAPOUT_LIMIT_T0P, align 4
  store i32 %155, i32* @vm_swapout_limit, align 4
  store i32 130, i32* @vm_swapout_state, align 4
  br label %156

156:                                              ; preds = %146, %143
  br label %157

157:                                              ; preds = %0, %156, %142, %112, %108, %67, %63, %22, %2
  ret void
}

declare dso_local i32 @proc_set_thread_policy_with_tid(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SWAPPER_NEEDS_TO_UNTHROTTLE(...) #1

declare dso_local i32 @SWAPPER_NEEDS_TO_RETHROTTLE(...) #1

declare dso_local i32 @SWAPPER_NEEDS_TO_CATCHUP(...) #1

declare dso_local i32 @SWAPPER_HAS_CAUGHTUP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
