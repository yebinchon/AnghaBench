; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_ybri.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_ybri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32**, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_ybri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_ybri(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32], align 16
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
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @get_bits1(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %68, %42
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @get_bits(i32* %50, i32 8)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @get_bits(i32* %56, i32 8)
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @get_bits(i32* %62, i32 8)
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %43

71:                                               ; preds = %43
  br label %166

72:                                               ; preds = %3
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 125, i32 -146
  store i32 %79, i32* %73, align 4
  %80 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 -128, i32* %80, align 4
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 -128, i32* %81, align 4
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 -128, i32* %82, align 4
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %162, %72
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %165

89:                                               ; preds = %83
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @get_vlc2(i32* %90, i32 %96, i32 %102, i32 2)
  store i32 %103, i32* %14, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @get_vlc2(i32* %104, i32 %110, i32 %116, i32 2)
  store i32 %117, i32* %15, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @get_vlc2(i32* %118, i32 %124, i32 %130, i32 2)
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %14, align 4
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %134 = load i32, i32* %133, align 16
  %135 = add nsw i32 %132, %134
  %136 = and i32 %135, 255
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %136, i32* %137, align 16
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %136, i32* %141, align 4
  %142 = load i32, i32* %15, align 4
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %142, %144
  %146 = and i32 %145, 255
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %146, i32* %147, align 4
  %148 = load i32*, i32** %9, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %146, i32* %151, align 4
  %152 = load i32, i32* %16, align 4
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %152, %154
  %156 = and i32 %155, 255
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %156, i32* %157, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %156, i32* %161, align 4
  br label %162

162:                                              ; preds = %89
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %83

165:                                              ; preds = %83
  br label %166

166:                                              ; preds = %165, %71
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 0
  %171 = load i64, i64* %170, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 %171
  store i32* %173, i32** %8, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 %178
  store i32* %180, i32** %9, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 2
  %185 = load i64, i64* %184, align 8
  %186 = load i32*, i32** %10, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 %185
  store i32* %187, i32** %10, align 8
  store i32 1, i32* %12, align 4
  br label %188

188:                                              ; preds = %364, %166
  %189 = load i32, i32* %12, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %367

194:                                              ; preds = %188
  %195 = load i32*, i32** %6, align 8
  %196 = call i64 @get_bits1(i32* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %228

198:                                              ; preds = %194
  store i32 0, i32* %11, align 4
  br label %199

199:                                              ; preds = %224, %198
  %200 = load i32, i32* %11, align 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %227

205:                                              ; preds = %199
  %206 = load i32*, i32** %6, align 8
  %207 = call i32 @get_bits(i32* %206, i32 8)
  %208 = load i32*, i32** %8, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %207, i32* %211, align 4
  %212 = load i32*, i32** %6, align 8
  %213 = call i32 @get_bits(i32* %212, i32 8)
  %214 = load i32*, i32** %9, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 %213, i32* %217, align 4
  %218 = load i32*, i32** %6, align 8
  %219 = call i32 @get_bits(i32* %218, i32 8)
  %220 = load i32*, i32** %10, align 8
  %221 = load i32, i32* %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32 %219, i32* %223, align 4
  br label %224

224:                                              ; preds = %205
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %11, align 4
  br label %199

227:                                              ; preds = %199
  br label %342

228:                                              ; preds = %194
  %229 = load i32*, i32** %8, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i64*, i64** %231, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 0
  %234 = load i64, i64* %233, align 8
  %235 = sub i64 0, %234
  %236 = getelementptr inbounds i32, i32* %229, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %237, i32* %238, align 16
  %239 = load i32*, i32** %9, align 8
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = load i64*, i64** %241, align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 1
  %244 = load i64, i64* %243, align 8
  %245 = sub i64 0, %244
  %246 = getelementptr inbounds i32, i32* %239, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %247, i32* %248, align 4
  %249 = load i32*, i32** %10, align 8
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 1
  %252 = load i64*, i64** %251, align 8
  %253 = getelementptr inbounds i64, i64* %252, i64 2
  %254 = load i64, i64* %253, align 8
  %255 = sub i64 0, %254
  %256 = getelementptr inbounds i32, i32* %249, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %257, i32* %258, align 8
  store i32 0, i32* %11, align 4
  br label %259

259:                                              ; preds = %338, %228
  %260 = load i32, i32* %11, align 4
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp slt i32 %260, %263
  br i1 %264, label %265, label %341

265:                                              ; preds = %259
  %266 = load i32*, i32** %6, align 8
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i64 0
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @get_vlc2(i32* %266, i32 %272, i32 %278, i32 2)
  store i32 %279, i32* %18, align 4
  %280 = load i32*, i32** %6, align 8
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i64 1
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i64 1
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @get_vlc2(i32* %280, i32 %286, i32 %292, i32 2)
  store i32 %293, i32* %19, align 4
  %294 = load i32*, i32** %6, align 8
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i64 1
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i64 1
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @get_vlc2(i32* %294, i32 %300, i32 %306, i32 2)
  store i32 %307, i32* %20, align 4
  %308 = load i32, i32* %18, align 4
  %309 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %310 = load i32, i32* %309, align 16
  %311 = add nsw i32 %308, %310
  %312 = and i32 %311, 255
  %313 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %312, i32* %313, align 16
  %314 = load i32*, i32** %8, align 8
  %315 = load i32, i32* %11, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  store i32 %312, i32* %317, align 4
  %318 = load i32, i32* %19, align 4
  %319 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %318, %320
  %322 = and i32 %321, 255
  %323 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %322, i32* %323, align 4
  %324 = load i32*, i32** %9, align 8
  %325 = load i32, i32* %11, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  store i32 %322, i32* %327, align 4
  %328 = load i32, i32* %20, align 4
  %329 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %330 = load i32, i32* %329, align 8
  %331 = add nsw i32 %328, %330
  %332 = and i32 %331, 255
  %333 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %332, i32* %333, align 8
  %334 = load i32*, i32** %10, align 8
  %335 = load i32, i32* %11, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  store i32 %332, i32* %337, align 4
  br label %338

338:                                              ; preds = %265
  %339 = load i32, i32* %11, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %11, align 4
  br label %259

341:                                              ; preds = %259
  br label %342

342:                                              ; preds = %341, %227
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 1
  %345 = load i64*, i64** %344, align 8
  %346 = getelementptr inbounds i64, i64* %345, i64 0
  %347 = load i64, i64* %346, align 8
  %348 = load i32*, i32** %8, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 %347
  store i32* %349, i32** %8, align 8
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 1
  %352 = load i64*, i64** %351, align 8
  %353 = getelementptr inbounds i64, i64* %352, i64 1
  %354 = load i64, i64* %353, align 8
  %355 = load i32*, i32** %9, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 %354
  store i32* %356, i32** %9, align 8
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 1
  %359 = load i64*, i64** %358, align 8
  %360 = getelementptr inbounds i64, i64* %359, i64 2
  %361 = load i64, i64* %360, align 8
  %362 = load i32*, i32** %10, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 %361
  store i32* %363, i32** %10, align 8
  br label %364

364:                                              ; preds = %342
  %365 = load i32, i32* %12, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %12, align 4
  br label %188

367:                                              ; preds = %188
  ret void
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
