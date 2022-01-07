; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/ogg/extr_framing.c_ogg_stream_flush_i.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/ogg/extr_framing.c_ogg_stream_flush_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i32*, i32*, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32*, i32, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"OggS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32)* @ogg_stream_flush_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_stream_flush_i(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 255
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %29

25:                                               ; preds = %4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i32 [ 255, %24 ], [ %28, %25 ]
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i32 -1, i32* %15, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = call i64 @ogg_stream_check(%struct.TYPE_7__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %382

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %382

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %63, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 255
  %58 = icmp slt i32 %57, 255
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %66

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %45

66:                                               ; preds = %59, %45
  br label %122

67:                                               ; preds = %39
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %114, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %117

72:                                               ; preds = %68
  %73 = load i64, i64* %14, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp sgt i64 %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* %17, align 4
  %79 = icmp sge i32 %78, 4
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 1, i32* %8, align 4
  br label %117

81:                                               ; preds = %77, %72
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 255
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %14, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %14, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 255
  %101 = icmp slt i32 %100, 255
  br i1 %101, label %102, label %112

102:                                              ; preds = %81
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  store i32 %111, i32* %17, align 4
  br label %113

112:                                              ; preds = %81
  store i32 0, i32* %17, align 4
  br label %113

113:                                              ; preds = %112, %102
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %68

117:                                              ; preds = %80, %68
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %118, 255
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 1, i32* %8, align 4
  br label %121

121:                                              ; preds = %120, %117
  br label %122

122:                                              ; preds = %121, %66
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  store i32 0, i32* %5, align 4
  br label %382

126:                                              ; preds = %122
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @memcpy(i32* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 4
  store i32 0, i32* %134, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 5
  store i32 0, i32* %138, align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 256
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %126
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 5
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, 1
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %146, %126
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 5
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, 2
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %158, %153
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 10
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %165
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 5
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, 4
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %176, %170, %165
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  store i32 1, i32* %185, align 4
  store i32 6, i32* %10, align 4
  br label %186

186:                                              ; preds = %202, %183
  %187 = load i32, i32* %10, align 4
  %188 = icmp slt i32 %187, 14
  br i1 %188, label %189, label %205

189:                                              ; preds = %186
  %190 = load i32, i32* %15, align 4
  %191 = and i32 %190, 255
  %192 = trunc i32 %191 to i8
  %193 = zext i8 %192 to i32
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %193, i32* %199, align 4
  %200 = load i32, i32* %15, align 4
  %201 = ashr i32 %200, 8
  store i32 %201, i32* %15, align 4
  br label %202

202:                                              ; preds = %189
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %10, align 4
  br label %186

205:                                              ; preds = %186
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %18, align 8
  store i32 14, i32* %10, align 4
  br label %209

209:                                              ; preds = %225, %205
  %210 = load i32, i32* %10, align 4
  %211 = icmp slt i32 %210, 18
  br i1 %211, label %212, label %228

212:                                              ; preds = %209
  %213 = load i64, i64* %18, align 8
  %214 = and i64 %213, 255
  %215 = trunc i64 %214 to i8
  %216 = zext i8 %215 to i32
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 4
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %216, i32* %222, align 4
  %223 = load i64, i64* %18, align 8
  %224 = ashr i64 %223, 8
  store i64 %224, i64* %18, align 8
  br label %225

225:                                              ; preds = %212
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %10, align 4
  br label %209

228:                                              ; preds = %209
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %231, -1
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 6
  store i32 0, i32* %235, align 8
  br label %236

236:                                              ; preds = %233, %228
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 8
  %241 = sext i32 %239 to i64
  store i64 %241, i64* %19, align 8
  store i32 18, i32* %10, align 4
  br label %242

242:                                              ; preds = %258, %236
  %243 = load i32, i32* %10, align 4
  %244 = icmp slt i32 %243, 22
  br i1 %244, label %245, label %261

245:                                              ; preds = %242
  %246 = load i64, i64* %19, align 8
  %247 = and i64 %246, 255
  %248 = trunc i64 %247 to i8
  %249 = zext i8 %248 to i32
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %249, i32* %255, align 4
  %256 = load i64, i64* %19, align 8
  %257 = ashr i64 %256, 8
  store i64 %257, i64* %19, align 8
  br label %258

258:                                              ; preds = %245
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %10, align 4
  br label %242

261:                                              ; preds = %242
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 4
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 22
  store i32 0, i32* %265, align 4
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 4
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 23
  store i32 0, i32* %269, align 4
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 4
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 24
  store i32 0, i32* %273, align 4
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 4
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 25
  store i32 0, i32* %277, align 4
  %278 = load i32, i32* %11, align 4
  %279 = and i32 %278, 255
  %280 = trunc i32 %279 to i8
  %281 = zext i8 %280 to i32
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 4
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 26
  store i32 %281, i32* %285, align 4
  store i32 0, i32* %10, align 4
  br label %286

286:                                              ; preds = %310, %261
  %287 = load i32, i32* %10, align 4
  %288 = load i32, i32* %11, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %313

290:                                              ; preds = %286
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 2
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %10, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, 255
  %299 = trunc i32 %298 to i8
  %300 = zext i8 %299 to i32
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 4
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, 27
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %303, i64 %306
  store i32 %300, i32* %307, align 4
  %308 = load i32, i32* %13, align 4
  %309 = add nsw i32 %308, %300
  store i32 %309, i32* %13, align 4
  br label %310

310:                                              ; preds = %290
  %311 = load i32, i32* %10, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %10, align 4
  br label %286

313:                                              ; preds = %286
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 4
  %316 = load i32*, i32** %315, align 8
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 0
  store i32* %316, i32** %318, align 8
  %319 = load i32, i32* %11, align 4
  %320 = add nsw i32 %319, 27
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 7
  store i32 %320, i32* %322, align 4
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 1
  store i32 %320, i32* %324, align 8
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 9
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 8
  %330 = load i64, i64* %329, align 8
  %331 = add nsw i64 %327, %330
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 3
  store i64 %331, i64* %333, align 8
  %334 = load i32, i32* %13, align 4
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 2
  store i32 %334, i32* %336, align 4
  %337 = load i32, i32* %11, align 4
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = sub nsw i32 %340, %337
  store i32 %341, i32* %339, align 8
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 2
  %344 = load i32*, i32** %343, align 8
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 2
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %11, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = sext i32 %353 to i64
  %355 = mul i64 %354, 4
  %356 = trunc i64 %355 to i32
  %357 = call i32 @memmove(i32* %344, i32* %350, i32 %356)
  %358 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 3
  %360 = load i32*, i32** %359, align 8
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 3
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %11, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = sext i32 %369 to i64
  %371 = mul i64 %370, 4
  %372 = trunc i64 %371 to i32
  %373 = call i32 @memmove(i32* %360, i32* %366, i32 %372)
  %374 = load i32, i32* %13, align 4
  %375 = sext i32 %374 to i64
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 8
  %378 = load i64, i64* %377, align 8
  %379 = add nsw i64 %378, %375
  store i64 %379, i64* %377, align 8
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %381 = call i32 @ogg_page_checksum_set(%struct.TYPE_8__* %380)
  store i32 1, i32* %5, align 4
  br label %382

382:                                              ; preds = %313, %125, %38, %34
  %383 = load i32, i32* %5, align 4
  ret i32 %383
}

declare dso_local i64 @ogg_stream_check(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @ogg_page_checksum_set(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
