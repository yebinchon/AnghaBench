; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopusenc.c_libopus_validate_layout_and_get_channel_map.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopusenc.c_libopus_validate_layout_and_get_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ff_vorbis_channel_layout_offsets = common dso_local global i32** null, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Unknown channel mapping family %d. Output channel layout may be invalid.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32**)* @libopus_validate_layout_and_get_channel_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libopus_validate_layout_and_get_channel_map(%struct.TYPE_6__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32* null, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %51 [
    i32 -1, label %10
    i32 0, label %20
    i32 1, label %30
    i32 255, label %48
  ]

10:                                               ; preds = %3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = call i32 @libopus_check_max_channels(%struct.TYPE_6__* %11, i32 8)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @libopus_check_vorbis_layout(%struct.TYPE_6__* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %15, %10
  br label %56

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = call i32 @libopus_check_max_channels(%struct.TYPE_6__* %21, i32 2)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @libopus_check_vorbis_layout(%struct.TYPE_6__* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %20
  br label %56

30:                                               ; preds = %3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = call i32 @libopus_check_max_channels(%struct.TYPE_6__* %31, i32 8)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @libopus_check_vorbis_layout(%struct.TYPE_6__* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32**, i32*** @ff_vorbis_channel_layout_offsets, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %39, i64 %44
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %7, align 8
  br label %47

47:                                               ; preds = %35, %30
  br label %56

48:                                               ; preds = %3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = call i32 @libopus_check_max_channels(%struct.TYPE_6__* %49, i32 254)
  store i32 %50, i32* %8, align 4
  br label %56

51:                                               ; preds = %3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = load i32, i32* @AV_LOG_WARNING, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @av_log(%struct.TYPE_6__* %52, i32 %53, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %51, %48, %47, %29, %19
  %57 = load i32*, i32** %7, align 8
  %58 = load i32**, i32*** %6, align 8
  store i32* %57, i32** %58, align 8
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @libopus_check_max_channels(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @libopus_check_vorbis_layout(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
