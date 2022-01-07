; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_audio_remap.c_hb_audio_remap_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_audio_remap.c_hb_audio_remap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, i32*, i32* }

@.str = private unnamed_addr constant [46 x i8] c"hb_audio_remap_init: failed to allocate remap\00", align 1
@remap_planar = common dso_local global i32 0, align 4
@remap_u8_interleaved = common dso_local global i32 0, align 4
@remap_s16_interleaved = common dso_local global i32 0, align 4
@remap_s32_interleaved = common dso_local global i32 0, align 4
@remap_flt_interleaved = common dso_local global i32 0, align 4
@remap_dbl_interleaved = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"hb_audio_remap_init: unsupported sample format '%s'\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"hb_audio_remap_init: invalid channel map(s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @hb_audio_remap_init(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = call %struct.TYPE_5__* @calloc(i32 1, i32 32)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %56

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %34 [
    i32 128, label %16
    i32 132, label %16
    i32 130, label %16
    i32 134, label %16
    i32 136, label %16
    i32 129, label %19
    i32 133, label %22
    i32 131, label %25
    i32 135, label %28
    i32 137, label %31
  ]

16:                                               ; preds = %14, %14, %14, %14, %14
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  store i32* @remap_planar, i32** %18, align 8
  br label %38

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  store i32* @remap_u8_interleaved, i32** %21, align 8
  br label %38

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  store i32* @remap_s16_interleaved, i32** %24, align 8
  br label %38

25:                                               ; preds = %14
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  store i32* @remap_s32_interleaved, i32** %27, align 8
  br label %38

28:                                               ; preds = %14
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i32* @remap_flt_interleaved, i32** %30, align 8
  br label %38

31:                                               ; preds = %14
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  store i32* @remap_dbl_interleaved, i32** %33, align 8
  br label %38

34:                                               ; preds = %14
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @av_get_sample_fmt_name(i32 %35)
  %37 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %56

38:                                               ; preds = %31, %28, %25, %22, %19, %16
  %39 = load i32*, i32** %7, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32*, i32** %6, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %38
  %45 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %56

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %4, align 8
  br label %59

56:                                               ; preds = %44, %34, %12
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = call i32 @hb_audio_remap_free(%struct.TYPE_5__* %57)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %59

59:                                               ; preds = %56, %46
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %60
}

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @hb_error(i8*, ...) #1

declare dso_local i32 @av_get_sample_fmt_name(i32) #1

declare dso_local i32 @hb_audio_remap_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
