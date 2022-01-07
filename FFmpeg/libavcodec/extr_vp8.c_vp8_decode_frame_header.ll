; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp8.c_vp8_decode_frame_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp8.c_vp8_decode_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_31__, %struct.TYPE_27__, %struct.TYPE_29__*, i8*, i8*, i8**, %struct.TYPE_26__*, i32, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_25__, i8*, i8*, i32, i32, %struct.TYPE_28__, i32 }
%struct.TYPE_31__ = type { i32, i32, i32, i64 }
%struct.TYPE_27__ = type { i32, i32, i32, i64 }
%struct.TYPE_29__ = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_24__ = type { i8*, i8*, i8* }
%struct.TYPE_25__ = type { i8*, i8*, i64 }
%struct.TYPE_28__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Insufficent data (%d) for header\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unknown profile %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Header size larger than data provided\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Invalid start code 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Upscaling\00", align 1
@VP56_FRAME_CURRENT = common dso_local global i32 0, align 4
@vp8_pred16x16_prob_inter = common dso_local global i32 0, align 4
@vp8_pred8x8c_prob_inter = common dso_local global i32 0, align 4
@vp8_mv_default_prob = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Unspecified colorspace\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Invalid partitions\0A\00", align 1
@VP56_FRAME_GOLDEN = common dso_local global i64 0, align 8
@VP56_FRAME_GOLDEN2 = common dso_local global i64 0, align 8
@VP8_MVC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, i32*, i32)* @vp8_decode_frame_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp8_decode_frame_header(%struct.TYPE_30__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 7
  store %struct.TYPE_31__* %16, %struct.TYPE_31__** %8, align 8
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 13
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 13
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 13
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %31, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %32, i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %4, align 4
  br label %502

37:                                               ; preds = %3
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 1
  %51 = and i32 %50, 7
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 16
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @AV_RL24(i32* %63)
  %65 = ashr i32 %64, 5
  store i32 %65, i32* %9, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  store i32* %67, i32** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 3
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 3
  br i1 %76, label %77, label %86

77:                                               ; preds = %37
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 13
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %79, align 8
  %81 = load i32, i32* @AV_LOG_WARNING, align 4
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %80, i32 %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %77, %37
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 23
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 22
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memcpy(i32 %94, i32 %98, i32 4)
  br label %109

100:                                              ; preds = %86
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 23
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 22
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @memcpy(i32 %103, i32 %107, i32 4)
  br label %109

109:                                              ; preds = %100, %91
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 7, %114
  %116 = sub nsw i32 %111, %115
  %117 = icmp sgt i32 %110, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %109
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 13
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %120, align 8
  %122 = load i32, i32* @AV_LOG_ERROR, align 4
  %123 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %121, i32 %122, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %124, i32* %4, align 4
  br label %502

125:                                              ; preds = %109
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %209

130:                                              ; preds = %125
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @AV_RL24(i32* %131)
  %133 = icmp ne i32 %132, 2752925
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 13
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %136, align 8
  %138 = load i32, i32* @AV_LOG_ERROR, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @AV_RL24(i32* %139)
  %141 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %137, i32 %138, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %142, i32* %4, align 4
  br label %502

143:                                              ; preds = %130
  %144 = load i32*, i32** %6, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 3
  %146 = call i32 @AV_RL16(i32* %145)
  %147 = and i32 %146, 16383
  store i32 %147, i32* %13, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 5
  %150 = call i32 @AV_RL16(i32* %149)
  %151 = and i32 %150, 16383
  store i32 %151, i32* %14, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 4
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %154, 6
  store i32 %155, i32* %10, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 6
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %158, 6
  store i32 %159, i32* %11, align 4
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 7
  store i32* %161, i32** %6, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sub nsw i32 %162, 7
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %143
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %166, %143
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 13
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %171, align 8
  %173 = call i32 @avpriv_request_sample(%struct.TYPE_26__* %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %174

174:                                              ; preds = %169, %166
  %175 = load i32, i32* @VP56_FRAME_CURRENT, align 4
  %176 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 20
  store i32 %175, i32* %177, align 8
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %178, i32 0, i32 21
  store i32 %175, i32* %179, align 4
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %181 = call i32 @vp78_reset_probability_tables(%struct.TYPE_30__* %180)
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %182, i32 0, i32 9
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @vp8_pred16x16_prob_inter, align 4
  %188 = call i32 @memcpy(i32 %186, i32 %187, i32 4)
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 9
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @vp8_pred8x8c_prob_inter, align 4
  %195 = call i32 @memcpy(i32 %193, i32 %194, i32 4)
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 9
  %198 = load %struct.TYPE_29__*, %struct.TYPE_29__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @vp8_mv_default_prob, align 4
  %202 = call i32 @memcpy(i32 %200, i32 %201, i32 4)
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 17
  %205 = call i32 @memset(%struct.TYPE_25__* %204, i32 0, i32 24)
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 15
  %208 = call i32 @memset(%struct.TYPE_25__* %207, i32 0, i32 24)
  br label %209

209:                                              ; preds = %174, %125
  %210 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %211 = load i32*, i32** %6, align 8
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @ff_vp56_init_range_decoder(%struct.TYPE_31__* %210, i32* %211, i32 %212)
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  %217 = load i32, i32* %12, align 4
  store i32 %217, i32* %4, align 4
  br label %502

218:                                              ; preds = %209
  %219 = load i32, i32* %9, align 4
  %220 = load i32*, i32** %6, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32* %222, i32** %6, align 8
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %7, align 4
  %225 = sub nsw i32 %224, %223
  store i32 %225, i32* %7, align 4
  %226 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %250

230:                                              ; preds = %218
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %232 = call i8* @vp8_rac_get(%struct.TYPE_31__* %231)
  %233 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %233, i32 0, i32 19
  store i8* %232, i8** %234, align 8
  %235 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %235, i32 0, i32 19
  %237 = load i8*, i8** %236, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %245

239:                                              ; preds = %230
  %240 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i32 0, i32 13
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %241, align 8
  %243 = load i32, i32* @AV_LOG_WARNING, align 4
  %244 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %242, i32 %243, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %245

245:                                              ; preds = %239, %230
  %246 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %247 = call i8* @vp8_rac_get(%struct.TYPE_31__* %246)
  %248 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %248, i32 0, i32 18
  store i8* %247, i8** %249, align 8
  br label %250

250:                                              ; preds = %245, %218
  %251 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %252 = call i8* @vp8_rac_get(%struct.TYPE_31__* %251)
  %253 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %253, i32 0, i32 17
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 1
  store i8* %252, i8** %255, align 8
  %256 = icmp ne i8* %252, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %250
  %258 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %259 = call i32 @parse_segment_info(%struct.TYPE_30__* %258)
  br label %264

260:                                              ; preds = %250
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 17
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 2
  store i64 0, i64* %263, align 8
  br label %264

264:                                              ; preds = %260, %257
  %265 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %266 = call i8* @vp8_rac_get(%struct.TYPE_31__* %265)
  %267 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %267, i32 0, i32 16
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 2
  store i8* %266, i8** %269, align 8
  %270 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %271 = call i8* @vp8_rac_get_uint(%struct.TYPE_31__* %270, i32 6)
  %272 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 16
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 1
  store i8* %271, i8** %274, align 8
  %275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %276 = call i8* @vp8_rac_get_uint(%struct.TYPE_31__* %275, i32 3)
  %277 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %277, i32 0, i32 16
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 0
  store i8* %276, i8** %279, align 8
  %280 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %281 = call i8* @vp8_rac_get(%struct.TYPE_31__* %280)
  %282 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %282, i32 0, i32 15
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 1
  store i8* %281, i8** %284, align 8
  %285 = icmp ne i8* %281, null
  br i1 %285, label %286, label %301

286:                                              ; preds = %264
  %287 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %288 = call i8* @vp8_rac_get(%struct.TYPE_31__* %287)
  %289 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %289, i32 0, i32 15
  %291 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %290, i32 0, i32 0
  store i8* %288, i8** %291, align 8
  %292 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %292, i32 0, i32 15
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %300

297:                                              ; preds = %286
  %298 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %299 = call i32 @update_lf_deltas(%struct.TYPE_30__* %298)
  br label %300

300:                                              ; preds = %297, %286
  br label %301

301:                                              ; preds = %300, %264
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %303 = load i32*, i32** %6, align 8
  %304 = load i32, i32* %7, align 4
  %305 = call i64 @setup_partitions(%struct.TYPE_30__* %302, i32* %303, i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %314

307:                                              ; preds = %301
  %308 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %308, i32 0, i32 13
  %310 = load %struct.TYPE_26__*, %struct.TYPE_26__** %309, align 8
  %311 = load i32, i32* @AV_LOG_ERROR, align 4
  %312 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %310, i32 %311, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %313 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %313, i32* %4, align 4
  br label %502

314:                                              ; preds = %301
  %315 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %315, i32 0, i32 14
  %317 = load i32, i32* %316, align 8
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %351

319:                                              ; preds = %314
  %320 = load i32, i32* %13, align 4
  %321 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %321, i32 0, i32 13
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %320, %325
  br i1 %326, label %351, label %327

327:                                              ; preds = %319
  %328 = load i32, i32* %14, align 4
  %329 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %329, i32 0, i32 13
  %331 = load %struct.TYPE_26__*, %struct.TYPE_26__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = icmp ne i32 %328, %333
  br i1 %334, label %351, label %335

335:                                              ; preds = %327
  %336 = load i32, i32* %13, align 4
  %337 = add nsw i32 %336, 15
  %338 = sdiv i32 %337, 16
  %339 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = icmp ne i32 %338, %341
  br i1 %342, label %351, label %343

343:                                              ; preds = %335
  %344 = load i32, i32* %14, align 4
  %345 = add nsw i32 %344, 15
  %346 = sdiv i32 %345, 16
  %347 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %347, i32 0, i32 5
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %346, %349
  br i1 %350, label %351, label %360

351:                                              ; preds = %343, %335, %327, %319, %314
  %352 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %353 = load i32, i32* %13, align 4
  %354 = load i32, i32* %14, align 4
  %355 = call i32 @vp8_update_dimensions(%struct.TYPE_30__* %352, i32 %353, i32 %354)
  store i32 %355, i32* %12, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %351
  %358 = load i32, i32* %12, align 4
  store i32 %358, i32* %4, align 4
  br label %502

359:                                              ; preds = %351
  br label %360

360:                                              ; preds = %359, %343
  %361 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %362 = call i32 @vp8_get_quants(%struct.TYPE_30__* %361)
  %363 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %384, label %367

367:                                              ; preds = %360
  %368 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %369 = call i32 @update_refs(%struct.TYPE_30__* %368)
  %370 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %371 = call i8* @vp8_rac_get(%struct.TYPE_31__* %370)
  %372 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %372, i32 0, i32 12
  %374 = load i8**, i8*** %373, align 8
  %375 = load i64, i64* @VP56_FRAME_GOLDEN, align 8
  %376 = getelementptr inbounds i8*, i8** %374, i64 %375
  store i8* %371, i8** %376, align 8
  %377 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %378 = call i8* @vp8_rac_get(%struct.TYPE_31__* %377)
  %379 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %379, i32 0, i32 12
  %381 = load i8**, i8*** %380, align 8
  %382 = load i64, i64* @VP56_FRAME_GOLDEN2, align 8
  %383 = getelementptr inbounds i8*, i8** %381, i64 %382
  store i8* %378, i8** %383, align 8
  br label %384

384:                                              ; preds = %367, %360
  %385 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %386 = call i8* @vp8_rac_get(%struct.TYPE_31__* %385)
  %387 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %387, i32 0, i32 11
  store i8* %386, i8** %388, align 8
  %389 = icmp ne i8* %386, null
  br i1 %389, label %401, label %390

390:                                              ; preds = %384
  %391 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %391, i32 0, i32 9
  %393 = load %struct.TYPE_29__*, %struct.TYPE_29__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %393, i64 1
  %395 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %395, i32 0, i32 9
  %397 = load %struct.TYPE_29__*, %struct.TYPE_29__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %397, i64 0
  %399 = bitcast %struct.TYPE_29__* %394 to i8*
  %400 = bitcast %struct.TYPE_29__* %398 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %399, i8* align 8 %400, i64 48, i1 false)
  br label %401

401:                                              ; preds = %390, %384
  %402 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %410, label %406

406:                                              ; preds = %401
  %407 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %408 = call i8* @vp8_rac_get(%struct.TYPE_31__* %407)
  %409 = icmp ne i8* %408, null
  br label %410

410:                                              ; preds = %406, %401
  %411 = phi i1 [ true, %401 ], [ %409, %406 ]
  %412 = zext i1 %411 to i32
  %413 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %413, i32 0, i32 6
  store i32 %412, i32* %414, align 8
  %415 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %416 = call i32 @vp78_update_probability_tables(%struct.TYPE_30__* %415)
  %417 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %418 = call i8* @vp8_rac_get(%struct.TYPE_31__* %417)
  %419 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %419, i32 0, i32 10
  store i8* %418, i8** %420, align 8
  %421 = icmp ne i8* %418, null
  br i1 %421, label %422, label %429

422:                                              ; preds = %410
  %423 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %424 = call i8* @vp8_rac_get_uint(%struct.TYPE_31__* %423, i32 8)
  %425 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %425, i32 0, i32 9
  %427 = load %struct.TYPE_29__*, %struct.TYPE_29__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %427, i32 0, i32 3
  store i8* %424, i8** %428, align 8
  br label %429

429:                                              ; preds = %422, %410
  %430 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %456, label %434

434:                                              ; preds = %429
  %435 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %436 = call i8* @vp8_rac_get_uint(%struct.TYPE_31__* %435, i32 8)
  %437 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %437, i32 0, i32 9
  %439 = load %struct.TYPE_29__*, %struct.TYPE_29__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %439, i32 0, i32 2
  store i8* %436, i8** %440, align 8
  %441 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %442 = call i8* @vp8_rac_get_uint(%struct.TYPE_31__* %441, i32 8)
  %443 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %443, i32 0, i32 9
  %445 = load %struct.TYPE_29__*, %struct.TYPE_29__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %445, i32 0, i32 1
  store i8* %442, i8** %446, align 8
  %447 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %448 = call i8* @vp8_rac_get_uint(%struct.TYPE_31__* %447, i32 8)
  %449 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %449, i32 0, i32 9
  %451 = load %struct.TYPE_29__*, %struct.TYPE_29__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %451, i32 0, i32 0
  store i8* %448, i8** %452, align 8
  %453 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %454 = load i32, i32* @VP8_MVC_SIZE, align 4
  %455 = call i32 @vp78_update_pred16x16_pred8x8_mvc_probabilities(%struct.TYPE_30__* %453, i32 %454)
  br label %456

456:                                              ; preds = %434, %429
  %457 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %458 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %457, i32 0, i32 7
  %459 = call i32 @vp56_rac_renorm(%struct.TYPE_31__* %458)
  %460 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %460, i32 0, i32 7
  %462 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %461, i32 0, i32 0
  store i32 %459, i32* %462, align 8
  %463 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %463, i32 0, i32 7
  %465 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %464, i32 0, i32 3
  %466 = load i64, i64* %465, align 8
  %467 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %468 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %467, i32 0, i32 7
  %469 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = sub nsw i32 0, %470
  %472 = sdiv i32 %471, 8
  %473 = sext i32 %472 to i64
  %474 = sub nsw i64 %466, %473
  %475 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %475, i32 0, i32 8
  %477 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %476, i32 0, i32 3
  store i64 %474, i64* %477, align 8
  %478 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %479 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %478, i32 0, i32 7
  %480 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 8
  %482 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %482, i32 0, i32 8
  %484 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %483, i32 0, i32 2
  store i32 %481, i32* %484, align 8
  %485 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %486 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %485, i32 0, i32 7
  %487 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = ashr i32 %488, 16
  %490 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %490, i32 0, i32 8
  %492 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %491, i32 0, i32 0
  store i32 %489, i32* %492, align 8
  %493 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %494 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %493, i32 0, i32 7
  %495 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  %497 = sub nsw i32 0, %496
  %498 = srem i32 %497, 8
  %499 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %500 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %499, i32 0, i32 8
  %501 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %500, i32 0, i32 1
  store i32 %498, i32* %501, align 4
  store i32 0, i32* %4, align 4
  br label %502

502:                                              ; preds = %456, %357, %307, %216, %134, %118, %29
  %503 = load i32, i32* %4, align 4
  ret i32 %503
}

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*, ...) #1

declare dso_local i32 @AV_RL24(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @vp78_reset_probability_tables(%struct.TYPE_30__*) #1

declare dso_local i32 @memset(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @ff_vp56_init_range_decoder(%struct.TYPE_31__*, i32*, i32) #1

declare dso_local i8* @vp8_rac_get(%struct.TYPE_31__*) #1

declare dso_local i32 @parse_segment_info(%struct.TYPE_30__*) #1

declare dso_local i8* @vp8_rac_get_uint(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @update_lf_deltas(%struct.TYPE_30__*) #1

declare dso_local i64 @setup_partitions(%struct.TYPE_30__*, i32*, i32) #1

declare dso_local i32 @vp8_update_dimensions(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @vp8_get_quants(%struct.TYPE_30__*) #1

declare dso_local i32 @update_refs(%struct.TYPE_30__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vp78_update_probability_tables(%struct.TYPE_30__*) #1

declare dso_local i32 @vp78_update_pred16x16_pred8x8_mvc_probabilities(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @vp56_rac_renorm(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
