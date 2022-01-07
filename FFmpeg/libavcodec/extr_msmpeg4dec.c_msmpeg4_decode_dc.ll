; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msmpeg4dec.c_msmpeg4_decode_dc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msmpeg4dec.c_msmpeg4_decode_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, i32 }

@v2_dc_lum_vlc = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@DC_VLC_BITS = common dso_local global i32 0, align 4
@v2_dc_chroma_vlc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"illegal dc vlc\0A\00", align 1
@ff_msmp4_dc_luma_vlc = common dso_local global %struct.TYPE_12__* null, align 8
@ff_msmp4_dc_chroma_vlc = common dso_local global %struct.TYPE_13__* null, align 8
@DC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32*)* @msmpeg4_decode_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msmpeg4_decode_dc(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %14, 2
  br i1 %15, label %16, label %44

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @v2_dc_lum_vlc, i32 0, i32 0), align 4
  %23 = load i32, i32* @DC_VLC_BITS, align 4
  %24 = call i32 @get_vlc2(i32* %21, i32 %22, i32 %23, i32 3)
  store i32 %24, i32* %8, align 4
  br label %31

25:                                               ; preds = %16
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @v2_dc_chroma_vlc, i32 0, i32 0), align 4
  %29 = load i32, i32* @DC_VLC_BITS, align 4
  %30 = call i32 @get_vlc2(i32* %27, i32 %28, i32 %29, i32 3)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %25, %19
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = call i32 @av_log(i32 %37, i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %40 = load i32*, i32** %7, align 8
  store i32 0, i32* %40, align 4
  store i32 -1, i32* %4, align 4
  br label %152

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 256
  store i32 %43, i32* %8, align 4
  br label %111

44:                                               ; preds = %3
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ff_msmp4_dc_luma_vlc, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DC_VLC_BITS, align 4
  %58 = call i32 @get_vlc2(i32* %49, i32 %56, i32 %57, i32 3)
  store i32 %58, i32* %8, align 4
  br label %71

59:                                               ; preds = %44
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ff_msmp4_dc_chroma_vlc, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DC_VLC_BITS, align 4
  %70 = call i32 @get_vlc2(i32* %61, i32 %68, i32 %69, i32 3)
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %59, %47
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @AV_LOG_ERROR, align 4
  %79 = call i32 @av_log(i32 %77, i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %80 = load i32*, i32** %7, align 8
  store i32 0, i32* %80, align 4
  store i32 -1, i32* %4, align 4
  br label %152

81:                                               ; preds = %71
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @DC_MAX, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 4
  %88 = call i32 @get_bits(i32* %87, i32 8)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 4
  %91 = call i64 @get_bits1(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %93, %85
  br label %110

97:                                               ; preds = %81
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 4
  %103 = call i64 @get_bits1(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %105, %100
  br label %109

109:                                              ; preds = %108, %97
  br label %110

110:                                              ; preds = %109, %96
  br label %111

111:                                              ; preds = %110, %41
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @msmpeg4v1_pred_dc(%struct.TYPE_9__* %117, i32 %118, i32** %10)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32*, i32** %10, align 8
  store i32 %123, i32* %124, align 4
  br label %150

125:                                              ; preds = %111
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @ff_msmpeg4_pred_dc(%struct.TYPE_9__* %126, i32 %127, i32** %11, i32* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 4
  br i1 %134, label %135, label %142

135:                                              ; preds = %125
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %136, %139
  %141 = load i32*, i32** %11, align 8
  store i32 %140, i32* %141, align 4
  br label %149

142:                                              ; preds = %125
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %143, %146
  %148 = load i32*, i32** %11, align 8
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %142, %135
  br label %150

150:                                              ; preds = %149, %116
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %150, %74, %34
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @msmpeg4v1_pred_dc(%struct.TYPE_9__*, i32, i32**) #1

declare dso_local i32 @ff_msmpeg4_pred_dc(%struct.TYPE_9__*, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
