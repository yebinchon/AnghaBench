; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_replay_get_audio.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_replay_get_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay = type { i32, i32, %struct.channel*, %struct.TYPE_2__*, i32 }
%struct.channel = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @replay_get_audio(%struct.replay* %0, i32* %1) #0 {
  %3 = alloca %struct.replay*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.replay* %0, %struct.replay** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.replay*, %struct.replay** %3, align 8
  %10 = getelementptr inbounds %struct.replay, %struct.replay* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.replay*, %struct.replay** %3, align 8
  %13 = getelementptr inbounds %struct.replay, %struct.replay* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @calculate_tick_len(i32 %11, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 65
  %19 = mul nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(i32* %16, i32 0, i32 %22)
  %24 = load %struct.replay*, %struct.replay** %3, align 8
  %25 = getelementptr inbounds %struct.replay, %struct.replay* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %61, %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  %34 = load %struct.replay*, %struct.replay** %3, align 8
  %35 = getelementptr inbounds %struct.replay, %struct.replay* %34, i32 0, i32 2
  %36 = load %struct.channel*, %struct.channel** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.channel, %struct.channel* %36, i64 %38
  store %struct.channel* %39, %struct.channel** %5, align 8
  %40 = load %struct.channel*, %struct.channel** %5, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 65
  %44 = mul nsw i32 %43, 2
  %45 = load %struct.replay*, %struct.replay** %3, align 8
  %46 = getelementptr inbounds %struct.replay, %struct.replay* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 2
  %49 = load %struct.replay*, %struct.replay** %3, align 8
  %50 = getelementptr inbounds %struct.replay, %struct.replay* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @channel_resample(%struct.channel* %40, i32* %41, i32 0, i32 %44, i32 %48, i32 %51)
  %53 = load %struct.channel*, %struct.channel** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %54, 2
  %56 = load %struct.replay*, %struct.replay** %3, align 8
  %57 = getelementptr inbounds %struct.replay, %struct.replay* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 2
  %60 = call i32 @channel_update_sample_idx(%struct.channel* %53, i32 %55, i32 %59)
  br label %61

61:                                               ; preds = %33
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %29

64:                                               ; preds = %29
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 64
  %68 = call i32 @downsample(i32* %65, i32 %67)
  %69 = load %struct.replay*, %struct.replay** %3, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @replay_volume_ramp(%struct.replay* %69, i32* %70, i32 %71)
  %73 = load %struct.replay*, %struct.replay** %3, align 8
  %74 = call i32 @replay_tick(%struct.replay* %73)
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local i32 @calculate_tick_len(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @channel_resample(%struct.channel*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @channel_update_sample_idx(%struct.channel*, i32, i32) #1

declare dso_local i32 @downsample(i32*, i32) #1

declare dso_local i32 @replay_volume_ramp(%struct.replay*, i32*, i32) #1

declare dso_local i32 @replay_tick(%struct.replay*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
