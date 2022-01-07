; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_common.c_pulse_add_detected_device.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_common.c_pulse_add_detected_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, i8*)* @pulse_add_detected_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pulse_add_detected_device(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %74

14:                                               ; preds = %3
  %15 = call %struct.TYPE_10__* @av_mallocz(i32 16)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = call i8* @AVERROR(i32 %19)
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %74

24:                                               ; preds = %14
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @av_strdup(i8* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @av_strdup(i8* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %24
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37, %24
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i8* @AVERROR(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %65

48:                                               ; preds = %37
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = call i32 @av_dynarray_add_nofree(i32* %52, i32* %56, %struct.TYPE_10__* %57)
  store i32 %58, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %65

64:                                               ; preds = %48
  br label %74

65:                                               ; preds = %60, %42
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = call i32 @av_freep(i8** %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = call i32 @av_freep(i8** %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = call i32 @av_free(%struct.TYPE_10__* %72)
  br label %74

74:                                               ; preds = %65, %64, %18, %13
  ret void
}

declare dso_local %struct.TYPE_10__* @av_mallocz(i32) #1

declare dso_local i8* @AVERROR(i32) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @av_dynarray_add_nofree(i32*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @av_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
