; ModuleID = '/home/carl/AnghaBench/RetroArch/managers/extr_cheat_manager.c_cheat_manager_toggle.c'
source_filename = "/home/carl/AnghaBench/RetroArch/managers/extr_cheat_manager.c_cheat_manager_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@cheat_manager_state = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cheat_manager_toggle() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cheat_manager_state, i32 0, i32 2), align 8
  %2 = icmp ne %struct.TYPE_4__* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cheat_manager_state, i32 0, i32 0), align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %0
  br label %17

7:                                                ; preds = %3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cheat_manager_state, i32 0, i32 2), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cheat_manager_state, i32 0, i32 1), align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = call i32 (...) @cheat_manager_apply_cheats()
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cheat_manager_state, i32 0, i32 1), align 8
  %16 = call i32 @cheat_manager_update(%struct.TYPE_5__* @cheat_manager_state, i64 %15)
  br label %17

17:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @cheat_manager_apply_cheats(...) #1

declare dso_local i32 @cheat_manager_update(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
