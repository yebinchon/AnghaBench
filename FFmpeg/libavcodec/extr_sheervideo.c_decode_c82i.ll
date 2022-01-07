; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_c82i.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_c82i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32**, i32* }

@__const.decode_c82i.pred = private unnamed_addr constant [4 x i32] [i32 125, i32 -128, i32 -128, i32 125], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_c82i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_c82i(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
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
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %8, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %9, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 2
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %10, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 3
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %300, %3
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %303

50:                                               ; preds = %44
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @get_bits1(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %106

54:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %102, %54
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %105

61:                                               ; preds = %55
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @get_bits(i32* %62, i32 8)
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @get_bits(i32* %68, i32 8)
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @get_bits(i32* %74, i32 8)
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sdiv i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @get_bits(i32* %81, i32 8)
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @get_bits(i32* %88, i32 8)
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %89, i32* %94, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @get_bits(i32* %95, i32 8)
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sdiv i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 %96, i32* %101, align 4
  br label %102

102:                                              ; preds = %61
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 2
  store i32 %104, i32* %12, align 4
  br label %55

105:                                              ; preds = %55
  br label %267

106:                                              ; preds = %50
  %107 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %107, i8* align 16 bitcast ([4 x i32]* @__const.decode_c82i.pred to i8*), i64 16, i1 false)
  store i32 0, i32* %12, align 4
  br label %108

108:                                              ; preds = %263, %106
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %266

114:                                              ; preds = %108
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @get_vlc2(i32* %115, i32 %121, i32 %127, i32 2)
  store i32 %128, i32* %19, align 4
  %129 = load i32*, i32** %6, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @get_vlc2(i32* %129, i32 %135, i32 %141, i32 2)
  store i32 %142, i32* %15, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 1
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @get_vlc2(i32* %143, i32 %149, i32 %155, i32 2)
  store i32 %156, i32* %17, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 1
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 1
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @get_vlc2(i32* %157, i32 %163, i32 %169, i32 2)
  store i32 %170, i32* %20, align 4
  %171 = load i32*, i32** %6, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @get_vlc2(i32* %171, i32 %177, i32 %183, i32 2)
  store i32 %184, i32* %16, align 4
  %185 = load i32*, i32** %6, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 1
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i64 1
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @get_vlc2(i32* %185, i32 %191, i32 %197, i32 2)
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %15, align 4
  %200 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %201 = load i32, i32* %200, align 16
  %202 = add nsw i32 %199, %201
  %203 = and i32 %202, 255
  %204 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %203, i32* %204, align 16
  %205 = load i32*, i32** %8, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %203, i32* %208, align 4
  %209 = load i32, i32* %16, align 4
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %211 = load i32, i32* %210, align 16
  %212 = add nsw i32 %209, %211
  %213 = and i32 %212, 255
  %214 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %213, i32* %214, align 16
  %215 = load i32*, i32** %8, align 8
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  store i32 %213, i32* %219, align 4
  %220 = load i32, i32* %17, align 4
  %221 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %220, %222
  %224 = and i32 %223, 255
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %224, i32* %225, align 4
  %226 = load i32*, i32** %9, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sdiv i32 %227, 2
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  store i32 %224, i32* %230, align 4
  %231 = load i32, i32* %18, align 4
  %232 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %231, %233
  %235 = and i32 %234, 255
  %236 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 %235, i32* %236, align 8
  %237 = load i32*, i32** %10, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sdiv i32 %238, 2
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  store i32 %235, i32* %241, align 4
  %242 = load i32, i32* %19, align 4
  %243 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %242, %244
  %246 = and i32 %245, 255
  %247 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %246, i32* %247, align 4
  %248 = load i32*, i32** %11, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 %246, i32* %251, align 4
  %252 = load i32, i32* %20, align 4
  %253 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %252, %254
  %256 = and i32 %255, 255
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %256, i32* %257, align 4
  %258 = load i32*, i32** %11, align 8
  %259 = load i32, i32* %12, align 4
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  store i32 %256, i32* %262, align 4
  br label %263

263:                                              ; preds = %114
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %264, 2
  store i32 %265, i32* %12, align 4
  br label %108

266:                                              ; preds = %108
  br label %267

267:                                              ; preds = %266, %105
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** %8, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32* %275, i32** %8, align 8
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32*, i32** %9, align 8
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  store i32* %283, i32** %9, align 8
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 2
  %288 = load i32, i32* %287, align 4
  %289 = load i32*, i32** %10, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  store i32* %291, i32** %10, align 8
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 3
  %296 = load i32, i32* %295, align 4
  %297 = load i32*, i32** %11, align 8
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i32, i32* %297, i64 %298
  store i32* %299, i32** %11, align 8
  br label %300

300:                                              ; preds = %267
  %301 = load i32, i32* %13, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %13, align 4
  br label %44

303:                                              ; preds = %44
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
