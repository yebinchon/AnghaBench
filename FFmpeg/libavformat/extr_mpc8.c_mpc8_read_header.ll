; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpc8.c_mpc8_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpc8.c_mpc8_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_27__*, %struct.TYPE_25__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_24__*, i64 }
%struct.TYPE_24__ = type { i32, i32, i32*, i32, i32, i32 }

@TAG_MPCK = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Not a Musepack8 file\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid chunk length\0A\00", align 1
@TAG_STREAMHDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Stream header not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Stream version %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_MUSEPACK8 = common dso_local global i32 0, align 4
@mpc8_rate = common dso_local global i32* null, align 8
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*)* @mpc8_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8_read_header(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %11 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  store %struct.TYPE_25__* %13, %struct.TYPE_25__** %4, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %16, %struct.TYPE_27__** %5, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %18 = call i32 @avio_tell(%struct.TYPE_27__* %17)
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %22 = call i64 @avio_rl32(%struct.TYPE_27__* %21)
  %23 = load i64, i64* @TAG_MPCK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %27 = load i32, i32* @AV_LOG_ERROR, align 4
  %28 = call i32 @av_log(%struct.TYPE_28__* %26, i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %2, align 4
  br label %227

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %53, %30
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %33 = call i32 @avio_feof(%struct.TYPE_27__* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %38 = call i32 @avio_tell(%struct.TYPE_27__* %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %40 = call i32 @mpc8_get_chunk_header(%struct.TYPE_27__* %39, i32* %7, i32* %8)
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %45 = load i32, i32* @AV_LOG_ERROR, align 4
  %46 = call i32 @av_log(%struct.TYPE_28__* %44, i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %2, align 4
  br label %227

48:                                               ; preds = %36
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @TAG_STREAMHDR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %59

53:                                               ; preds = %48
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @mpc8_handle_chunk(%struct.TYPE_28__* %54, i32 %55, i32 %56, i32 %57)
  br label %31

59:                                               ; preds = %52, %31
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @TAG_STREAMHDR, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = call i32 @av_log(%struct.TYPE_28__* %64, i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %67, i32* %2, align 4
  br label %227

68:                                               ; preds = %59
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %70 = call i32 @avio_tell(%struct.TYPE_27__* %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %72 = call i32 @avio_skip(%struct.TYPE_27__* %71, i32 4)
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %74 = call i32 @avio_r8(%struct.TYPE_27__* %73)
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 8
  br i1 %80, label %81, label %88

81:                                               ; preds = %68
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @avpriv_report_missing_feature(%struct.TYPE_28__* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %87, i32* %2, align 4
  br label %227

88:                                               ; preds = %68
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %90 = call i32 @ffio_read_varlen(%struct.TYPE_27__* %89)
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %94 = call i32 @ffio_read_varlen(%struct.TYPE_27__* %93)
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %96 = call %struct.TYPE_26__* @avformat_new_stream(%struct.TYPE_28__* %95, i32* null)
  store %struct.TYPE_26__* %96, %struct.TYPE_26__** %6, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %98 = icmp ne %struct.TYPE_26__* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %88
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = call i32 @AVERROR(i32 %100)
  store i32 %101, i32* %2, align 4
  br label %227

102:                                              ; preds = %88
  %103 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 5
  store i32 %103, i32* %107, align 8
  %108 = load i32, i32* @AV_CODEC_ID_MUSEPACK8, align 4
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 4
  store i32 %108, i32* %112, align 4
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  store i32 16, i32* %116, align 8
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %119, align 8
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %122 = call i64 @ff_get_extradata(%struct.TYPE_28__* %117, %struct.TYPE_24__* %120, %struct.TYPE_27__* %121, i32 2)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %102
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = call i32 @AVERROR(i32 %125)
  store i32 %126, i32* %2, align 4
  br label %227

127:                                              ; preds = %102
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 4
  %136 = add nsw i32 %135, 1
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 1
  store i32 %136, i32* %140, align 4
  %141 = load i32*, i32** @mpc8_rate, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = ashr i32 %148, 5
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %141, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 3
  store i32 %152, i32* %156, align 8
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 3
  %166 = mul nsw i32 %165, 2
  %167 = shl i32 1152, %166
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @avpriv_set_pts_info(%struct.TYPE_26__* %157, i32 32, i32 %167, i32 %172)
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 2
  store i64 0, i64* %175, align 8
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 3
  %187 = mul nsw i32 %186, 2
  %188 = shl i32 1152, %187
  %189 = sdiv i32 %178, %188
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %193 = call i32 @avio_tell(%struct.TYPE_27__* %192)
  %194 = load i32, i32* %9, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load i32, i32* %8, align 4
  %197 = sub nsw i32 %196, %195
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %127
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @avio_skip(%struct.TYPE_27__* %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %127
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %204
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %213, align 8
  %215 = call i32 @avio_tell(%struct.TYPE_27__* %214)
  store i32 %215, i32* %10, align 4
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %217 = call i32 @ff_ape_parse_tag(%struct.TYPE_28__* %216)
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 4
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @SEEK_SET, align 4
  %225 = call i32 @avio_seek(%struct.TYPE_27__* %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %211, %204
  store i32 0, i32* %2, align 4
  br label %227

227:                                              ; preds = %226, %124, %99, %81, %63, %43, %25
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local i32 @avio_tell(%struct.TYPE_27__*) #1

declare dso_local i64 @avio_rl32(%struct.TYPE_27__*) #1

declare dso_local i32 @av_log(%struct.TYPE_28__*, i32, i8*) #1

declare dso_local i32 @avio_feof(%struct.TYPE_27__*) #1

declare dso_local i32 @mpc8_get_chunk_header(%struct.TYPE_27__*, i32*, i32*) #1

declare dso_local i32 @mpc8_handle_chunk(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i32 @avio_skip(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @avio_r8(%struct.TYPE_27__*) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_28__*, i8*, i32) #1

declare dso_local i32 @ffio_read_varlen(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_26__* @avformat_new_stream(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @ff_get_extradata(%struct.TYPE_28__*, %struct.TYPE_24__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_26__*, i32, i32, i32) #1

declare dso_local i32 @ff_ape_parse_tag(%struct.TYPE_28__*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_27__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
