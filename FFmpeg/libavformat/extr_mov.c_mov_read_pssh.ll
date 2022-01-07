; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_pssh.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_pssh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32** }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_19__*, i32*, i32**, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to read the system id\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to read the key id\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Hit EOF while reading pssh\0A\00", align 1
@AV_PKT_DATA_ENCRYPTION_INIT_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32)* @mov_read_pssh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_pssh(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %21, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %255

32:                                               ; preds = %3
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %37, i64 %44
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %11, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = call i32 @avio_r8(%struct.TYPE_18__* %47)
  store i32 %48, i32* %18, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %50 = call i32 @avio_rb24(%struct.TYPE_18__* %49)
  %51 = call %struct.TYPE_19__* @av_encryption_init_info_alloc(i32 16, i32 0, i32 16, i32 0)
  store %struct.TYPE_19__* %51, %struct.TYPE_19__** %8, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %53 = icmp ne %struct.TYPE_19__* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %32
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %4, align 4
  br label %255

57:                                               ; preds = %32
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @avio_read(%struct.TYPE_18__* %58, i32* %61, i32 16)
  %63 = icmp ne i32 %62, 16
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = load i32, i32* @AV_LOG_ERROR, align 4
  %69 = call i32 @av_log(%struct.TYPE_16__* %67, i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %70, i32* %16, align 4
  br label %251

71:                                               ; preds = %57
  %72 = load i32, i32* %18, align 4
  %73 = icmp ugt i32 %72, 0
  br i1 %73, label %74, label %179

74:                                               ; preds = %71
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = call i32 @avio_rb32(%struct.TYPE_18__* %75)
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %19, align 4
  %78 = zext i32 %77 to i64
  %79 = load i32, i32* @INT_MAX, align 4
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %80, 8
  %82 = icmp uge i64 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = call i32 @AVERROR(i32 %84)
  store i32 %85, i32* %4, align 4
  br label %255

86:                                               ; preds = %74
  store i32 0, i32* %22, align 4
  br label %87

87:                                               ; preds = %163, %86
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  %96 = xor i1 %95, true
  br label %97

97:                                               ; preds = %91, %87
  %98 = phi i1 [ false, %87 ], [ %96, %91 ]
  br i1 %98, label %99, label %166

99:                                               ; preds = %97
  %100 = load i32, i32* %22, align 4
  %101 = add i32 %100, 1
  %102 = call i32 @FFMAX(i32 %101, i32 1024)
  %103 = load i32, i32* %19, align 4
  %104 = call i32 @FFMIN(i32 %102, i32 %103)
  store i32 %104, i32* %23, align 4
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 4
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %23, align 4
  %109 = zext i32 %108 to i64
  %110 = mul i64 %109, 8
  %111 = trunc i64 %110 to i32
  %112 = call i32** @av_fast_realloc(i32** %107, i32* %21, i32 %111)
  store i32** %112, i32*** %10, align 8
  %113 = load i32**, i32*** %10, align 8
  %114 = icmp ne i32** %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %99
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = call i32 @AVERROR(i32 %116)
  store i32 %117, i32* %16, align 4
  br label %251

118:                                              ; preds = %99
  %119 = load i32**, i32*** %10, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 4
  store i32** %119, i32*** %121, align 8
  %122 = call i32* @av_mallocz(i32 16)
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 4
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %22, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  store i32* %122, i32** %128, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 4
  %131 = load i32**, i32*** %130, align 8
  %132 = load i32, i32* %22, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %118
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = call i32 @AVERROR(i32 %138)
  store i32 %139, i32* %16, align 4
  br label %251

140:                                              ; preds = %118
  %141 = load i32, i32* %22, align 4
  %142 = add i32 %141, 1
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 4
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %22, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @avio_read(%struct.TYPE_18__* %145, i32* %152, i32 16)
  %154 = icmp ne i32 %153, 16
  br i1 %154, label %155, label %162

155:                                              ; preds = %140
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = load i32, i32* @AV_LOG_ERROR, align 4
  %160 = call i32 @av_log(%struct.TYPE_16__* %158, i32 %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %161 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %161, i32* %16, align 4
  br label %251

162:                                              ; preds = %140
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %22, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %22, align 4
  br label %87

166:                                              ; preds = %97
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = load i32, i32* @AV_LOG_ERROR, align 4
  %176 = call i32 @av_log(%struct.TYPE_16__* %174, i32 %175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %177 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %177, i32* %16, align 4
  br label %251

178:                                              ; preds = %166
  br label %179

179:                                              ; preds = %178, %71
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %181 = call i32 @avio_rb32(%struct.TYPE_18__* %180)
  store i32 %181, i32* %20, align 4
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %183 = load i32, i32* %20, align 4
  %184 = call i32 @mov_try_read_block(%struct.TYPE_18__* %182, i32 %183, i32** %13)
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %16, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %251

188:                                              ; preds = %179
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 3
  %191 = call i32 @av_freep(i32** %190)
  %192 = load i32*, i32** %13, align 8
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 3
  store i32* %192, i32** %194, align 8
  %195 = load i32, i32* %20, align 4
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load i32*, i32** %11, align 8
  %199 = load i32, i32* @AV_PKT_DATA_ENCRYPTION_INIT_INFO, align 4
  %200 = call i32* @av_stream_get_side_data(i32* %198, i32 %199, i32* %17)
  store i32* %200, i32** %14, align 8
  %201 = load i32*, i32** %14, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %231

203:                                              ; preds = %188
  %204 = load i32*, i32** %14, align 8
  %205 = load i32, i32* %17, align 4
  %206 = call %struct.TYPE_19__* @av_encryption_init_info_get_side_data(i32* %204, i32 %205)
  store %struct.TYPE_19__* %206, %struct.TYPE_19__** %9, align 8
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %208 = icmp ne %struct.TYPE_19__* %207, null
  br i1 %208, label %209, label %227

209:                                              ; preds = %203
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %210, %struct.TYPE_19__** %24, align 8
  br label %211

211:                                              ; preds = %221, %209
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %213, align 8
  %215 = icmp ne %struct.TYPE_19__* %214, null
  br i1 %215, label %220, label %216

216:                                              ; preds = %211
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 2
  store %struct.TYPE_19__* %217, %struct.TYPE_19__** %219, align 8
  br label %225

220:                                              ; preds = %211
  br label %221

221:                                              ; preds = %220
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %223, align 8
  store %struct.TYPE_19__* %224, %struct.TYPE_19__** %24, align 8
  br label %211

225:                                              ; preds = %216
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %226, %struct.TYPE_19__** %8, align 8
  br label %230

227:                                              ; preds = %203
  %228 = load i32, i32* @ENOMEM, align 4
  %229 = call i32 @AVERROR(i32 %228)
  store i32 %229, i32* %16, align 4
  br label %251

230:                                              ; preds = %225
  br label %231

231:                                              ; preds = %230, %188
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %233 = call i32* @av_encryption_init_info_add_side_data(%struct.TYPE_19__* %232, i64* %15)
  store i32* %233, i32** %12, align 8
  %234 = load i32*, i32** %12, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %239, label %236

236:                                              ; preds = %231
  %237 = load i32, i32* @ENOMEM, align 4
  %238 = call i32 @AVERROR(i32 %237)
  store i32 %238, i32* %16, align 4
  br label %251

239:                                              ; preds = %231
  %240 = load i32*, i32** %11, align 8
  %241 = load i32, i32* @AV_PKT_DATA_ENCRYPTION_INIT_INFO, align 4
  %242 = load i32*, i32** %12, align 8
  %243 = load i64, i64* %15, align 8
  %244 = call i32 @av_stream_add_side_data(i32* %240, i32 %241, i32* %242, i64 %243)
  store i32 %244, i32* %16, align 4
  %245 = load i32, i32* %16, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %239
  %248 = load i32*, i32** %12, align 8
  %249 = call i32 @av_free(i32* %248)
  br label %250

250:                                              ; preds = %247, %239
  br label %251

251:                                              ; preds = %250, %236, %227, %187, %171, %155, %137, %115, %64
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %253 = call i32 @av_encryption_init_info_free(%struct.TYPE_19__* %252)
  %254 = load i32, i32* %16, align 4
  store i32 %254, i32* %4, align 4
  br label %255

255:                                              ; preds = %251, %83, %54, %31
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local i32 @avio_r8(%struct.TYPE_18__*) #1

declare dso_local i32 @avio_rb24(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_19__* @av_encryption_init_info_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_read(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @avio_rb32(%struct.TYPE_18__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32** @av_fast_realloc(i32**, i32*, i32) #1

declare dso_local i32* @av_mallocz(i32) #1

declare dso_local i32 @mov_try_read_block(%struct.TYPE_18__*, i32, i32**) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32* @av_stream_get_side_data(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @av_encryption_init_info_get_side_data(i32*, i32) #1

declare dso_local i32* @av_encryption_init_info_add_side_data(%struct.TYPE_19__*, i64*) #1

declare dso_local i32 @av_stream_add_side_data(i32*, i32, i32*, i64) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @av_encryption_init_info_free(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
