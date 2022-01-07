; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_ca2i.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_ca2i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i64* }

@__const.decode_ca2i.pred = private unnamed_addr constant [4 x i32] [i32 502, i32 512, i32 512, i32 502], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_ca2i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_ca2i(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %7, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %8, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %9, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %10, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 3
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %308, %3
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %311

54:                                               ; preds = %48
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @get_bits1(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %110

58:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %106, %58
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %109

65:                                               ; preds = %59
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @get_bits(i32* %66, i32 10)
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @get_bits(i32* %72, i32 10)
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @get_bits(i32* %78, i32 10)
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sdiv i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @get_bits(i32* %85, i32 10)
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @get_bits(i32* %92, i32 10)
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %93, i32* %98, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @get_bits(i32* %99, i32 10)
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sdiv i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32 %100, i32* %105, align 4
  br label %106

106:                                              ; preds = %65
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %12, align 4
  br label %59

109:                                              ; preds = %59
  br label %271

110:                                              ; preds = %54
  %111 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %111, i8* align 16 bitcast ([4 x i32]* @__const.decode_ca2i.pred to i8*), i64 16, i1 false)
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %267, %110
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %270

118:                                              ; preds = %112
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @get_vlc2(i32* %119, i32 %125, i32 %131, i32 2)
  store i32 %132, i32* %19, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @get_vlc2(i32* %133, i32 %139, i32 %145, i32 2)
  store i32 %146, i32* %15, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i64 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @get_vlc2(i32* %147, i32 %153, i32 %159, i32 2)
  store i32 %160, i32* %17, align 4
  %161 = load i32*, i32** %6, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i64 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 1
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @get_vlc2(i32* %161, i32 %167, i32 %173, i32 2)
  store i32 %174, i32* %20, align 4
  %175 = load i32*, i32** %6, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @get_vlc2(i32* %175, i32 %181, i32 %187, i32 2)
  store i32 %188, i32* %16, align 4
  %189 = load i32*, i32** %6, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i64 1
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i64 1
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @get_vlc2(i32* %189, i32 %195, i32 %201, i32 2)
  store i32 %202, i32* %18, align 4
  %203 = load i32, i32* %15, align 4
  %204 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %205 = load i32, i32* %204, align 16
  %206 = add nsw i32 %203, %205
  %207 = and i32 %206, 1023
  %208 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %207, i32* %208, align 16
  %209 = load i32*, i32** %8, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %207, i32* %212, align 4
  %213 = load i32, i32* %17, align 4
  %214 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %213, %215
  %217 = and i32 %216, 1023
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %217, i32* %218, align 4
  %219 = load i32*, i32** %9, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sdiv i32 %220, 2
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  store i32 %217, i32* %223, align 4
  %224 = load i32, i32* %16, align 4
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %226 = load i32, i32* %225, align 16
  %227 = add nsw i32 %224, %226
  %228 = and i32 %227, 1023
  %229 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %228, i32* %229, align 16
  %230 = load i32*, i32** %8, align 8
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  store i32 %228, i32* %234, align 4
  %235 = load i32, i32* %19, align 4
  %236 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %235, %237
  %239 = and i32 %238, 1023
  %240 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %239, i32* %240, align 4
  %241 = load i32*, i32** %11, align 8
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  store i32 %239, i32* %244, align 4
  %245 = load i32, i32* %18, align 4
  %246 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %247 = load i32, i32* %246, align 8
  %248 = add nsw i32 %245, %247
  %249 = and i32 %248, 1023
  %250 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 %249, i32* %250, align 8
  %251 = load i32*, i32** %10, align 8
  %252 = load i32, i32* %12, align 4
  %253 = sdiv i32 %252, 2
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  store i32 %249, i32* %255, align 4
  %256 = load i32, i32* %20, align 4
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %256, %258
  %260 = and i32 %259, 1023
  %261 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %260, i32* %261, align 4
  %262 = load i32*, i32** %11, align 8
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  store i32 %260, i32* %266, align 4
  br label %267

267:                                              ; preds = %118
  %268 = load i32, i32* %12, align 4
  %269 = add nsw i32 %268, 2
  store i32 %269, i32* %12, align 4
  br label %112

270:                                              ; preds = %112
  br label %271

271:                                              ; preds = %270, %109
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = sdiv i32 %276, 2
  %278 = load i32*, i32** %8, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32* %280, i32** %8, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = sdiv i32 %285, 2
  %287 = load i32*, i32** %9, align 8
  %288 = sext i32 %286 to i64
  %289 = getelementptr inbounds i32, i32* %287, i64 %288
  store i32* %289, i32** %9, align 8
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 2
  %294 = load i32, i32* %293, align 4
  %295 = sdiv i32 %294, 2
  %296 = load i32*, i32** %10, align 8
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  store i32* %298, i32** %10, align 8
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 3
  %303 = load i32, i32* %302, align 4
  %304 = sdiv i32 %303, 2
  %305 = load i32*, i32** %11, align 8
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  store i32* %307, i32** %11, align 8
  br label %308

308:                                              ; preds = %271
  %309 = load i32, i32* %13, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %13, align 4
  br label %48

311:                                              ; preds = %48
  ret void
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
