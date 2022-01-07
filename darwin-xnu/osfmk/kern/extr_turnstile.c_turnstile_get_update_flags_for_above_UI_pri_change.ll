; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_get_update_flags_for_above_UI_pri_change.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_get_update_flags_for_above_UI_pri_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.turnstile = type { i64 }

@thread_qos_policy_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@THREAD_QOS_USER_INTERACTIVE = common dso_local global i64 0, align 8
@TURNSTILE_ULOCK = common dso_local global i64 0, align 8
@TSU_ABOVE_UI_PRI_CHANGE = common dso_local global i32 0, align 4
@TSU_FLAGS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.turnstile*)* @turnstile_get_update_flags_for_above_UI_pri_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turnstile_get_update_flags_for_above_UI_pri_change(%struct.turnstile* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.turnstile*, align 8
  store %struct.turnstile* %0, %struct.turnstile** %3, align 8
  %4 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %5 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread_qos_policy_params, i32 0, i32 0), align 8
  %8 = load i64, i64* @THREAD_QOS_USER_INTERACTIVE, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  %12 = icmp sgt i64 %6, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %15 = call i64 @turnstile_get_type(%struct.turnstile* %14)
  %16 = load i64, i64* @TURNSTILE_ULOCK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @TSU_ABOVE_UI_PRI_CHANGE, align 4
  store i32 %19, i32* %2, align 4
  br label %22

20:                                               ; preds = %13, %1
  %21 = load i32, i32* @TSU_FLAGS_NONE, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @turnstile_get_type(%struct.turnstile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
