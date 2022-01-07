; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_prosumer.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_prosumer.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32*, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32*, i32, i32, i32** }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32*, %struct.TYPE_10__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_12__* %0, i8* %1, i32* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %11, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %26, 32
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %5, align 4
  br label %290

30:                                               ; preds = %4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bytestream2_init(i32* %32, i32 %35, i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bytestream2_init_writer(i32* %41, i32* %44, i32 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 6
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 28
  %55 = call i32 @AV_RL32(i32 %54)
  %56 = ashr i32 %55, 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @decompress(i32* %50, i32 %56, i32* %58, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %30
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %290

67:                                               ; preds = %30
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  %70 = call i32 @bytestream2_get_bytes_left_p(i32* %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = mul nsw i32 %73, %77
  %79 = sdiv i32 %78, 100
  %80 = icmp sgt i32 %70, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %82, i32* %5, align 4
  br label %290

83:                                               ; preds = %67
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 4
  %89 = call i32 @bytestream2_get_bytes_left_p(i32* %88)
  %90 = icmp sge i32 %86, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @av_assert0(i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 4
  %98 = call i32 @bytestream2_tell_p(i32* %97)
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 4
  %103 = call i32 @bytestream2_get_bytes_left_p(i32* %102)
  %104 = call i32 @memset(i32* %100, i32 0, i32 %103)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i32*
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @vertical_predict(i32* %107, i32 0, i32* %111, i32 %114, i32 1)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, 1
  %132 = call i32 @vertical_predict(i32* %118, i32 %121, i32* %124, i32 %127, i32 %131)
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %135 = call i32 @ff_get_buffer(%struct.TYPE_12__* %133, %struct.TYPE_11__* %134, i32 0)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %83
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %5, align 4
  br label %290

140:                                              ; preds = %83
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %277, %140
  %146 = load i32, i32* %13, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %280

148:                                              ; preds = %145
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  %151 = load i32**, i32*** %150, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %154, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %153, i64 %161
  store i32* %162, i32** %14, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 3
  %165 = load i32**, i32*** %164, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %168, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %167, i64 %175
  store i32* %176, i32** %15, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 3
  %179 = load i32**, i32*** %178, align 8
  %180 = getelementptr inbounds i32*, i32** %179, i64 2
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %182, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %181, i64 %189
  store i32* %190, i32** %16, align 8
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 1
  %198 = load i32, i32* %13, align 4
  %199 = sub nsw i32 %197, %198
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %199, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %193, i64 %204
  store i32* %205, i32** %17, align 8
  store i32 0, i32* %18, align 4
  br label %206

206:                                              ; preds = %273, %148
  %207 = load i32, i32* %18, align 4
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %276

212:                                              ; preds = %206
  %213 = load i32*, i32** %17, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %214, i32** %17, align 8
  %215 = load i32, i32* %213, align 4
  %216 = load i32*, i32** %15, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %15, align 8
  store i32 %215, i32* %216, align 4
  %218 = load i32*, i32** %17, align 8
  %219 = getelementptr inbounds i32, i32* %218, i32 1
  store i32* %219, i32** %17, align 8
  %220 = load i32, i32* %218, align 4
  %221 = load i32*, i32** %14, align 8
  %222 = getelementptr inbounds i32, i32* %221, i32 1
  store i32* %222, i32** %14, align 8
  store i32 %220, i32* %221, align 4
  %223 = load i32*, i32** %17, align 8
  %224 = getelementptr inbounds i32, i32* %223, i32 1
  store i32* %224, i32** %17, align 8
  %225 = load i32, i32* %223, align 4
  %226 = load i32*, i32** %16, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %16, align 8
  store i32 %225, i32* %226, align 4
  %228 = load i32*, i32** %17, align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** %17, align 8
  %230 = load i32, i32* %228, align 4
  %231 = load i32*, i32** %14, align 8
  %232 = getelementptr inbounds i32, i32* %231, i32 1
  store i32* %232, i32** %14, align 8
  store i32 %230, i32* %231, align 4
  %233 = load i32*, i32** %17, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 1
  store i32* %234, i32** %17, align 8
  %235 = load i32, i32* %233, align 4
  %236 = load i32*, i32** %15, align 8
  %237 = getelementptr inbounds i32, i32* %236, i32 1
  store i32* %237, i32** %15, align 8
  store i32 %235, i32* %236, align 4
  %238 = load i32*, i32** %17, align 8
  %239 = getelementptr inbounds i32, i32* %238, i32 1
  store i32* %239, i32** %17, align 8
  %240 = load i32, i32* %238, align 4
  %241 = load i32*, i32** %14, align 8
  %242 = getelementptr inbounds i32, i32* %241, i32 1
  store i32* %242, i32** %14, align 8
  store i32 %240, i32* %241, align 4
  %243 = load i32*, i32** %17, align 8
  %244 = getelementptr inbounds i32, i32* %243, i32 1
  store i32* %244, i32** %17, align 8
  %245 = load i32, i32* %243, align 4
  %246 = load i32*, i32** %16, align 8
  %247 = getelementptr inbounds i32, i32* %246, i32 1
  store i32* %247, i32** %16, align 8
  store i32 %245, i32* %246, align 4
  %248 = load i32*, i32** %17, align 8
  %249 = getelementptr inbounds i32, i32* %248, i32 1
  store i32* %249, i32** %17, align 8
  %250 = load i32, i32* %248, align 4
  %251 = load i32*, i32** %14, align 8
  %252 = getelementptr inbounds i32, i32* %251, i32 1
  store i32* %252, i32** %14, align 8
  store i32 %250, i32* %251, align 4
  %253 = load i32*, i32** %17, align 8
  %254 = getelementptr inbounds i32, i32* %253, i32 1
  store i32* %254, i32** %17, align 8
  %255 = load i32, i32* %253, align 4
  %256 = load i32*, i32** %14, align 8
  %257 = getelementptr inbounds i32, i32* %256, i32 1
  store i32* %257, i32** %14, align 8
  store i32 %255, i32* %256, align 4
  %258 = load i32*, i32** %17, align 8
  %259 = getelementptr inbounds i32, i32* %258, i32 1
  store i32* %259, i32** %17, align 8
  %260 = load i32, i32* %258, align 4
  %261 = load i32*, i32** %14, align 8
  %262 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %262, i32** %14, align 8
  store i32 %260, i32* %261, align 4
  %263 = load i32*, i32** %17, align 8
  %264 = getelementptr inbounds i32, i32* %263, i32 1
  store i32* %264, i32** %17, align 8
  %265 = load i32, i32* %263, align 4
  %266 = load i32*, i32** %14, align 8
  %267 = getelementptr inbounds i32, i32* %266, i32 1
  store i32* %267, i32** %14, align 8
  store i32 %265, i32* %266, align 4
  %268 = load i32*, i32** %17, align 8
  %269 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %269, i32** %17, align 8
  %270 = load i32, i32* %268, align 4
  %271 = load i32*, i32** %14, align 8
  %272 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %272, i32** %14, align 8
  store i32 %270, i32* %271, align 4
  br label %273

273:                                              ; preds = %212
  %274 = load i32, i32* %18, align 4
  %275 = add nsw i32 %274, 8
  store i32 %275, i32* %18, align 4
  br label %206

276:                                              ; preds = %206
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %13, align 4
  br label %145

280:                                              ; preds = %145
  %281 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 2
  store i32 %281, i32* %283, align 4
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 1
  store i32 1, i32* %285, align 8
  %286 = load i32*, i32** %8, align 8
  store i32 1, i32* %286, align 4
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* %5, align 4
  br label %290

290:                                              ; preds = %280, %138, %81, %65, %28
  %291 = load i32, i32* %5, align 4
  ret i32 %291
}

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_init_writer(i32*, i32*, i32) #1

declare dso_local i32 @decompress(i32*, i32, i32*, i32) #1

declare dso_local i32 @AV_RL32(i32) #1

declare dso_local i32 @bytestream2_get_bytes_left_p(i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_tell_p(i32*) #1

declare dso_local i32 @vertical_predict(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
