; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_new_replay.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_new_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay = type { i32, i32, i32*, %struct.channel*, %struct.module* }
%struct.channel = type { i32 }
%struct.module = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.replay* @new_replay(%struct.module* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.replay*, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i64 @calloc(i32 1, i32 32)
  %9 = inttoptr i64 %8 to %struct.replay*
  store %struct.replay* %9, %struct.replay** %7, align 8
  %10 = load %struct.replay*, %struct.replay** %7, align 8
  %11 = icmp ne %struct.replay* %10, null
  br i1 %11, label %12, label %49

12:                                               ; preds = %3
  %13 = load %struct.module*, %struct.module** %4, align 8
  %14 = load %struct.replay*, %struct.replay** %7, align 8
  %15 = getelementptr inbounds %struct.replay, %struct.replay* %14, i32 0, i32 4
  store %struct.module* %13, %struct.module** %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.replay*, %struct.replay** %7, align 8
  %18 = getelementptr inbounds %struct.replay, %struct.replay* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.replay*, %struct.replay** %7, align 8
  %21 = getelementptr inbounds %struct.replay, %struct.replay* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = call i64 @calloc(i32 128, i32 4)
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.replay*, %struct.replay** %7, align 8
  %25 = getelementptr inbounds %struct.replay, %struct.replay* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.module*, %struct.module** %4, align 8
  %27 = getelementptr inbounds %struct.module, %struct.module* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @calloc(i32 %28, i32 4)
  %30 = inttoptr i64 %29 to %struct.channel*
  %31 = load %struct.replay*, %struct.replay** %7, align 8
  %32 = getelementptr inbounds %struct.replay, %struct.replay* %31, i32 0, i32 3
  store %struct.channel* %30, %struct.channel** %32, align 8
  %33 = load %struct.replay*, %struct.replay** %7, align 8
  %34 = getelementptr inbounds %struct.replay, %struct.replay* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %12
  %38 = load %struct.replay*, %struct.replay** %7, align 8
  %39 = getelementptr inbounds %struct.replay, %struct.replay* %38, i32 0, i32 3
  %40 = load %struct.channel*, %struct.channel** %39, align 8
  %41 = icmp ne %struct.channel* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.replay*, %struct.replay** %7, align 8
  %44 = call i32 @replay_set_sequence_pos(%struct.replay* %43, i32 0)
  br label %48

45:                                               ; preds = %37, %12
  %46 = load %struct.replay*, %struct.replay** %7, align 8
  %47 = call i32 @dispose_replay(%struct.replay* %46)
  store %struct.replay* null, %struct.replay** %7, align 8
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %3
  %50 = load %struct.replay*, %struct.replay** %7, align 8
  ret %struct.replay* %50
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @replay_set_sequence_pos(%struct.replay*, i32) #1

declare dso_local i32 @dispose_replay(%struct.replay*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
