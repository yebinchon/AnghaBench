; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_audio_mixer.c_task_audio_mixer_load_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_audio_mixer.c_task_audio_mixer_load_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.audio_mixer_handle = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_audio_mixer_load_handler(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.audio_mixer_handle*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %4, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.audio_mixer_handle*
  store %struct.audio_mixer_handle* %14, %struct.audio_mixer_handle** %5, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %70

19:                                               ; preds = %1
  %20 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %5, align 8
  %21 = icmp ne %struct.audio_mixer_handle* %20, null
  br i1 %21, label %22, label %70

22:                                               ; preds = %19
  %23 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %5, align 8
  %24 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %70, label %27

27:                                               ; preds = %22
  %28 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %5, align 8
  %29 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %27
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = call i32 @task_get_cancelled(%struct.TYPE_10__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %70, label %36

36:                                               ; preds = %32
  %37 = call i64 @calloc(i32 1, i32 12)
  %38 = inttoptr i64 %37 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %6, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %5, align 8
  %43 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %5, align 8
  %50 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %49, i32 0, i32 2
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @strdup(i32 %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %41, %36
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = call i32 @task_set_data(%struct.TYPE_10__* %63, %struct.TYPE_12__* %64)
  %66 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %5, align 8
  %67 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %5, align 8
  %69 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  store i32 0, i32* %2, align 4
  br label %71

70:                                               ; preds = %32, %27, %22, %19, %1
  store i32 1, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %62
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @task_get_cancelled(%struct.TYPE_10__*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @task_set_data(%struct.TYPE_10__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
