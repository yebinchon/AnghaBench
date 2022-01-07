; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_action_reset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_action_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@actionc = common dso_local global i32 0, align 4
@MAX_CALLSTACK_FRAMES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_action_reset() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %24, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @actionc, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %27

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = add i32 %7, 1
  %9 = call i32 @kperf_action_set_samplers(i32 %8, i32 0)
  %10 = load i32, i32* %1, align 4
  %11 = add i32 %10, 1
  %12 = call i32 @kperf_action_set_userdata(i32 %11, i32 0)
  %13 = load i32, i32* %1, align 4
  %14 = add i32 %13, 1
  %15 = call i32 @kperf_action_set_filter(i32 %14, i32 -1)
  %16 = load i32, i32* %1, align 4
  %17 = add i32 %16, 1
  %18 = load i32, i32* @MAX_CALLSTACK_FRAMES, align 4
  %19 = call i32 @kperf_action_set_ucallstack_depth(i32 %17, i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = add i32 %20, 1
  %22 = load i32, i32* @MAX_CALLSTACK_FRAMES, align 4
  %23 = call i32 @kperf_action_set_kcallstack_depth(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %6
  %25 = load i32, i32* %1, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %2

27:                                               ; preds = %2
  ret void
}

declare dso_local i32 @kperf_action_set_samplers(i32, i32) #1

declare dso_local i32 @kperf_action_set_userdata(i32, i32) #1

declare dso_local i32 @kperf_action_set_filter(i32, i32) #1

declare dso_local i32 @kperf_action_set_ucallstack_depth(i32, i32) #1

declare dso_local i32 @kperf_action_set_kcallstack_depth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
