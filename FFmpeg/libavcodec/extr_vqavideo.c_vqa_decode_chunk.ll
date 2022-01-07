; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vqavideo.c_vqa_decode_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vqavideo.c_vqa_decode_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32*, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Found unknown chunk type: %s (%08X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"problem: found both CPL0 and CPLZ chunks\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"problem: found a palette chunk with %d colors\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"problem: found both CBF0 and CBFZ chunks\0A\00", align 1
@MAX_CODEBOOK_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"problem: CBF0 chunk too large (0x%X bytes)\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"problem: no VPTZ chunk found\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"problem: found both CBP0 and CBPZ chunks\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"cbp0 chunk too large (%u bytes)\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"cbpz chunk too large (%u bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*)* @vqa_decode_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vqa_decode_chunk(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %31, align 4
  br label %36

36:                                               ; preds = %76, %2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 13
  %39 = call i32 @bytestream2_get_bytes_left(i32* %38)
  %40 = icmp uge i32 %39, 8
  br i1 %40, label %41, label %85

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 13
  %44 = call i32 @bytestream2_get_be32u(i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 13
  %47 = call i32 @bytestream2_tell(i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 13
  %50 = call i32 @bytestream2_get_be32u(i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  switch i32 %51, label %66 [
    i32 134, label %52
    i32 133, label %54
    i32 132, label %56
    i32 131, label %58
    i32 130, label %60
    i32 129, label %62
    i32 128, label %64
  ]

52:                                               ; preds = %41
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %16, align 4
  br label %76

54:                                               ; preds = %41
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %17, align 4
  br label %76

56:                                               ; preds = %41
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %18, align 4
  br label %76

58:                                               ; preds = %41
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %19, align 4
  br label %76

60:                                               ; preds = %41
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %20, align 4
  br label %76

62:                                               ; preds = %41
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %21, align 4
  br label %76

64:                                               ; preds = %41
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %22, align 4
  br label %76

66:                                               ; preds = %41
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 14
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @av_bswap32(i32 %71)
  %73 = call i32 @av_fourcc2str(i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i32, i32, i8*, ...) @av_log(i32 %69, i32 %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %66, %64, %62, %60, %58, %56, %54, %52
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 13
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add i32 %81, %82
  %84 = call i32 @bytestream2_skip(i32* %80, i32 %83)
  br label %36

85:                                               ; preds = %36
  %86 = load i32, i32* %20, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i32, i32* %21, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 14
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = call i32 (i32, i32, i8*, ...) @av_log(i32 %94, i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %97, i32* %3, align 4
  br label %710

98:                                               ; preds = %88, %85
  %99 = load i32, i32* %21, align 4
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101, %98
  %103 = load i32, i32* %20, align 4
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %192

105:                                              ; preds = %102
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 13
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* @SEEK_SET, align 4
  %110 = call i32 @bytestream2_seek(i32* %107, i32 %108, i32 %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 13
  %113 = call i32 @bytestream2_get_be32(i32* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = udiv i32 %114, 3
  %116 = icmp ugt i32 %115, 256
  br i1 %116, label %123, label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 13
  %121 = call i32 @bytestream2_get_bytes_left(i32* %120)
  %122 = icmp ugt i32 %118, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %117, %105
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 14
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @AV_LOG_ERROR, align 4
  %128 = load i32, i32* %7, align 4
  %129 = udiv i32 %128, 3
  %130 = call i32 (i32, i32, i8*, ...) @av_log(i32 %126, i32 %127, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %131, i32* %3, align 4
  br label %710

132:                                              ; preds = %117
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %188, %132
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %7, align 4
  %136 = udiv i32 %135, 3
  %137 = icmp ult i32 %134, %136
  br i1 %137, label %138, label %191

138:                                              ; preds = %133
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 13
  %141 = call i32 @bytestream2_get_byteu(i32* %140)
  %142 = mul nsw i32 %141, 4
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %11, align 1
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 13
  %146 = call i32 @bytestream2_get_byteu(i32* %145)
  %147 = mul nsw i32 %146, 4
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %12, align 1
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 13
  %151 = call i32 @bytestream2_get_byteu(i32* %150)
  %152 = mul nsw i32 %151, 4
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %13, align 1
  %154 = load i8, i8* %11, align 1
  %155 = zext i8 %154 to i32
  %156 = shl i32 %155, 16
  %157 = or i32 -16777216, %156
  %158 = load i8, i8* %12, align 1
  %159 = zext i8 %158 to i32
  %160 = shl i32 %159, 8
  %161 = or i32 %157, %160
  %162 = load i8, i8* %13, align 1
  %163 = zext i8 %162 to i32
  %164 = or i32 %161, %163
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %164, i32* %170, align 4
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = ashr i32 %177, 6
  %179 = and i32 %178, 197379
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %179
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %138
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %133

191:                                              ; preds = %133
  br label %192

192:                                              ; preds = %191, %102
  %193 = load i32, i32* %16, align 4
  %194 = icmp ne i32 %193, -1
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  %196 = load i32, i32* %17, align 4
  %197 = icmp ne i32 %196, -1
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 14
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @AV_LOG_ERROR, align 4
  %203 = call i32 (i32, i32, i8*, ...) @av_log(i32 %201, i32 %202, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %204 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %204, i32* %3, align 4
  br label %710

205:                                              ; preds = %195, %192
  %206 = load i32, i32* %17, align 4
  %207 = icmp ne i32 %206, -1
  br i1 %207, label %208, label %230

208:                                              ; preds = %205
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 13
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* @SEEK_SET, align 4
  %213 = call i32 @bytestream2_seek(i32* %210, i32 %211, i32 %212)
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 13
  %216 = call i32 @bytestream2_get_be32(i32* %215)
  store i32 %216, i32* %7, align 4
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %218 = load i32, i32* %7, align 4
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @decode_format80(%struct.TYPE_6__* %217, i32 %218, i32* %221, i32 %224, i32 0)
  store i32 %225, i32* %15, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %208
  %228 = load i32, i32* %15, align 4
  store i32 %228, i32* %3, align 4
  br label %710

229:                                              ; preds = %208
  br label %230

230:                                              ; preds = %229, %205
  %231 = load i32, i32* %16, align 4
  %232 = icmp ne i32 %231, -1
  br i1 %232, label %233, label %261

233:                                              ; preds = %230
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 13
  %236 = load i32, i32* %16, align 4
  %237 = load i32, i32* @SEEK_SET, align 4
  %238 = call i32 @bytestream2_seek(i32* %235, i32 %236, i32 %237)
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 13
  %241 = call i32 @bytestream2_get_be32(i32* %240)
  store i32 %241, i32* %7, align 4
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* @MAX_CODEBOOK_SIZE, align 4
  %244 = icmp ugt i32 %242, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %233
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 14
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @AV_LOG_ERROR, align 4
  %250 = load i32, i32* %7, align 4
  %251 = call i32 (i32, i32, i8*, ...) @av_log(i32 %248, i32 %249, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %252, i32* %3, align 4
  br label %710

253:                                              ; preds = %233
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 13
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @bytestream2_get_buffer(i32* %255, i32* %258, i32 %259)
  br label %261

261:                                              ; preds = %253, %230
  %262 = load i32, i32* %22, align 4
  %263 = icmp eq i32 %262, -1
  br i1 %263, label %264, label %271

264:                                              ; preds = %261
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 14
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @AV_LOG_ERROR, align 4
  %269 = call i32 (i32, i32, i8*, ...) @av_log(i32 %267, i32 %268, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %270 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %270, i32* %3, align 4
  br label %710

271:                                              ; preds = %261
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 13
  %274 = load i32, i32* %22, align 4
  %275 = load i32, i32* @SEEK_SET, align 4
  %276 = call i32 @bytestream2_seek(i32* %273, i32 %274, i32 %275)
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 13
  %279 = call i32 @bytestream2_get_be32(i32* %278)
  store i32 %279, i32* %7, align 4
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %281 = load i32, i32* %7, align 4
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 4
  %284 = load i32*, i32** %283, align 8
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @decode_format80(%struct.TYPE_6__* %280, i32 %281, i32* %284, i32 %287, i32 1)
  store i32 %288, i32* %15, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %271
  %291 = load i32, i32* %15, align 4
  store i32 %291, i32* %3, align 4
  br label %710

292:                                              ; preds = %271
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 8
  %296 = icmp eq i32 %295, 4
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  store i32 4, i32* %14, align 4
  br label %299

298:                                              ; preds = %292
  store i32 3, i32* %14, align 4
  br label %299

299:                                              ; preds = %298, %297
  store i32 0, i32* %24, align 4
  br label %300

300:                                              ; preds = %532, %299
  %301 = load i32, i32* %24, align 4
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = icmp slt i32 %301, %304
  br i1 %305, label %306, label %538

306:                                              ; preds = %300
  store i32 0, i32* %23, align 4
  br label %307

307:                                              ; preds = %524, %306
  %308 = load i32, i32* %23, align 4
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 7
  %311 = load i32, i32* %310, align 8
  %312 = icmp slt i32 %308, %311
  br i1 %312, label %313, label %531

313:                                              ; preds = %307
  %314 = load i32, i32* %24, align 4
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 0
  %319 = load i32, i32* %318, align 4
  %320 = mul nsw i32 %314, %319
  %321 = load i32, i32* %23, align 4
  %322 = add nsw i32 %320, %321
  store i32 %322, i32* %26, align 4
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 8
  %325 = load i32, i32* %324, align 4
  switch i32 %325, label %442 [
    i32 1, label %326
    i32 2, label %416
    i32 3, label %441
  ]

326:                                              ; preds = %313
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 4
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %30, align 4
  %331 = mul nsw i32 %330, 2
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %329, i64 %332
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %28, align 4
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 4
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %30, align 4
  %339 = mul nsw i32 %338, 2
  %340 = add nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %337, i64 %341
  %343 = load i32, i32* %342, align 4
  store i32 %343, i32* %29, align 4
  %344 = load i32, i32* %29, align 4
  %345 = shl i32 %344, 8
  %346 = load i32, i32* %28, align 4
  %347 = or i32 %345, %346
  %348 = ashr i32 %347, 3
  store i32 %348, i32* %27, align 4
  %349 = load i32, i32* %14, align 4
  %350 = load i32, i32* %27, align 4
  %351 = shl i32 %350, %349
  store i32 %351, i32* %27, align 4
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 8
  store i32 %354, i32* %25, align 4
  %355 = load i32, i32* %29, align 4
  %356 = icmp eq i32 %355, 255
  br i1 %356, label %357, label %415

357:                                              ; preds = %326
  br label %358

358:                                              ; preds = %362, %357
  %359 = load i32, i32* %25, align 4
  %360 = add nsw i32 %359, -1
  store i32 %360, i32* %25, align 4
  %361 = icmp ne i32 %359, 0
  br i1 %361, label %362, label %414

362:                                              ; preds = %358
  %363 = load i32, i32* %28, align 4
  %364 = sub nsw i32 255, %363
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 1
  %367 = load i32**, i32*** %366, align 8
  %368 = getelementptr inbounds i32*, i32** %367, i64 0
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %26, align 4
  %371 = add nsw i32 %370, 0
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  store i32 %364, i32* %373, align 4
  %374 = load i32, i32* %28, align 4
  %375 = sub nsw i32 255, %374
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 1
  %378 = load i32**, i32*** %377, align 8
  %379 = getelementptr inbounds i32*, i32** %378, i64 0
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* %26, align 4
  %382 = add nsw i32 %381, 1
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %380, i64 %383
  store i32 %375, i32* %384, align 4
  %385 = load i32, i32* %28, align 4
  %386 = sub nsw i32 255, %385
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 1
  %389 = load i32**, i32*** %388, align 8
  %390 = getelementptr inbounds i32*, i32** %389, i64 0
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %26, align 4
  %393 = add nsw i32 %392, 2
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %391, i64 %394
  store i32 %386, i32* %395, align 4
  %396 = load i32, i32* %28, align 4
  %397 = sub nsw i32 255, %396
  %398 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 1
  %400 = load i32**, i32*** %399, align 8
  %401 = getelementptr inbounds i32*, i32** %400, i64 0
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %26, align 4
  %404 = add nsw i32 %403, 3
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %402, i64 %405
  store i32 %397, i32* %406, align 4
  %407 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 0
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 0
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* %26, align 4
  %413 = add nsw i32 %412, %411
  store i32 %413, i32* %26, align 4
  br label %358

414:                                              ; preds = %358
  store i32 0, i32* %25, align 4
  br label %415

415:                                              ; preds = %414, %326
  br label %442

416:                                              ; preds = %313
  %417 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 4
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* %30, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = load i32, i32* %422, align 4
  store i32 %423, i32* %28, align 4
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 4
  %426 = load i32*, i32** %425, align 8
  %427 = load i32, i32* %31, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  store i32 %430, i32* %29, align 4
  %431 = load i32, i32* %29, align 4
  %432 = shl i32 %431, 8
  %433 = load i32, i32* %28, align 4
  %434 = or i32 %432, %433
  store i32 %434, i32* %27, align 4
  %435 = load i32, i32* %14, align 4
  %436 = load i32, i32* %27, align 4
  %437 = shl i32 %436, %435
  store i32 %437, i32* %27, align 4
  %438 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i32 0, i32 5
  %440 = load i32, i32* %439, align 8
  store i32 %440, i32* %25, align 4
  br label %442

441:                                              ; preds = %313
  store i32 0, i32* %25, align 4
  br label %442

442:                                              ; preds = %313, %441, %416, %415
  br label %443

443:                                              ; preds = %447, %442
  %444 = load i32, i32* %25, align 4
  %445 = add nsw i32 %444, -1
  store i32 %445, i32* %25, align 4
  %446 = icmp ne i32 %444, 0
  br i1 %446, label %447, label %523

447:                                              ; preds = %443
  %448 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %448, i32 0, i32 2
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %27, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %27, align 4
  %453 = sext i32 %451 to i64
  %454 = getelementptr inbounds i32, i32* %450, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %456, i32 0, i32 1
  %458 = load i32**, i32*** %457, align 8
  %459 = getelementptr inbounds i32*, i32** %458, i64 0
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %26, align 4
  %462 = add nsw i32 %461, 0
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %460, i64 %463
  store i32 %455, i32* %464, align 4
  %465 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 2
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %27, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %27, align 4
  %470 = sext i32 %468 to i64
  %471 = getelementptr inbounds i32, i32* %467, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %474 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %473, i32 0, i32 1
  %475 = load i32**, i32*** %474, align 8
  %476 = getelementptr inbounds i32*, i32** %475, i64 0
  %477 = load i32*, i32** %476, align 8
  %478 = load i32, i32* %26, align 4
  %479 = add nsw i32 %478, 1
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %477, i64 %480
  store i32 %472, i32* %481, align 4
  %482 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %482, i32 0, i32 2
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* %27, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %27, align 4
  %487 = sext i32 %485 to i64
  %488 = getelementptr inbounds i32, i32* %484, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 1
  %492 = load i32**, i32*** %491, align 8
  %493 = getelementptr inbounds i32*, i32** %492, i64 0
  %494 = load i32*, i32** %493, align 8
  %495 = load i32, i32* %26, align 4
  %496 = add nsw i32 %495, 2
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %494, i64 %497
  store i32 %489, i32* %498, align 4
  %499 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %499, i32 0, i32 2
  %501 = load i32*, i32** %500, align 8
  %502 = load i32, i32* %27, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %27, align 4
  %504 = sext i32 %502 to i64
  %505 = getelementptr inbounds i32, i32* %501, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %508 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %507, i32 0, i32 1
  %509 = load i32**, i32*** %508, align 8
  %510 = getelementptr inbounds i32*, i32** %509, i64 0
  %511 = load i32*, i32** %510, align 8
  %512 = load i32, i32* %26, align 4
  %513 = add nsw i32 %512, 3
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %511, i64 %514
  store i32 %506, i32* %515, align 4
  %516 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %517 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %516, i32 0, i32 0
  %518 = load i32*, i32** %517, align 8
  %519 = getelementptr inbounds i32, i32* %518, i64 0
  %520 = load i32, i32* %519, align 4
  %521 = load i32, i32* %26, align 4
  %522 = add nsw i32 %521, %520
  store i32 %522, i32* %26, align 4
  br label %443

523:                                              ; preds = %443
  br label %524

524:                                              ; preds = %523
  %525 = load i32, i32* %23, align 4
  %526 = add nsw i32 %525, 4
  store i32 %526, i32* %23, align 4
  %527 = load i32, i32* %30, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %30, align 4
  %529 = load i32, i32* %31, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %31, align 4
  br label %307

531:                                              ; preds = %307
  br label %532

532:                                              ; preds = %531
  %533 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %534 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %533, i32 0, i32 5
  %535 = load i32, i32* %534, align 8
  %536 = load i32, i32* %24, align 4
  %537 = add nsw i32 %536, %535
  store i32 %537, i32* %24, align 4
  br label %300

538:                                              ; preds = %300
  %539 = load i32, i32* %18, align 4
  %540 = icmp ne i32 %539, -1
  br i1 %540, label %541, label %551

541:                                              ; preds = %538
  %542 = load i32, i32* %19, align 4
  %543 = icmp ne i32 %542, -1
  br i1 %543, label %544, label %551

544:                                              ; preds = %541
  %545 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %546 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %545, i32 0, i32 14
  %547 = load i32, i32* %546, align 4
  %548 = load i32, i32* @AV_LOG_ERROR, align 4
  %549 = call i32 (i32, i32, i8*, ...) @av_log(i32 %547, i32 %548, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %550 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %550, i32* %3, align 4
  br label %710

551:                                              ; preds = %541, %538
  %552 = load i32, i32* %18, align 4
  %553 = icmp ne i32 %552, -1
  br i1 %553, label %554, label %623

554:                                              ; preds = %551
  %555 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %556 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %555, i32 0, i32 13
  %557 = load i32, i32* %18, align 4
  %558 = load i32, i32* @SEEK_SET, align 4
  %559 = call i32 @bytestream2_seek(i32* %556, i32 %557, i32 %558)
  %560 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %561 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %560, i32 0, i32 13
  %562 = call i32 @bytestream2_get_be32(i32* %561)
  store i32 %562, i32* %7, align 4
  %563 = load i32, i32* %7, align 4
  %564 = load i32, i32* @MAX_CODEBOOK_SIZE, align 4
  %565 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %566 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %565, i32 0, i32 9
  %567 = load i32, i32* %566, align 8
  %568 = sub i32 %564, %567
  %569 = icmp ugt i32 %563, %568
  br i1 %569, label %570, label %578

570:                                              ; preds = %554
  %571 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %572 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %571, i32 0, i32 14
  %573 = load i32, i32* %572, align 4
  %574 = load i32, i32* @AV_LOG_ERROR, align 4
  %575 = load i32, i32* %7, align 4
  %576 = call i32 (i32, i32, i8*, ...) @av_log(i32 %573, i32 %574, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %575)
  %577 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %577, i32* %3, align 4
  br label %710

578:                                              ; preds = %554
  %579 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %580 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %579, i32 0, i32 13
  %581 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %582 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %581, i32 0, i32 10
  %583 = load i32*, i32** %582, align 8
  %584 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %585 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %584, i32 0, i32 9
  %586 = load i32, i32* %585, align 8
  %587 = zext i32 %586 to i64
  %588 = getelementptr inbounds i32, i32* %583, i64 %587
  %589 = load i32, i32* %7, align 4
  %590 = call i32 @bytestream2_get_buffer(i32* %580, i32* %588, i32 %589)
  %591 = load i32, i32* %7, align 4
  %592 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %593 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %592, i32 0, i32 9
  %594 = load i32, i32* %593, align 8
  %595 = add i32 %594, %591
  store i32 %595, i32* %593, align 8
  %596 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %597 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %596, i32 0, i32 11
  %598 = load i64, i64* %597, align 8
  %599 = add nsw i64 %598, -1
  store i64 %599, i64* %597, align 8
  %600 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %601 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %600, i32 0, i32 11
  %602 = load i64, i64* %601, align 8
  %603 = icmp sle i64 %602, 0
  br i1 %603, label %604, label %622

604:                                              ; preds = %578
  %605 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %606 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %605, i32 0, i32 2
  %607 = load i32*, i32** %606, align 8
  %608 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %609 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %608, i32 0, i32 10
  %610 = load i32*, i32** %609, align 8
  %611 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %612 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %611, i32 0, i32 9
  %613 = load i32, i32* %612, align 8
  %614 = call i32 @memcpy(i32* %607, i32* %610, i32 %613)
  %615 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %616 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %615, i32 0, i32 9
  store i32 0, i32* %616, align 8
  %617 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %618 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %617, i32 0, i32 12
  %619 = load i64, i64* %618, align 8
  %620 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %621 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %620, i32 0, i32 11
  store i64 %619, i64* %621, align 8
  br label %622

622:                                              ; preds = %604, %578
  br label %623

623:                                              ; preds = %622, %551
  %624 = load i32, i32* %19, align 4
  %625 = icmp ne i32 %624, -1
  br i1 %625, label %626, label %709

626:                                              ; preds = %623
  %627 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %628 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %627, i32 0, i32 13
  %629 = load i32, i32* %19, align 4
  %630 = load i32, i32* @SEEK_SET, align 4
  %631 = call i32 @bytestream2_seek(i32* %628, i32 %629, i32 %630)
  %632 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %633 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %632, i32 0, i32 13
  %634 = call i32 @bytestream2_get_be32(i32* %633)
  store i32 %634, i32* %7, align 4
  %635 = load i32, i32* %7, align 4
  %636 = load i32, i32* @MAX_CODEBOOK_SIZE, align 4
  %637 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %638 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %637, i32 0, i32 9
  %639 = load i32, i32* %638, align 8
  %640 = sub i32 %636, %639
  %641 = icmp ugt i32 %635, %640
  br i1 %641, label %642, label %650

642:                                              ; preds = %626
  %643 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %644 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %643, i32 0, i32 14
  %645 = load i32, i32* %644, align 4
  %646 = load i32, i32* @AV_LOG_ERROR, align 4
  %647 = load i32, i32* %7, align 4
  %648 = call i32 (i32, i32, i8*, ...) @av_log(i32 %645, i32 %646, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %647)
  %649 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %649, i32* %3, align 4
  br label %710

650:                                              ; preds = %626
  %651 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %652 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %651, i32 0, i32 13
  %653 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %654 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %653, i32 0, i32 10
  %655 = load i32*, i32** %654, align 8
  %656 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %657 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %656, i32 0, i32 9
  %658 = load i32, i32* %657, align 8
  %659 = zext i32 %658 to i64
  %660 = getelementptr inbounds i32, i32* %655, i64 %659
  %661 = load i32, i32* %7, align 4
  %662 = call i32 @bytestream2_get_buffer(i32* %652, i32* %660, i32 %661)
  %663 = load i32, i32* %7, align 4
  %664 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %665 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %664, i32 0, i32 9
  %666 = load i32, i32* %665, align 8
  %667 = add i32 %666, %663
  store i32 %667, i32* %665, align 8
  %668 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %669 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %668, i32 0, i32 11
  %670 = load i64, i64* %669, align 8
  %671 = add nsw i64 %670, -1
  store i64 %671, i64* %669, align 8
  %672 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %673 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %672, i32 0, i32 11
  %674 = load i64, i64* %673, align 8
  %675 = icmp sle i64 %674, 0
  br i1 %675, label %676, label %708

676:                                              ; preds = %650
  %677 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %678 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %677, i32 0, i32 13
  %679 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %680 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %679, i32 0, i32 10
  %681 = load i32*, i32** %680, align 8
  %682 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %683 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %682, i32 0, i32 9
  %684 = load i32, i32* %683, align 8
  %685 = call i32 @bytestream2_init(i32* %678, i32* %681, i32 %684)
  %686 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %687 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %688 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %687, i32 0, i32 9
  %689 = load i32, i32* %688, align 8
  %690 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %691 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %690, i32 0, i32 2
  %692 = load i32*, i32** %691, align 8
  %693 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %694 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %693, i32 0, i32 3
  %695 = load i32, i32* %694, align 8
  %696 = call i32 @decode_format80(%struct.TYPE_6__* %686, i32 %689, i32* %692, i32 %695, i32 0)
  store i32 %696, i32* %15, align 4
  %697 = icmp slt i32 %696, 0
  br i1 %697, label %698, label %700

698:                                              ; preds = %676
  %699 = load i32, i32* %15, align 4
  store i32 %699, i32* %3, align 4
  br label %710

700:                                              ; preds = %676
  %701 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %702 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %701, i32 0, i32 9
  store i32 0, i32* %702, align 8
  %703 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %704 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %703, i32 0, i32 12
  %705 = load i64, i64* %704, align 8
  %706 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %707 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %706, i32 0, i32 11
  store i64 %705, i64* %707, align 8
  br label %708

708:                                              ; preds = %700, %650
  br label %709

709:                                              ; preds = %708, %623
  store i32 0, i32* %3, align 4
  br label %710

710:                                              ; preds = %709, %698, %642, %570, %544, %290, %264, %245, %227, %198, %123, %91
  %711 = load i32, i32* %3, align 4
  ret i32 %711
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_be32u(i32*) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @av_fourcc2str(i32) #1

declare dso_local i32 @av_bswap32(i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_be32(i32*) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @decode_format80(%struct.TYPE_6__*, i32, i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
