; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mmf.c_mmf_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mmf.c_mmf_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MIDI like format found, unsupported\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported SMAF chunk %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid sample rate\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unexpected SMAF chunk %08x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_YAMAHA = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @mmf_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmf_read_header(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @avio_rl32(i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @MKTAG(i8 signext 77, i8 signext 77, i8 signext 77, i8 signext 68)
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %23, i32* %2, align 4
  br label %198

24:                                               ; preds = %1
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @avio_skip(i32* %25, i32 4)
  br label %27

27:                                               ; preds = %42, %24
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @avio_rl32(i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @avio_rb32(i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @MKTAG(i8 signext 67, i8 signext 78, i8 signext 84, i8 signext 73)
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %42

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @MKTAG(i8 signext 79, i8 signext 80, i8 signext 68, i8 signext 65)
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %36
  br label %46

42:                                               ; preds = %40, %35
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @avio_skip(i32* %43, i32 %44)
  br label %27

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 16777215
  %49 = call i32 @MKTAG(i8 signext 77, i8 signext 84, i8 signext 82, i8 signext 0)
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %52, i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %55, i32* %2, align 4
  br label %198

56:                                               ; preds = %46
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 16777215
  %59 = call i32 @MKTAG(i8 signext 65, i8 signext 84, i8 signext 82, i8 signext 0)
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %62, i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %66, i32* %2, align 4
  br label %198

67:                                               ; preds = %56
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @avio_r8(i32* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @avio_r8(i32* %70)
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @avio_r8(i32* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 15
  %76 = call i32 @mmf_rate(i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = load i32, i32* @AV_LOG_ERROR, align 4
  %82 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %80, i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %83, i32* %2, align 4
  br label %198

84:                                               ; preds = %67
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @avio_r8(i32* %85)
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @avio_r8(i32* %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @avio_r8(i32* %89)
  br label %91

91:                                               ; preds = %106, %84
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @avio_rl32(i32* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @avio_rb32(i32* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @MKTAG(i8 signext 65, i8 signext 116, i8 signext 115, i8 signext 113)
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %106

100:                                              ; preds = %91
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @MKTAG(i8 signext 65, i8 signext 115, i8 signext 112, i8 signext 73)
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %106

105:                                              ; preds = %100
  br label %110

106:                                              ; preds = %104, %99
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @avio_skip(i32* %107, i32 %108)
  br label %91

110:                                              ; preds = %105
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %111, 16777215
  %113 = call i32 @MKTAG(i8 signext 65, i8 signext 119, i8 signext 97, i8 signext 0)
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %117 = load i32, i32* @AV_LOG_ERROR, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %116, i32 %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %120, i32* %2, align 4
  br label %198

121:                                              ; preds = %110
  %122 = load i32*, i32** %6, align 8
  %123 = call i64 @avio_tell(i32* %122)
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %130 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %129, i32* null)
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %7, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %132 = icmp ne %struct.TYPE_12__* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %121
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = call i32 @AVERROR(i32 %134)
  store i32 %135, i32* %2, align 4
  br label %198

136:                                              ; preds = %121
  %137 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 6
  store i32 %137, i32* %141, align 4
  %142 = load i32, i32* @AV_CODEC_ID_ADPCM_YAMAHA, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 5
  store i32 %142, i32* %146, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  store i32 %147, i32* %151, align 4
  %152 = load i32, i32* %10, align 4
  %153 = ashr i32 %152, 7
  %154 = add nsw i32 %153, 1
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  store i32 %154, i32* %158, align 4
  %159 = load i32, i32* %10, align 4
  %160 = ashr i32 %159, 7
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %136
  %163 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  br label %166

164:                                              ; preds = %136
  %165 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 4
  store i32 %167, i32* %171, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 2
  store i32 4, i32* %175, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %180, %185
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 3
  store i32 %186, i32* %190, align 4
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %191, i32 64, i32 1, i32 %196)
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %166, %133, %115, %79, %61, %51, %22
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @mmf_rate(i32) #1

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
