; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_slice.c_h264_select_output_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_slice.c_h264_select_output_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64*, i64, i32, %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_11__**, %struct.TYPE_11__*, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i64, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }

@FF_COMPLIANCE_STRICT = common dso_local global i64 0, align 8
@MAX_DELAYED_PIC_COUNT = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid POC %d<%d\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Increasing reorder buffer to %d\0A\00", align 1
@DELAYED_PIC_REF = common dso_local global i64 0, align 8
@FRAME_RECOVERED_SEI = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_OUTPUT_CORRUPT = common dso_local global i32 0, align 4
@AV_CODEC_FLAG2_SHOW_ALL = common dso_local global i32 0, align 4
@AV_FRAME_FLAG_CORRUPT = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"no picture %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ooo\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @h264_select_output_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_select_output_frame(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %3, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 7
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %4, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 7
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %5, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FF_COMPLIANCE_STRICT, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %32, %1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @FFMAX(i32 %45, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 8
  br label %55

55:                                               ; preds = %40, %32
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %108, %55
  br i1 true, label %57, label %111

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @MAX_DELAYED_PIC_COUNT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %57
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %64, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %61, %57
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  store i64 %79, i64* %86, align 8
  br label %87

87:                                               ; preds = %76, %73
  br label %111

88:                                               ; preds = %61
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  store i64 %98, i64* %105, align 8
  br label %106

106:                                              ; preds = %91, %88
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %56

111:                                              ; preds = %87, %56
  %112 = load i32, i32* @MAX_DELAYED_PIC_COUNT, align 4
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %112, %113
  store i32 %114, i32* %8, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %154, label %122

122:                                              ; preds = %111
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* @MAX_DELAYED_PIC_COUNT, align 4
  %127 = sub nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %125, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @INT_MIN, align 8
  %132 = icmp sgt i64 %130, %131
  br i1 %132, label %133, label %158

133:                                              ; preds = %122
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* @MAX_DELAYED_PIC_COUNT, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %136, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* @MAX_DELAYED_PIC_COUNT, align 4
  %146 = sub nsw i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %144, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = sext i32 %150 to i64
  %152 = sub nsw i64 %141, %151
  %153 = icmp sgt i64 %152, 2
  br i1 %153, label %154, label %158

154:                                              ; preds = %133, %111
  %155 = load i32, i32* %8, align 4
  %156 = call i8* @FFMAX(i32 %155, i32 1)
  %157 = ptrtoint i8* %156 to i32
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %154, %133, %122
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @MAX_DELAYED_PIC_COUNT, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %201

162:                                              ; preds = %158
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %165, i32 %166, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %169, i64 %174)
  store i32 1, i32* %6, align 4
  br label %176

176:                                              ; preds = %188, %162
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @MAX_DELAYED_PIC_COUNT, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %176
  %181 = load i64, i64* @INT_MIN, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  store i64 %181, i64* %187, align 8
  br label %188

188:                                              ; preds = %180
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %6, align 4
  br label %176

191:                                              ; preds = %176
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 0
  store i64 %194, i64* %198, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  store i32 1, i32* %200, align 8
  br label %239

201:                                              ; preds = %158
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 4
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %8, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %238

209:                                              ; preds = %201
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %238, label %214

214:                                              ; preds = %209
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 4
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = icmp sgt i32 %219, 1
  br i1 %220, label %221, label %223

221:                                              ; preds = %214
  %222 = load i32, i32* @AV_LOG_WARNING, align 4
  br label %225

223:                                              ; preds = %214
  %224 = load i32, i32* @AV_LOG_VERBOSE, align 4
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi i32 [ %222, %221 ], [ %224, %223 ]
  store i32 %226, i32* %10, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 4
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* %8, align 4
  %232 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %229, i32 %230, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* %8, align 4
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 4
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 1
  store i32 %233, i32* %237, align 8
  br label %238

238:                                              ; preds = %225, %209, %201
  br label %239

239:                                              ; preds = %238, %191
  store i32 0, i32* %7, align 4
  br label %240

240:                                              ; preds = %249, %239
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 6
  %243 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %242, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %243, i64 %245
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  %248 = icmp ne %struct.TYPE_11__* %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %240
  %250 = load i32, i32* %7, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %7, align 4
  br label %240

252:                                              ; preds = %240
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* @MAX_DELAYED_PIC_COUNT, align 4
  %255 = icmp sle i32 %253, %254
  %256 = zext i1 %255 to i32
  %257 = call i32 @av_assert0(i32 %256)
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 6
  %261 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %260, align 8
  %262 = load i32, i32* %7, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %7, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %261, i64 %264
  store %struct.TYPE_11__* %258, %struct.TYPE_11__** %265, align 8
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %252
  %271 = load i64, i64* @DELAYED_PIC_REF, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 2
  store i64 %271, i64* %273, align 8
  br label %274

274:                                              ; preds = %270, %252
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 6
  %277 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %277, i64 0
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %278, align 8
  store %struct.TYPE_11__* %279, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %6, align 4
  br label %280

280:                                              ; preds = %340, %274
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 6
  %283 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %282, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %283, i64 %285
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %286, align 8
  %288 = icmp ne %struct.TYPE_11__* %287, null
  br i1 %288, label %289, label %314

289:                                              ; preds = %280
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 6
  %292 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %291, align 8
  %293 = load i32, i32* %6, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %292, i64 %294
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 4
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %314, label %302

302:                                              ; preds = %289
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 6
  %305 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %304, align 8
  %306 = load i32, i32* %6, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %305, i64 %307
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp ne i32 %311, 0
  %313 = xor i1 %312, true
  br label %314

314:                                              ; preds = %302, %289, %280
  %315 = phi i1 [ false, %289 ], [ false, %280 ], [ %313, %302 ]
  br i1 %315, label %316, label %343

316:                                              ; preds = %314
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 6
  %319 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %318, align 8
  %320 = load i32, i32* %6, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %319, i64 %321
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = icmp slt i64 %325, %328
  br i1 %329, label %330, label %339

330:                                              ; preds = %316
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 6
  %333 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %332, align 8
  %334 = load i32, i32* %6, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %333, i64 %335
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %336, align 8
  store %struct.TYPE_11__* %337, %struct.TYPE_11__** %4, align 8
  %338 = load i32, i32* %6, align 4
  store i32 %338, i32* %9, align 4
  br label %339

339:                                              ; preds = %330, %316
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %6, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %6, align 4
  br label %280

343:                                              ; preds = %314
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 4
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %374

350:                                              ; preds = %343
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 6
  %353 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %353, i64 0
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 4
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %370, label %361

361:                                              ; preds = %350
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 6
  %364 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %364, i64 0
  %366 = load %struct.TYPE_11__*, %struct.TYPE_11__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %361, %350
  %371 = load i64, i64* @INT_MIN, align 8
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 2
  store i64 %371, i64* %373, align 8
  br label %374

374:                                              ; preds = %370, %361, %343
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = icmp slt i64 %377, %380
  %382 = zext i1 %381 to i32
  store i32 %382, i32* %8, align 4
  %383 = load i32, i32* %8, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %393, label %385

385:                                              ; preds = %374
  %386 = load i32, i32* %7, align 4
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 4
  %389 = load %struct.TYPE_13__*, %struct.TYPE_13__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = icmp sgt i32 %386, %391
  br i1 %392, label %393, label %429

393:                                              ; preds = %385, %374
  %394 = load i64, i64* @DELAYED_PIC_REF, align 8
  %395 = xor i64 %394, -1
  %396 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %396, i32 0, i32 2
  %398 = load i64, i64* %397, align 8
  %399 = and i64 %398, %395
  store i64 %399, i64* %397, align 8
  %400 = load i32, i32* %9, align 4
  store i32 %400, i32* %6, align 4
  br label %401

401:                                              ; preds = %425, %393
  %402 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 6
  %404 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %403, align 8
  %405 = load i32, i32* %6, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %404, i64 %406
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %407, align 8
  %409 = icmp ne %struct.TYPE_11__* %408, null
  br i1 %409, label %410, label %428

410:                                              ; preds = %401
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 6
  %413 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %412, align 8
  %414 = load i32, i32* %6, align 4
  %415 = add nsw i32 %414, 1
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %413, i64 %416
  %418 = load %struct.TYPE_11__*, %struct.TYPE_11__** %417, align 8
  %419 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %420 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %419, i32 0, i32 6
  %421 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %420, align 8
  %422 = load i32, i32* %6, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %421, i64 %423
  store %struct.TYPE_11__* %418, %struct.TYPE_11__** %424, align 8
  br label %425

425:                                              ; preds = %410
  %426 = load i32, i32* %6, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %6, align 4
  br label %401

428:                                              ; preds = %401
  br label %429

429:                                              ; preds = %428, %385
  %430 = load i32, i32* %8, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %543, label %432

432:                                              ; preds = %429
  %433 = load i32, i32* %7, align 4
  %434 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 4
  %436 = load %struct.TYPE_13__*, %struct.TYPE_13__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 8
  %439 = icmp sgt i32 %433, %438
  br i1 %439, label %440, label %543

440:                                              ; preds = %432
  %441 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i32 0, i32 5
  store %struct.TYPE_11__* %441, %struct.TYPE_11__** %443, align 8
  %444 = load i32, i32* %9, align 4
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %477

446:                                              ; preds = %440
  %447 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i32 0, i32 6
  %449 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %449, i64 0
  %451 = load %struct.TYPE_11__*, %struct.TYPE_11__** %450, align 8
  %452 = icmp ne %struct.TYPE_11__* %451, null
  br i1 %452, label %453, label %477

453:                                              ; preds = %446
  %454 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %455 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i32 0, i32 6
  %456 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %456, i64 0
  %458 = load %struct.TYPE_11__*, %struct.TYPE_11__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %458, i32 0, i32 4
  %460 = load %struct.TYPE_9__*, %struct.TYPE_9__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %460, i32 0, i32 2
  %462 = load i64, i64* %461, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %473, label %464

464:                                              ; preds = %453
  %465 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %466 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %465, i32 0, i32 6
  %467 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %467, i64 0
  %469 = load %struct.TYPE_11__*, %struct.TYPE_11__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %477

473:                                              ; preds = %464, %453
  %474 = load i64, i64* @INT_MIN, align 8
  %475 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %476 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %475, i32 0, i32 2
  store i64 %474, i64* %476, align 8
  br label %483

477:                                              ; preds = %464, %446, %440
  %478 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %478, i32 0, i32 1
  %480 = load i64, i64* %479, align 8
  %481 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %482 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %481, i32 0, i32 2
  store i64 %480, i64* %482, align 8
  br label %483

483:                                              ; preds = %477, %473
  %484 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %484, i32 0, i32 3
  %486 = load i32, i32* %485, align 8
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %494

488:                                              ; preds = %483
  %489 = load i32, i32* @FRAME_RECOVERED_SEI, align 4
  %490 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %491 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %490, i32 0, i32 3
  %492 = load i32, i32* %491, align 8
  %493 = or i32 %492, %489
  store i32 %493, i32* %491, align 8
  br label %494

494:                                              ; preds = %488, %483
  %495 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %496 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %495, i32 0, i32 3
  %497 = load i32, i32* %496, align 8
  %498 = load i32, i32* @FRAME_RECOVERED_SEI, align 4
  %499 = and i32 %497, %498
  %500 = icmp ne i32 %499, 0
  %501 = xor i1 %500, true
  %502 = xor i1 %501, true
  %503 = zext i1 %502 to i32
  %504 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %505 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %504, i32 0, i32 3
  %506 = load i32, i32* %505, align 8
  %507 = or i32 %506, %503
  store i32 %507, i32* %505, align 8
  %508 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %509 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %508, i32 0, i32 3
  %510 = load i32, i32* %509, align 8
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %542, label %512

512:                                              ; preds = %494
  %513 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i32 0, i32 4
  %515 = load %struct.TYPE_13__*, %struct.TYPE_13__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %515, i32 0, i32 3
  %517 = load i32, i32* %516, align 8
  %518 = load i32, i32* @AV_CODEC_FLAG_OUTPUT_CORRUPT, align 4
  %519 = and i32 %517, %518
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %533, label %521

521:                                              ; preds = %512
  %522 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %523 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %522, i32 0, i32 4
  %524 = load %struct.TYPE_13__*, %struct.TYPE_13__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %524, i32 0, i32 4
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* @AV_CODEC_FLAG2_SHOW_ALL, align 4
  %528 = and i32 %526, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %533, label %530

530:                                              ; preds = %521
  %531 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %531, i32 0, i32 5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %532, align 8
  br label %541

533:                                              ; preds = %521, %512
  %534 = load i32, i32* @AV_FRAME_FLAG_CORRUPT, align 4
  %535 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %536 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %535, i32 0, i32 4
  %537 = load %struct.TYPE_9__*, %struct.TYPE_9__** %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 8
  %540 = or i32 %539, %534
  store i32 %540, i32* %538, align 8
  br label %541

541:                                              ; preds = %533, %530
  br label %542

542:                                              ; preds = %541, %494
  br label %553

543:                                              ; preds = %432, %429
  %544 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %545 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %544, i32 0, i32 4
  %546 = load %struct.TYPE_13__*, %struct.TYPE_13__** %545, align 8
  %547 = load i32, i32* @AV_LOG_DEBUG, align 4
  %548 = load i32, i32* %8, align 4
  %549 = icmp ne i32 %548, 0
  %550 = zext i1 %549 to i64
  %551 = select i1 %549, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %552 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %546, i32 %547, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %551)
  br label %553

553:                                              ; preds = %543, %542
  ret i32 0
}

declare dso_local i8* @FFMAX(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
