; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_dirac_decode_picture_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_dirac_decode_picture_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__**, i32, %struct.TYPE_14__*, %struct.TYPE_18__**, %struct.TYPE_18__*, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_16__ = type { i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PICTURE_NUM: %d\0A\00", align 1
@INT64_MAX = common dso_local global i64 0, align 8
@MAX_REFERENCE_FRAMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Reference not found\0A\00", align 1
@MAX_FRAMES = common dso_local global i32 0, align 4
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Reference could not be allocated\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@DELAYED_PIC_REF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Frame to retire not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Reference frame overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @dirac_decode_picture_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirac_decode_picture_header(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 7
  store i32* %14, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = call i32 @get_bits_long(i32* %15, i32 32)
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store i32 %16, i32* %22, align 4
  store i32 %16, i32* %5, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AV_LOG_DEBUG, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i32, i32, i8*, ...) @av_log(i32 %25, i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %1
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %40, i64 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %41, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %44, i64 0
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %45, align 8
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %226, %37
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %229

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @dirac_get_se_golomb(i32* %54)
  %56 = add i32 %53, %55
  %57 = zext i32 %56 to i64
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* @INT64_MAX, align 8
  store i64 %58, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %123, %52
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @MAX_REFERENCE_FRAMES, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i1 [ false, %59 ], [ %65, %63 ]
  br i1 %67, label %68, label %126

68:                                               ; preds = %66
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %71, i64 %73
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = icmp ne %struct.TYPE_18__* %75, null
  br i1 %76, label %77, label %122

77:                                               ; preds = %68
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %80, i64 %82
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = sub nsw i64 %88, %89
  %91 = call i64 @FFABS(i64 %90)
  %92 = load i64, i64* %9, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %77
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %97, i64 %99
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %104, i64 %106
  store %struct.TYPE_18__* %101, %struct.TYPE_18__** %107, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %110, i64 %112
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = sub nsw i64 %118, %119
  %121 = call i64 @FFABS(i64 %120)
  store i64 %121, i64* %9, align 8
  br label %122

122:                                              ; preds = %94, %77, %68
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %59

126:                                              ; preds = %66
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %129, i64 %131
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = icmp ne %struct.TYPE_18__* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load i64, i64* %9, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135, %126
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @AV_LOG_DEBUG, align 4
  %143 = call i32 (i32, i32, i8*, ...) @av_log(i32 %141, i32 %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %138, %135
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %147, i64 %149
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = icmp ne %struct.TYPE_18__* %151, null
  br i1 %152, label %209, label %153

153:                                              ; preds = %144
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %205, %153
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @MAX_FRAMES, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %208

158:                                              ; preds = %154
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 6
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %204, label %172

172:                                              ; preds = %158
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 6
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i64 %177
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 5
  %181 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %181, i64 %183
  store %struct.TYPE_18__* %178, %struct.TYPE_18__** %184, align 8
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 5
  %190 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %190, i64 %192
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %195, align 8
  %197 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %198 = call i32 @get_buffer_with_edge(i32 %187, %struct.TYPE_19__* %196, i32 %197)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %172
  %202 = load i32, i32* %8, align 4
  store i32 %202, i32* %2, align 4
  br label %331

203:                                              ; preds = %172
  br label %208

204:                                              ; preds = %158
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %7, align 4
  br label %154

208:                                              ; preds = %203, %154
  br label %209

209:                                              ; preds = %208, %144
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 5
  %212 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %212, i64 %214
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %215, align 8
  %217 = icmp ne %struct.TYPE_18__* %216, null
  br i1 %217, label %225, label %218

218:                                              ; preds = %209
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @AV_LOG_ERROR, align 4
  %223 = call i32 (i32, i32, i8*, ...) @av_log(i32 %221, i32 %222, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %224 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %224, i32* %2, align 4
  br label %331

225:                                              ; preds = %209
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %6, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %6, align 4
  br label %46

229:                                              ; preds = %46
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 4
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %301

236:                                              ; preds = %229
  %237 = load i32, i32* %5, align 4
  %238 = load i32*, i32** %11, align 8
  %239 = call i32 @dirac_get_se_golomb(i32* %238)
  %240 = add i32 %237, %239
  store i32 %240, i32* %4, align 4
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* %5, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %265

244:                                              ; preds = %236
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %246, align 8
  %248 = load i32, i32* %4, align 4
  %249 = call %struct.TYPE_16__* @remove_frame(%struct.TYPE_18__** %247, i32 %248)
  store %struct.TYPE_16__* %249, %struct.TYPE_16__** %12, align 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %251 = icmp ne %struct.TYPE_16__* %250, null
  br i1 %251, label %252, label %258

252:                                              ; preds = %244
  %253 = load i32, i32* @DELAYED_PIC_REF, align 4
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, %253
  store i32 %257, i32* %255, align 4
  br label %264

258:                                              ; preds = %244
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @AV_LOG_DEBUG, align 4
  %263 = call i32 (i32, i32, i8*, ...) @av_log(i32 %261, i32 %262, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %264

264:                                              ; preds = %258, %252
  br label %265

265:                                              ; preds = %264, %236
  br label %266

266:                                              ; preds = %276, %265
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %268, align 8
  %270 = load i32, i32* @MAX_REFERENCE_FRAMES, align 4
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 4
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %272, align 8
  %274 = call i64 @add_frame(%struct.TYPE_18__** %269, i32 %270, %struct.TYPE_14__* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %300

276:                                              ; preds = %266
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @AV_LOG_ERROR, align 4
  %281 = call i32 (i32, i32, i8*, ...) @av_log(i32 %279, i32 %280, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %282 = load i32, i32* @DELAYED_PIC_REF, align 4
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %284, align 8
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 2
  %288 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %288, i64 0
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = trunc i64 %294 to i32
  %296 = call %struct.TYPE_16__* @remove_frame(%struct.TYPE_18__** %285, i32 %295)
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = and i32 %298, %282
  store i32 %299, i32* %297, align 4
  br label %266

300:                                              ; preds = %266
  br label %301

301:                                              ; preds = %300, %229
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %321

306:                                              ; preds = %301
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %308 = call i32 @dirac_unpack_prediction_parameters(%struct.TYPE_17__* %307)
  store i32 %308, i32* %8, align 4
  %309 = load i32, i32* %8, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %306
  %312 = load i32, i32* %8, align 4
  store i32 %312, i32* %2, align 4
  br label %331

313:                                              ; preds = %306
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %315 = call i32 @dirac_unpack_block_motion_data(%struct.TYPE_17__* %314)
  store i32 %315, i32* %8, align 4
  %316 = load i32, i32* %8, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %313
  %319 = load i32, i32* %8, align 4
  store i32 %319, i32* %2, align 4
  br label %331

320:                                              ; preds = %313
  br label %321

321:                                              ; preds = %320, %301
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %323 = call i32 @dirac_unpack_idwt_params(%struct.TYPE_17__* %322)
  store i32 %323, i32* %8, align 4
  %324 = load i32, i32* %8, align 4
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %321
  %327 = load i32, i32* %8, align 4
  store i32 %327, i32* %2, align 4
  br label %331

328:                                              ; preds = %321
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %330 = call i32 @init_planes(%struct.TYPE_17__* %329)
  store i32 0, i32* %2, align 4
  br label %331

331:                                              ; preds = %328, %326, %318, %311, %218, %201
  %332 = load i32, i32* %2, align 4
  ret i32 %332
}

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @dirac_get_se_golomb(i32*) #1

declare dso_local i64 @FFABS(i64) #1

declare dso_local i32 @get_buffer_with_edge(i32, %struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_16__* @remove_frame(%struct.TYPE_18__**, i32) #1

declare dso_local i64 @add_frame(%struct.TYPE_18__**, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @dirac_unpack_prediction_parameters(%struct.TYPE_17__*) #1

declare dso_local i32 @dirac_unpack_block_motion_data(%struct.TYPE_17__*) #1

declare dso_local i32 @dirac_unpack_idwt_params(%struct.TYPE_17__*) #1

declare dso_local i32 @init_planes(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
