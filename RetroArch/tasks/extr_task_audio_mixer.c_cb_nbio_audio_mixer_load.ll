; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_audio_mixer.c_cb_nbio_audio_mixer_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_audio_mixer.c_cb_nbio_audio_mixer_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.audio_mixer_handle = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @cb_nbio_audio_mixer_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_nbio_audio_mixer_load(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.audio_mixer_handle*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.audio_mixer_handle*
  store %struct.audio_mixer_handle* %15, %struct.audio_mixer_handle** %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @nbio_get_ptr(i32 %18, i64* %5)
  store i8* %19, i8** %8, align 8
  %20 = call i64 @calloc(i32 1, i32 16)
  %21 = inttoptr i64 %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %9, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %7, align 8
  %28 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %27, i32 0, i32 1
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %7, align 8
  %31 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i8* %29, i8** %33, align 8
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %7, align 8
  %37 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %7, align 8
  %41 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %25, %24
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i8* @nbio_get_ptr(i32, i64*) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
