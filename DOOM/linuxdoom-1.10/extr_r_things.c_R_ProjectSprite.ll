; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_ProjectSprite.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_ProjectSprite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i64*, i64 }
%struct.TYPE_11__ = type { i32, i32, i64, i64, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64, i64, i64 }

@viewx = common dso_local global i32 0, align 4
@viewy = common dso_local global i32 0, align 4
@viewcos = common dso_local global i32 0, align 4
@viewsin = common dso_local global i32 0, align 4
@MINZ = common dso_local global i32 0, align 4
@projection = common dso_local global i32 0, align 4
@sprites = common dso_local global %struct.TYPE_10__* null, align 8
@FF_FRAMEMASK = common dso_local global i64 0, align 8
@ANG45 = common dso_local global i32 0, align 4
@spriteoffset = common dso_local global i64* null, align 8
@centerxfrac = common dso_local global i32 0, align 4
@FRACBITS = common dso_local global i32 0, align 4
@viewwidth = common dso_local global i32 0, align 4
@spritewidth = common dso_local global i64* null, align 8
@detailshift = common dso_local global i32 0, align 4
@spritetopoffset = common dso_local global i64* null, align 8
@viewz = common dso_local global i64 0, align 8
@FRACUNIT = common dso_local global i32 0, align 4
@MF_SHADOW = common dso_local global i32 0, align 4
@fixedcolormap = common dso_local global i32* null, align 8
@FF_FULLBRIGHT = common dso_local global i32 0, align 4
@colormaps = common dso_local global i32* null, align 8
@LIGHTSCALESHIFT = common dso_local global i32 0, align 4
@MAXLIGHTSCALE = common dso_local global i32 0, align 4
@spritelights = common dso_local global i32** null, align 8
@numsprites = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_ProjectSprite(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @viewx, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @viewy, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @viewcos, align 4
  %33 = call i32 @FixedMul(i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @viewsin, align 4
  %36 = call i32 @FixedMul(i32 %34, i32 %35)
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @MINZ, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  br label %335

45:                                               ; preds = %1
  %46 = load i32, i32* @projection, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @FixedDiv(i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @viewsin, align 4
  %51 = call i32 @FixedMul(i32 %49, i32 %50)
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @viewcos, align 4
  %55 = call i32 @FixedMul(i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %56, %57
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @abs(i32 %60) #3
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 %62, 2
  %64 = icmp sgt i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %45
  br label %335

66:                                               ; preds = %45
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sprites, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %70
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %12, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @FF_FRAMEMASK, align 8
  %79 = and i64 %77, %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %79
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %13, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %66
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @R_PointToAngle(i32 %88, i32 %91)
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = sub i32 %93, %96
  %98 = load i32, i32* @ANG45, align 4
  %99 = sdiv i32 %98, 2
  %100 = mul i32 %99, 9
  %101 = add i32 %97, %100
  %102 = lshr i32 %101, 29
  store i32 %102, i32* %15, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %14, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %16, align 8
  br label %128

117:                                              ; preds = %66
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %14, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %16, align 8
  br label %128

128:                                              ; preds = %117, %85
  %129 = load i64*, i64** @spriteoffset, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = sub nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* @centerxfrac, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @FixedMul(i32 %139, i32 %140)
  %142 = add nsw i32 %138, %141
  %143 = load i32, i32* @FRACBITS, align 4
  %144 = ashr i32 %142, %143
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @viewwidth, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %128
  br label %335

149:                                              ; preds = %128
  %150 = load i64*, i64** @spritewidth, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* @centerxfrac, align 4
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @FixedMul(i32 %160, i32 %161)
  %163 = add nsw i32 %159, %162
  %164 = load i32, i32* @FRACBITS, align 4
  %165 = ashr i32 %163, %164
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %149
  br label %335

170:                                              ; preds = %149
  %171 = call %struct.TYPE_8__* (...) @R_NewVisSprite()
  store %struct.TYPE_8__* %171, %struct.TYPE_8__** %18, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @detailshift, align 4
  %179 = shl i32 %177, %178
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 12
  store i64 %194, i64* %196, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = load i64*, i64** @spritetopoffset, align 8
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %199, %204
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 10
  store i64 %205, i64* %207, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 10
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @viewz, align 8
  %212 = sub nsw i64 %210, %211
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 11
  store i64 %212, i64* %214, align 8
  %215 = load i32, i32* %10, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %170
  br label %220

218:                                              ; preds = %170
  %219 = load i32, i32* %10, align 4
  br label %220

220:                                              ; preds = %218, %217
  %221 = phi i32 [ 0, %217 ], [ %219, %218 ]
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* @viewwidth, align 4
  %226 = icmp sge i32 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %220
  %228 = load i32, i32* @viewwidth, align 4
  %229 = sub nsw i32 %228, 1
  br label %232

230:                                              ; preds = %220
  %231 = load i32, i32* %11, align 4
  br label %232

232:                                              ; preds = %230, %227
  %233 = phi i32 [ %229, %227 ], [ %231, %230 ]
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 5
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* @FRACUNIT, align 4
  %237 = load i32, i32* %9, align 4
  %238 = call i32 @FixedDiv(i32 %236, i32 %237)
  store i32 %238, i32* %20, align 4
  %239 = load i64, i64* %16, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %254

241:                                              ; preds = %232
  %242 = load i64*, i64** @spritewidth, align 8
  %243 = load i32, i32* %14, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = sub nsw i64 %246, 1
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 9
  store i64 %247, i64* %249, align 8
  %250 = load i32, i32* %20, align 4
  %251 = sub nsw i32 0, %250
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 6
  store i32 %251, i32* %253, align 8
  br label %260

254:                                              ; preds = %232
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 9
  store i64 0, i64* %256, align 8
  %257 = load i32, i32* %20, align 4
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 6
  store i32 %257, i32* %259, align 8
  br label %260

260:                                              ; preds = %254, %241
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %10, align 4
  %265 = icmp sgt i32 %263, %264
  br i1 %265, label %266, label %281

266:                                              ; preds = %260
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %10, align 4
  %274 = sub nsw i32 %272, %273
  %275 = mul nsw i32 %269, %274
  %276 = sext i32 %275 to i64
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 9
  %279 = load i64, i64* %278, align 8
  %280 = add nsw i64 %279, %276
  store i64 %280, i64* %278, align 8
  br label %281

281:                                              ; preds = %266, %260
  %282 = load i32, i32* %14, align 4
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 7
  store i32 %282, i32* %284, align 4
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @MF_SHADOW, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %281
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 8
  store i32* null, i32** %293, align 8
  br label %335

294:                                              ; preds = %281
  %295 = load i32*, i32** @fixedcolormap, align 8
  %296 = icmp ne i32* %295, null
  br i1 %296, label %297, label %301

297:                                              ; preds = %294
  %298 = load i32*, i32** @fixedcolormap, align 8
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 8
  store i32* %298, i32** %300, align 8
  br label %334

301:                                              ; preds = %294
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = load i32, i32* @FF_FULLBRIGHT, align 4
  %306 = sext i32 %305 to i64
  %307 = and i64 %304, %306
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %301
  %310 = load i32*, i32** @colormaps, align 8
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 8
  store i32* %310, i32** %312, align 8
  br label %333

313:                                              ; preds = %301
  %314 = load i32, i32* %9, align 4
  %315 = load i32, i32* @LIGHTSCALESHIFT, align 4
  %316 = load i32, i32* @detailshift, align 4
  %317 = sub nsw i32 %315, %316
  %318 = ashr i32 %314, %317
  store i32 %318, i32* %17, align 4
  %319 = load i32, i32* %17, align 4
  %320 = load i32, i32* @MAXLIGHTSCALE, align 4
  %321 = icmp sge i32 %319, %320
  br i1 %321, label %322, label %325

322:                                              ; preds = %313
  %323 = load i32, i32* @MAXLIGHTSCALE, align 4
  %324 = sub nsw i32 %323, 1
  store i32 %324, i32* %17, align 4
  br label %325

325:                                              ; preds = %322, %313
  %326 = load i32**, i32*** @spritelights, align 8
  %327 = load i32, i32* %17, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32*, i32** %326, i64 %328
  %330 = load i32*, i32** %329, align 8
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 8
  store i32* %330, i32** %332, align 8
  br label %333

333:                                              ; preds = %325, %309
  br label %334

334:                                              ; preds = %333, %297
  br label %335

335:                                              ; preds = %44, %65, %148, %169, %334, %291
  ret void
}

declare dso_local i32 @FixedMul(i32, i32) #1

declare dso_local i32 @FixedDiv(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @R_PointToAngle(i32, i32) #1

declare dso_local %struct.TYPE_8__* @R_NewVisSprite(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
