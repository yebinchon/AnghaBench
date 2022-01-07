; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_mpeg4_decode_dc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_mpeg4_decode_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }

@dc_lum = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@DC_VLC_BITS = common dso_local global i32 0, align 4
@dc_chrom = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"illegal dc vlc\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@IS_3IV1 = common dso_local global i64 0, align 8
@AV_EF_BITSTREAM = common dso_local global i32 0, align 4
@AV_EF_COMPLIANT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"dc marker bit missing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32*)* @mpeg4_decode_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg4_decode_dc(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dc_lum, i32 0, i32 0), align 4
  %16 = load i32, i32* @DC_VLC_BITS, align 4
  %17 = call i32 @get_vlc2(i32* %14, i32 %15, i32 %16, i32 1)
  store i32 %17, i32* %9, align 4
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dc_chrom, i32 0, i32 0), align 4
  %22 = load i32, i32* @DC_VLC_BITS, align 4
  %23 = call i32 @get_vlc2(i32* %20, i32 %21, i32 %22, i32 1)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 9
  br i1 %29, label %30, label %37

30:                                               ; preds = %27, %24
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = call i32 @av_log(%struct.TYPE_10__* %33, i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %4, align 4
  br label %121

37:                                               ; preds = %27
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %115

41:                                               ; preds = %37
  %42 = load i64, i64* @IS_3IV1, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = call i32 @get_bits1(i32* %49)
  %51 = mul nsw i32 2, %50
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %80

53:                                               ; preds = %44
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = call i32 @get_bits1(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @get_bits(i32* %60, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, 1
  %66 = shl i32 1, %65
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %8, align 4
  br label %79

68:                                               ; preds = %53
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @get_bits(i32* %70, i32 %72)
  %74 = sub nsw i32 0, %73
  %75 = load i32, i32* %9, align 4
  %76 = sub nsw i32 %75, 1
  %77 = shl i32 1, %76
  %78 = sub nsw i32 %74, %77
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %68, %58
  br label %80

80:                                               ; preds = %79, %47
  br label %86

81:                                               ; preds = %41
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @get_xbits(i32* %83, i32 %84)
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %81, %80
  %87 = load i32, i32* %9, align 4
  %88 = icmp sgt i32 %87, 8
  br i1 %88, label %89, label %114

89:                                               ; preds = %86
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = call i32 @get_bits1(i32* %91)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %89
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @AV_EF_BITSTREAM, align 4
  %101 = load i32, i32* @AV_EF_COMPLIANT, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %94
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load i32, i32* @AV_LOG_ERROR, align 4
  %110 = call i32 @av_log(%struct.TYPE_10__* %108, i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %111, i32* %4, align 4
  br label %121

112:                                              ; preds = %94
  br label %113

113:                                              ; preds = %112, %89
  br label %114

114:                                              ; preds = %113, %86
  br label %115

115:                                              ; preds = %114, %40
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @ff_mpeg4_pred_dc(%struct.TYPE_7__* %116, i32 %117, i32 %118, i32* %119, i32 0)
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %115, %105, %30
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_xbits(i32*, i32) #1

declare dso_local i32 @ff_mpeg4_pred_dc(%struct.TYPE_7__*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
