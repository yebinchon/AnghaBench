; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_enc.c_frame_start.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_enc.c_frame_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32*, i32*, i64* }

@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@PICT_FRAME = common dso_local global i64 0, align 8
@PICT_BOTTOM_FIELD = common dso_local global i64 0, align 8
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i64 0, align 8
@FMT_H263 = common dso_local global i64 0, align 8
@FMT_H261 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @frame_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frame_start(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %43

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 21
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %11
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 21
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 19
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = icmp ne %struct.TYPE_10__* %19, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %16
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 20
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 21
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = call i32 @ff_mpeg_unref_picture(i32 %38, %struct.TYPE_10__* %41)
  br label %43

43:                                               ; preds = %35, %24, %16, %11, %1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 22
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i64 %46, i64* %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 22
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 %58, i32* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 20
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 18
  %70 = call i32 @ff_mpeg_unref_picture(i32 %67, %struct.TYPE_10__* %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 20
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 18
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 22
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = call i32 @ff_mpeg_ref_picture(i32 %73, %struct.TYPE_10__* %75, %struct.TYPE_10__* %78)
  store i32 %79, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %43
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %333

83:                                               ; preds = %43
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %83
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 19
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 21
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %94, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 23
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %89
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 22
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 19
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %104, align 8
  br label %105

105:                                              ; preds = %99, %89
  br label %106

106:                                              ; preds = %105, %83
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 21
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = icmp ne %struct.TYPE_10__* %109, null
  br i1 %110, label %111, label %142

111:                                              ; preds = %106
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 20
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 17
  %117 = call i32 @ff_mpeg_unref_picture(i32 %114, %struct.TYPE_10__* %116)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 21
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 4
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %111
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 20
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 17
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 21
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = call i32 @ff_mpeg_ref_picture(i32 %131, %struct.TYPE_10__* %133, %struct.TYPE_10__* %136)
  store i32 %137, i32* %4, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %128
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %333

141:                                              ; preds = %128, %111
  br label %142

142:                                              ; preds = %141, %106
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 19
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = icmp ne %struct.TYPE_10__* %145, null
  br i1 %146, label %147, label %178

147:                                              ; preds = %142
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 20
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 16
  %153 = call i32 @ff_mpeg_unref_picture(i32 %150, %struct.TYPE_10__* %152)
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 19
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 4
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %147
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 20
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 16
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 19
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = call i32 @ff_mpeg_ref_picture(i32 %167, %struct.TYPE_10__* %169, %struct.TYPE_10__* %172)
  store i32 %173, i32* %4, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %164
  %176 = load i32, i32* %4, align 4
  store i32 %176, i32* %2, align 4
  br label %333

177:                                              ; preds = %164, %147
  br label %178

178:                                              ; preds = %177, %142
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @PICT_FRAME, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %254

184:                                              ; preds = %178
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %250, %184
  %186 = load i32, i32* %5, align 4
  %187 = icmp slt i32 %186, 4
  br i1 %187, label %188, label %253

188:                                              ; preds = %185
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @PICT_BOTTOM_FIELD, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %216

194:                                              ; preds = %188
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 18
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 18
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, %204
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %194, %188
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 18
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %226, 2
  store i32 %227, i32* %225, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 17
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = mul nsw i32 %237, 2
  store i32 %238, i32* %236, align 4
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 16
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = mul nsw i32 %248, 2
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %216
  %251 = load i32, i32* %5, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %5, align 4
  br label %185

253:                                              ; preds = %185
  br label %254

254:                                              ; preds = %253, %178
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 15
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %265, label %259

259:                                              ; preds = %254
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @AV_CODEC_ID_MPEG2VIDEO, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %276

265:                                              ; preds = %259, %254
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 14
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 10
  store i32 %268, i32* %270, align 4
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 13
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 8
  store i32 %273, i32* %275, align 4
  br label %311

276:                                              ; preds = %259
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @FMT_H263, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %288, label %282

282:                                              ; preds = %276
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @FMT_H261, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %299

288:                                              ; preds = %282, %276
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 12
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 10
  store i32 %291, i32* %293, align 4
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 11
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 8
  store i32 %296, i32* %298, align 4
  br label %310

299:                                              ; preds = %282
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 9
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 10
  store i32 %302, i32* %304, align 4
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 7
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 8
  store i32 %307, i32* %309, align 4
  br label %310

310:                                              ; preds = %299, %288
  br label %311

311:                                              ; preds = %310, %265
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 6
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %332

316:                                              ; preds = %311
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 5
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %316
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 4
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br label %326

326:                                              ; preds = %321, %316
  %327 = phi i1 [ false, %316 ], [ %325, %321 ]
  %328 = zext i1 %327 to i32
  %329 = call i32 @av_assert2(i32 %328)
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %331 = call i32 @update_noise_reduction(%struct.TYPE_9__* %330)
  br label %332

332:                                              ; preds = %326, %311
  store i32 0, i32* %2, align 4
  br label %333

333:                                              ; preds = %332, %175, %139, %81
  %334 = load i32, i32* %2, align 4
  ret i32 %334
}

declare dso_local i32 @ff_mpeg_unref_picture(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ff_mpeg_ref_picture(i32, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @update_noise_reduction(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
