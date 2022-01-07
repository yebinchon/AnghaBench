; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_getiopolicy_np.c_setiopolicy_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_getiopolicy_np.c_setiopolicy_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._iopol_param_t = type { i32, i32, i32 }

@IOPOL_CMD_SET = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setiopolicy_np(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._iopol_param_t, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct._iopol_param_t, %struct._iopol_param_t* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds %struct._iopol_param_t, %struct._iopol_param_t* %7, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds %struct._iopol_param_t, %struct._iopol_param_t* %7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @IOPOL_CMD_SET, align 4
  %16 = call i32 @__iopolicysys(i32 %15, %struct._iopol_param_t* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -2
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @MACH_PORT_NULL, align 4
  %21 = call i32 @_pthread_clear_qos_tsd(i32 %20)
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i32, i32* %8, align 4
  ret i32 %23
}

declare dso_local i32 @__iopolicysys(i32, %struct._iopol_param_t*) #1

declare dso_local i32 @_pthread_clear_qos_tsd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
