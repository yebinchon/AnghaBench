; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_sdl2.c_sdl2_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_sdl2.c_sdl2_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_15__**, %struct.TYPE_20__* }
%struct.TYPE_15__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported pixel format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @sdl2_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdl2_write_packet(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca [4 x i32*], align 16
  %11 = alloca [4 x i32], align 16
  %12 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %8, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %18, i64 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %9, align 8
  %23 = call i64 @SDL_PollEvent(%struct.TYPE_19__* %12)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %56 [
    i32 151, label %28
    i32 131, label %36
    i32 130, label %37
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %34 [
    i32 153, label %33
    i32 152, label %33
  ]

33:                                               ; preds = %28, %28
  store i32 1, i32* %7, align 4
  br label %35

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %33
  br label %57

36:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %57

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %54 [
    i32 129, label %41
    i32 128, label %41
  ]

41:                                               ; preds = %37, %37
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %53 = call i32 @compute_texture_rect(%struct.TYPE_22__* %52)
  br label %55

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %41
  br label %57

56:                                               ; preds = %25
  br label %57

57:                                               ; preds = %56, %55, %36, %35
  br label %58

58:                                               ; preds = %57, %2
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %68 = call i32 @sdl2_write_trailer(%struct.TYPE_22__* %67)
  %69 = load i32, i32* @EIO, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %3, align 4
  br label %138

71:                                               ; preds = %61, %58
  %72 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 0
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @av_image_fill_arrays(i32** %72, i32* %73, i32 %76, i32 %79, i32 %82, i32 %85, i32 1)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %116 [
    i32 142, label %90
    i32 132, label %90
    i32 133, label %90
    i32 140, label %107
    i32 139, label %107
    i32 138, label %107
    i32 147, label %107
    i32 137, label %107
    i32 146, label %107
    i32 141, label %107
    i32 148, label %107
    i32 136, label %107
    i32 134, label %107
    i32 145, label %107
    i32 143, label %107
    i32 149, label %107
    i32 135, label %107
    i32 150, label %107
    i32 144, label %107
  ]

90:                                               ; preds = %71, %71, %71
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 0
  %95 = load i32*, i32** %94, align 16
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %97 = load i32, i32* %96, align 16
  %98 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 2
  %103 = load i32*, i32** %102, align 16
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @SDL_UpdateYUVTexture(i32 %93, i32* null, i32* %95, i32 %97, i32* %99, i32 %101, i32* %103, i32 %105)
  store i32 %106, i32* %6, align 4
  br label %119

107:                                              ; preds = %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 0
  %112 = load i32*, i32** %111, align 16
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %114 = load i32, i32* %113, align 16
  %115 = call i32 @SDL_UpdateTexture(i32 %110, i32* null, i32* %112, i32 %114)
  store i32 %115, i32* %6, align 4
  br label %119

116:                                              ; preds = %71
  %117 = load i32, i32* @AV_LOG_FATAL, align 4
  %118 = call i32 @av_log(i32* null, i32 %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %119

119:                                              ; preds = %116, %107, %90
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @SDL_RenderClear(i32 %122)
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 2
  %132 = call i32 @SDL_RenderCopy(i32 %126, i32 %129, i32* null, i32* %131)
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @SDL_RenderPresent(i32 %135)
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %119, %66
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @SDL_PollEvent(%struct.TYPE_19__*) #1

declare dso_local i32 @compute_texture_rect(%struct.TYPE_22__*) #1

declare dso_local i32 @sdl2_write_trailer(%struct.TYPE_22__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_image_fill_arrays(i32**, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SDL_UpdateYUVTexture(i32, i32*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @SDL_UpdateTexture(i32, i32*, i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @SDL_RenderClear(i32) #1

declare dso_local i32 @SDL_RenderCopy(i32, i32, i32*, i32*) #1

declare dso_local i32 @SDL_RenderPresent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
