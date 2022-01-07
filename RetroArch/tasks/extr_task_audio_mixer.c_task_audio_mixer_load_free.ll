; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_audio_mixer.c_task_audio_mixer_load_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_audio_mixer.c_task_audio_mixer_load_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.audio_mixer_handle = type { i32 (%struct.TYPE_7__*, i32*, i32*, i32*)*, %struct.TYPE_8__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @task_audio_mixer_load_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_audio_mixer_load_free(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.audio_mixer_handle*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = bitcast %struct.TYPE_8__* %11 to %struct.audio_mixer_handle*
  store %struct.audio_mixer_handle* %12, %struct.audio_mixer_handle** %4, align 8
  %13 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %4, align 8
  %14 = icmp ne %struct.audio_mixer_handle* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %1
  %16 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %4, align 8
  %17 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %4, align 8
  %22 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %4, align 8
  %29 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = call i32 @free(%struct.TYPE_8__* %32)
  br label %34

34:                                               ; preds = %27, %20
  %35 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %4, align 8
  %36 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = call i32 @free(%struct.TYPE_8__* %37)
  br label %39

39:                                               ; preds = %34, %15
  %40 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %4, align 8
  %41 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*)** %41, align 8
  %43 = icmp ne i32 (%struct.TYPE_7__*, i32*, i32*, i32*)* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %4, align 8
  %46 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*)** %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = call i32 %47(%struct.TYPE_7__* %48, i32* null, i32* null, i32* null)
  br label %50

50:                                               ; preds = %44, %39
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i32 @string_is_empty(%struct.TYPE_8__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i32 @free(%struct.TYPE_8__* %60)
  br label %62

62:                                               ; preds = %57, %51
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = icmp ne %struct.TYPE_8__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = call i32 @free(%struct.TYPE_8__* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @nbio_free(i32 %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = call i32 @free(%struct.TYPE_8__* %77)
  ret void
}

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @string_is_empty(%struct.TYPE_8__*) #1

declare dso_local i32 @nbio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
