; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_replay_calculate_duration.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_replay_calculate_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @replay_calculate_duration(%struct.replay* %0) #0 {
  %2 = alloca %struct.replay*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.replay* %0, %struct.replay** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.replay*, %struct.replay** %2, align 8
  %6 = call i32 @replay_set_sequence_pos(%struct.replay* %5, i32 0)
  br label %7

7:                                                ; preds = %10, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load %struct.replay*, %struct.replay** %2, align 8
  %12 = getelementptr inbounds %struct.replay, %struct.replay* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.replay*, %struct.replay** %2, align 8
  %15 = getelementptr inbounds %struct.replay, %struct.replay* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @calculate_tick_len(i32 %13, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load %struct.replay*, %struct.replay** %2, align 8
  %23 = call i32 @replay_tick(%struct.replay* %22)
  store i32 %23, i32* %3, align 4
  br label %7

24:                                               ; preds = %7
  %25 = load %struct.replay*, %struct.replay** %2, align 8
  %26 = call i32 @replay_set_sequence_pos(%struct.replay* %25, i32 0)
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @replay_set_sequence_pos(%struct.replay*, i32) #1

declare dso_local i64 @calculate_tick_len(i32, i32) #1

declare dso_local i32 @replay_tick(%struct.replay*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
