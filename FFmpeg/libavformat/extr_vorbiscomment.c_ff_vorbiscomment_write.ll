; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vorbiscomment.c_ff_vorbiscomment_write.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vorbiscomment.c_ff_vorbiscomment_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%03d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%02d:%02d:%02d.%03d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CHAPTER\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_vorbiscomment_write(i32** %0, i32** %1, i8* %2, %struct.TYPE_8__** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca [13 x i8], align 1
  %21 = alloca [4 x i8], align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %28 = load i32**, i32*** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = call i32 @bytestream_put_le32(i32** %28, i32 %30)
  %32 = load i32**, i32*** %7, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i32 @bytestream_put_buffer(i32** %32, i8* %33, i32 %35)
  %37 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %38 = icmp ne %struct.TYPE_8__** %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %5
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %59, %42
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %48, i64 %50
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @av_dict_count(i32* %54)
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %43

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %39, %5
  %64 = load i32**, i32*** %8, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %265

67:                                               ; preds = %63
  %68 = load i32**, i32*** %8, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @av_dict_count(i32* %69)
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %14, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %15, align 8
  %73 = load i32**, i32*** %7, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @bytestream_put_le32(i32** %73, i32 %74)
  br label %76

76:                                               ; preds = %101, %67
  %77 = load i32**, i32*** %8, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %80 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %81 = call %struct.TYPE_7__* @av_dict_get(i32* %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %79, i32 %80)
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %15, align 8
  %82 = icmp ne %struct.TYPE_7__* %81, null
  br i1 %82, label %83, label %122

83:                                               ; preds = %76
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strlen(i8* %86)
  store i32 %87, i32* %16, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strlen(i8* %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* @UINT32_MAX, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load i32, i32* @EINVAL, align 4
  %100 = call i32 @AVERROR(i32 %99)
  store i32 %100, i32* %6, align 4
  br label %269

101:                                              ; preds = %83
  %102 = load i32**, i32*** %7, align 8
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %104, %105
  %107 = call i32 @bytestream_put_le32(i32** %102, i32 %106)
  %108 = load i32**, i32*** %7, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @bytestream_put_buffer(i32** %108, i8* %111, i32 %112)
  %114 = load i32**, i32*** %7, align 8
  %115 = call i32 @bytestream_put_byte(i32** %114, i8 signext 61)
  %116 = load i32**, i32*** %7, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @bytestream_put_buffer(i32** %116, i8* %119, i32 %120)
  br label %76

122:                                              ; preds = %76
  store i32 0, i32* %18, align 4
  br label %123

123:                                              ; preds = %261, %122
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %264

127:                                              ; preds = %123
  %128 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %128, i64 %130
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %19, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @av_rescale(i32 %135, i32 %139, i32 %143)
  store i32 %144, i32* %24, align 4
  %145 = load i32, i32* %24, align 4
  %146 = sdiv i32 %145, 3600
  store i32 %146, i32* %22, align 4
  %147 = load i32, i32* %24, align 4
  %148 = sdiv i32 %147, 60
  %149 = srem i32 %148, 60
  store i32 %149, i32* %23, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = call i32 @av_make_q(i32 1, i32 1000)
  %156 = bitcast %struct.TYPE_9__* %154 to i64*
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @av_rescale_q(i32 %152, i64 %157, i32 %155)
  %159 = srem i32 %158, 1000
  store i32 %159, i32* %25, align 4
  %160 = load i32, i32* %24, align 4
  %161 = srem i32 %160, 60
  store i32 %161, i32* %24, align 4
  %162 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  %163 = load i32, i32* %18, align 4
  %164 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %162, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = getelementptr inbounds [13 x i8], [13 x i8]* %20, i64 0, i64 0
  %166 = load i32, i32* %22, align 4
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %24, align 4
  %169 = load i32, i32* %25, align 4
  %170 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %165, i32 13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %166, i32 %167, i32 %168, i32 %169)
  %171 = load i32**, i32*** %7, align 8
  %172 = call i32 @bytestream_put_le32(i32** %171, i32 23)
  %173 = load i32**, i32*** %7, align 8
  %174 = call i32 @bytestream_put_buffer(i32** %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %175 = load i32**, i32*** %7, align 8
  %176 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  %177 = call i32 @bytestream_put_buffer(i32** %175, i8* %176, i32 3)
  %178 = load i32**, i32*** %7, align 8
  %179 = call i32 @bytestream_put_byte(i32** %178, i8 signext 61)
  %180 = load i32**, i32*** %7, align 8
  %181 = getelementptr inbounds [13 x i8], [13 x i8]* %20, i64 0, i64 0
  %182 = call i32 @bytestream_put_buffer(i32** %180, i8* %181, i32 12)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %15, align 8
  br label %183

183:                                              ; preds = %251, %127
  %184 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %185 = load i32, i32* %18, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %184, i64 %186
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %192 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %193 = call %struct.TYPE_7__* @av_dict_get(i32* %190, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %191, i32 %192)
  store %struct.TYPE_7__* %193, %struct.TYPE_7__** %15, align 8
  %194 = icmp ne %struct.TYPE_7__* %193, null
  br i1 %194, label %195, label %260

195:                                              ; preds = %183
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @strcmp(i8* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %195
  br label %207

202:                                              ; preds = %195
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @strlen(i8* %205)
  br label %207

207:                                              ; preds = %202, %201
  %208 = phi i32 [ 4, %201 ], [ %206, %202 ]
  store i32 %208, i32* %26, align 4
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @strlen(i8* %211)
  store i32 %212, i32* %27, align 4
  %213 = load i32, i32* %26, align 4
  %214 = add nsw i32 %213, 1
  %215 = load i32, i32* %27, align 4
  %216 = add nsw i32 %214, %215
  %217 = add nsw i32 %216, 10
  %218 = load i32, i32* @UINT32_MAX, align 4
  %219 = icmp sgt i32 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %207
  %221 = load i32, i32* @EINVAL, align 4
  %222 = call i32 @AVERROR(i32 %221)
  store i32 %222, i32* %6, align 4
  br label %269

223:                                              ; preds = %207
  %224 = load i32**, i32*** %7, align 8
  %225 = load i32, i32* %26, align 4
  %226 = add nsw i32 10, %225
  %227 = add nsw i32 %226, 1
  %228 = load i32, i32* %27, align 4
  %229 = add nsw i32 %227, %228
  %230 = call i32 @bytestream_put_le32(i32** %224, i32 %229)
  %231 = load i32**, i32*** %7, align 8
  %232 = call i32 @bytestream_put_buffer(i32** %231, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %233 = load i32**, i32*** %7, align 8
  %234 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  %235 = call i32 @bytestream_put_buffer(i32** %233, i8* %234, i32 3)
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %223
  %242 = load i32**, i32*** %7, align 8
  %243 = call i32 @bytestream_put_buffer(i32** %242, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  br label %251

244:                                              ; preds = %223
  %245 = load i32**, i32*** %7, align 8
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = load i32, i32* %26, align 4
  %250 = call i32 @bytestream_put_buffer(i32** %245, i8* %248, i32 %249)
  br label %251

251:                                              ; preds = %244, %241
  %252 = load i32**, i32*** %7, align 8
  %253 = call i32 @bytestream_put_byte(i32** %252, i8 signext 61)
  %254 = load i32**, i32*** %7, align 8
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = load i32, i32* %27, align 4
  %259 = call i32 @bytestream_put_buffer(i32** %254, i8* %257, i32 %258)
  br label %183

260:                                              ; preds = %183
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %18, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %18, align 4
  br label %123

264:                                              ; preds = %123
  br label %268

265:                                              ; preds = %63
  %266 = load i32**, i32*** %7, align 8
  %267 = call i32 @bytestream_put_le32(i32** %266, i32 0)
  br label %268

268:                                              ; preds = %265, %264
  store i32 0, i32* %6, align 4
  br label %269

269:                                              ; preds = %268, %220, %98
  %270 = load i32, i32* %6, align 4
  ret i32 %270
}

declare dso_local i32 @bytestream_put_le32(i32**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bytestream_put_buffer(i32**, i8*, i32) #1

declare dso_local i32 @av_dict_count(i32*) #1

declare dso_local %struct.TYPE_7__* @av_dict_get(i32*, i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @bytestream_put_byte(i32**, i8 signext) #1

declare dso_local i32 @av_rescale(i32, i32, i32) #1

declare dso_local i32 @av_rescale_q(i32, i64, i32) #1

declare dso_local i32 @av_make_q(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
