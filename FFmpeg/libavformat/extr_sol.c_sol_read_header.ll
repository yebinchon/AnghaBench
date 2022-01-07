; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sol.c_sol_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sol.c_sol_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@AV_CODEC_ID_SOL_DPCM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @sol_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sol_read_header(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @avio_rl16(i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @avio_rl32(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @MKTAG(i8 signext 83, i8 signext 79, i8 signext 76, i32 0)
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %98

24:                                               ; preds = %1
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @avio_rl16(i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @avio_r8(i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @avio_skip(i32* %29, i32 4)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 2957
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @avio_r8(i32* %34)
  br label %36

36:                                               ; preds = %33, %24
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @sol_codec_id(i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @sol_channels(i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @AV_CODEC_ID_SOL_DPCM, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @sol_codec_type(i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %51

50:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %46
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = call %struct.TYPE_9__* @avformat_new_stream(%struct.TYPE_10__* %52, i32* null)
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %12, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 -1, i32* %2, align 4
  br label %98

57:                                               ; preds = %51
  %58 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %57
  %81 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  br label %84

82:                                               ; preds = %57
  %83 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 4
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  store i32 %90, i32* %94, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @avpriv_set_pts_info(%struct.TYPE_9__* %95, i32 64, i32 1, i32 %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %84, %56, %23
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i32) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @sol_codec_id(i32, i32) #1

declare dso_local i32 @sol_channels(i32, i32) #1

declare dso_local i32 @sol_codec_type(i32, i32) #1

declare dso_local %struct.TYPE_9__* @avformat_new_stream(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
