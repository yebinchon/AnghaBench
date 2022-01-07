; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_replay_tick.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_replay_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay = type { i64, i64, i32**, i64, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.replay*)* @replay_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replay_tick(%struct.replay* %0) #0 {
  %2 = alloca %struct.replay*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.replay* %0, %struct.replay** %2, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.replay*, %struct.replay** %2, align 8
  %7 = getelementptr inbounds %struct.replay, %struct.replay* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* %7, align 8
  %10 = icmp sle i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.replay*, %struct.replay** %2, align 8
  %13 = getelementptr inbounds %struct.replay, %struct.replay* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.replay*, %struct.replay** %2, align 8
  %16 = getelementptr inbounds %struct.replay, %struct.replay* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.replay*, %struct.replay** %2, align 8
  %18 = call i32 @replay_row(%struct.replay* %17)
  br label %41

19:                                               ; preds = %1
  %20 = load %struct.replay*, %struct.replay** %2, align 8
  %21 = getelementptr inbounds %struct.replay, %struct.replay* %20, i32 0, i32 6
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %37, %19
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.replay*, %struct.replay** %2, align 8
  %31 = getelementptr inbounds %struct.replay, %struct.replay* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @channel_tick(i32* %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %25

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %11
  %42 = load %struct.replay*, %struct.replay** %2, align 8
  %43 = getelementptr inbounds %struct.replay, %struct.replay* %42, i32 0, i32 2
  %44 = load i32**, i32*** %43, align 8
  %45 = icmp ne i32** %44, null
  br i1 %45, label %46, label %68

46:                                               ; preds = %41
  %47 = load %struct.replay*, %struct.replay** %2, align 8
  %48 = getelementptr inbounds %struct.replay, %struct.replay* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load %struct.replay*, %struct.replay** %2, align 8
  %55 = getelementptr inbounds %struct.replay, %struct.replay* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = load %struct.replay*, %struct.replay** %2, align 8
  %58 = getelementptr inbounds %struct.replay, %struct.replay* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32*, i32** %56, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.replay*, %struct.replay** %2, align 8
  %63 = getelementptr inbounds %struct.replay, %struct.replay* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %53, %46, %41
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @replay_row(%struct.replay*) #1

declare dso_local i32 @channel_tick(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
