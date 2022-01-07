; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_yabause.c_YabauseQuickLoadGame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_yabause.c_YabauseQuickLoadGame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32*, %struct.TYPE_17__**, i64 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32, i32 }

@Cs2Area = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"SEGA SEGASATURN\00", align 1
@MSH2 = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YabauseQuickLoadGame() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Cs2Area, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = call %struct.TYPE_13__* @Cs2ReadUnFilteredSector(i32 150)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %2, align 8
  %19 = icmp eq %struct.TYPE_13__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %469

21:                                               ; preds = %0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %23, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %24, i64 %29
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %3, align 8
  %34 = call i32 (...) @YabauseSpeedySetup()
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @memcmp(i32* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 15)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %443

38:                                               ; preds = %21
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 224
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 24
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 225
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 16
  %47 = or i32 %42, %46
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 226
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %47, %51
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 227
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = ashr i32 %57, 11
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = srem i32 %59, 2048
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %38
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %38
  %66 = load i32*, i32** %3, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 240
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 24
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 241
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 16
  %74 = or i32 %69, %73
  %75 = load i32*, i32** %3, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 242
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = or i32 %74, %78
  %80 = load i32*, i32** %3, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 243
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %79, %82
  store i32 %83, i32* %4, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %87, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %88, i64 %93
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = call i32 @Cs2FreeBlock(%struct.TYPE_17__* %95)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %99, i64 %104
  store i32 255, i32* %105, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %201, %65
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %204

112:                                              ; preds = %108
  %113 = load i32, i32* %7, align 4
  %114 = add i32 150, %113
  %115 = call %struct.TYPE_13__* @Cs2ReadUnFilteredSector(i32 %114)
  store %struct.TYPE_13__* %115, %struct.TYPE_13__** %2, align 8
  %116 = icmp eq %struct.TYPE_13__* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 -1, i32* %1, align 4
  br label %469

118:                                              ; preds = %112
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %120, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %121, i64 %126
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %3, align 8
  %131 = load i32, i32* %5, align 4
  %132 = icmp sge i32 %131, 2048
  br i1 %132, label %133, label %153

133:                                              ; preds = %118
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %149, %133
  %135 = load i32, i32* %8, align 4
  %136 = icmp ult i32 %135, 2048
  br i1 %136, label %137, label %152

137:                                              ; preds = %134
  %138 = load i32, i32* %7, align 4
  %139 = mul i32 %138, 2048
  %140 = add i32 100671488, %139
  %141 = load i32, i32* %8, align 4
  %142 = add i32 %140, %141
  %143 = load i32*, i32** %3, align 8
  %144 = load i32, i32* %8, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @MappedMemoryWriteByte(i32 %142, i32 %147)
  br label %149

149:                                              ; preds = %137
  %150 = load i32, i32* %8, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %134

152:                                              ; preds = %134
  br label %174

153:                                              ; preds = %118
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %170, %153
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %154
  %159 = load i32, i32* %7, align 4
  %160 = mul i32 %159, 2048
  %161 = add i32 100671488, %160
  %162 = load i32, i32* %8, align 4
  %163 = add i32 %161, %162
  %164 = load i32*, i32** %3, align 8
  %165 = load i32, i32* %8, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @MappedMemoryWriteByte(i32 %163, i32 %168)
  br label %170

170:                                              ; preds = %158
  %171 = load i32, i32* %8, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %154

173:                                              ; preds = %154
  br label %174

174:                                              ; preds = %173, %152
  %175 = load i32, i32* %5, align 4
  %176 = sub nsw i32 %175, 2048
  store i32 %176, i32* %5, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 3
  store i64 0, i64* %178, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %180, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %181, i64 %186
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %187, align 8
  %189 = call i32 @Cs2FreeBlock(%struct.TYPE_17__* %188)
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %192, i64 %197
  store i32 255, i32* %198, align 4
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  store i32 0, i32* %200, align 8
  br label %201

201:                                              ; preds = %174
  %202 = load i32, i32* %7, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %108

204:                                              ; preds = %108
  %205 = load i32, i32* %6, align 4
  %206 = shl i32 %205, 11
  %207 = call i32 @SH2WriteNotify(i32 100671488, i32 %206)
  %208 = call %struct.TYPE_13__* @Cs2ReadUnFilteredSector(i32 166)
  store %struct.TYPE_13__* %208, %struct.TYPE_13__** %2, align 8
  %209 = icmp eq %struct.TYPE_13__* %208, null
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  store i32 -1, i32* %1, align 4
  br label %469

211:                                              ; preds = %204
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %213, align 8
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = sub nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %214, i64 %219
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 156
  %225 = call i32 @Cs2CopyDirRecord(i32* %224, %struct.TYPE_14__* %9)
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 3
  store i64 0, i64* %227, align 8
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 2
  %230 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %229, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %230, i64 %235
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %236, align 8
  %238 = call i32 @Cs2FreeBlock(%struct.TYPE_17__* %237)
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %241, i64 %246
  store i32 255, i32* %247, align 4
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  store i32 0, i32* %249, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 150
  %253 = call %struct.TYPE_13__* @Cs2ReadUnFilteredSector(i32 %252)
  store %struct.TYPE_13__* %253, %struct.TYPE_13__** %2, align 8
  %254 = icmp eq %struct.TYPE_13__* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %211
  store i32 -1, i32* %1, align 4
  br label %469

256:                                              ; preds = %211
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %258, align 8
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = sub nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %259, i64 %264
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  store i32* %268, i32** %3, align 8
  store i32 0, i32* %7, align 4
  br label %269

269:                                              ; preds = %280, %256
  %270 = load i32, i32* %7, align 4
  %271 = icmp ult i32 %270, 3
  br i1 %271, label %272, label %283

272:                                              ; preds = %269
  %273 = load i32*, i32** %3, align 8
  %274 = call i32 @Cs2CopyDirRecord(i32* %273, %struct.TYPE_14__* %9)
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** %3, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32* %279, i32** %3, align 8
  br label %280

280:                                              ; preds = %272
  %281 = load i32, i32* %7, align 4
  %282 = add i32 %281, 1
  store i32 %282, i32* %7, align 4
  br label %269

283:                                              ; preds = %269
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %5, align 4
  %286 = load i32, i32* %5, align 4
  %287 = ashr i32 %286, 11
  store i32 %287, i32* %6, align 4
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = srem i32 %289, 2048
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %283
  %293 = load i32, i32* %6, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %6, align 4
  br label %295

295:                                              ; preds = %292, %283
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 3
  store i64 0, i64* %297, align 8
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 2
  %300 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %299, align 8
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = sub nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %300, i64 %305
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %306, align 8
  %308 = call i32 @Cs2FreeBlock(%struct.TYPE_17__* %307)
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = sub nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %311, i64 %316
  store i32 255, i32* %317, align 4
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 0
  store i32 0, i32* %319, align 8
  store i32 0, i32* %7, align 4
  br label %320

320:                                              ; preds = %418, %295
  %321 = load i32, i32* %7, align 4
  %322 = load i32, i32* %6, align 4
  %323 = icmp ult i32 %321, %322
  br i1 %323, label %324, label %421

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 150, %326
  %328 = load i32, i32* %7, align 4
  %329 = add i32 %327, %328
  %330 = call %struct.TYPE_13__* @Cs2ReadUnFilteredSector(i32 %329)
  store %struct.TYPE_13__* %330, %struct.TYPE_13__** %2, align 8
  %331 = icmp eq %struct.TYPE_13__* %330, null
  br i1 %331, label %332, label %333

332:                                              ; preds = %324
  store i32 -1, i32* %1, align 4
  br label %469

333:                                              ; preds = %324
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 2
  %336 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %335, align 8
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = sub nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %336, i64 %341
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  store i32* %345, i32** %3, align 8
  %346 = load i32, i32* %5, align 4
  %347 = icmp sge i32 %346, 2048
  br i1 %347, label %348, label %369

348:                                              ; preds = %333
  store i32 0, i32* %8, align 4
  br label %349

349:                                              ; preds = %365, %348
  %350 = load i32, i32* %8, align 4
  %351 = icmp ult i32 %350, 2048
  br i1 %351, label %352, label %368

352:                                              ; preds = %349
  %353 = load i32, i32* %4, align 4
  %354 = load i32, i32* %7, align 4
  %355 = mul i32 %354, 2048
  %356 = add i32 %353, %355
  %357 = load i32, i32* %8, align 4
  %358 = add i32 %356, %357
  %359 = load i32*, i32** %3, align 8
  %360 = load i32, i32* %8, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @MappedMemoryWriteByte(i32 %358, i32 %363)
  br label %365

365:                                              ; preds = %352
  %366 = load i32, i32* %8, align 4
  %367 = add i32 %366, 1
  store i32 %367, i32* %8, align 4
  br label %349

368:                                              ; preds = %349
  br label %391

369:                                              ; preds = %333
  store i32 0, i32* %8, align 4
  br label %370

370:                                              ; preds = %387, %369
  %371 = load i32, i32* %8, align 4
  %372 = load i32, i32* %5, align 4
  %373 = icmp ult i32 %371, %372
  br i1 %373, label %374, label %390

374:                                              ; preds = %370
  %375 = load i32, i32* %4, align 4
  %376 = load i32, i32* %7, align 4
  %377 = mul i32 %376, 2048
  %378 = add i32 %375, %377
  %379 = load i32, i32* %8, align 4
  %380 = add i32 %378, %379
  %381 = load i32*, i32** %3, align 8
  %382 = load i32, i32* %8, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @MappedMemoryWriteByte(i32 %380, i32 %385)
  br label %387

387:                                              ; preds = %374
  %388 = load i32, i32* %8, align 4
  %389 = add i32 %388, 1
  store i32 %389, i32* %8, align 4
  br label %370

390:                                              ; preds = %370
  br label %391

391:                                              ; preds = %390, %368
  %392 = load i32, i32* %5, align 4
  %393 = sub nsw i32 %392, 2048
  store i32 %393, i32* %5, align 4
  %394 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %395 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %394, i32 0, i32 3
  store i64 0, i64* %395, align 8
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 2
  %398 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %397, align 8
  %399 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = sub nsw i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %398, i64 %403
  %405 = load %struct.TYPE_17__*, %struct.TYPE_17__** %404, align 8
  %406 = call i32 @Cs2FreeBlock(%struct.TYPE_17__* %405)
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 1
  %409 = load i32*, i32** %408, align 8
  %410 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = sub nsw i32 %412, 1
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %409, i64 %414
  store i32 255, i32* %415, align 4
  %416 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 0
  store i32 0, i32* %417, align 8
  br label %418

418:                                              ; preds = %391
  %419 = load i32, i32* %7, align 4
  %420 = add i32 %419, 1
  store i32 %420, i32* %7, align 4
  br label %320

421:                                              ; preds = %320
  %422 = load i32, i32* %4, align 4
  %423 = load i32, i32* %6, align 4
  %424 = shl i32 %423, 11
  %425 = call i32 @SH2WriteNotify(i32 %422, i32 %424)
  %426 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MSH2, align 8
  %427 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MSH2, align 8
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %427, i32 0, i32 0
  %429 = call i32 @SH2GetRegisters(%struct.TYPE_15__* %426, %struct.TYPE_16__* %428)
  %430 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MSH2, align 8
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %431, i32 0, i32 0
  store i32 100675072, i32* %432, align 8
  %433 = call i32 (...) @Cs2GetMasterStackAdress()
  %434 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MSH2, align 8
  %435 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %435, i32 0, i32 1
  %437 = load i32*, i32** %436, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 15
  store i32 %433, i32* %438, align 4
  %439 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MSH2, align 8
  %440 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MSH2, align 8
  %441 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %440, i32 0, i32 0
  %442 = call i32 @SH2SetRegisters(%struct.TYPE_15__* %439, %struct.TYPE_16__* %441)
  br label %468

443:                                              ; preds = %21
  %444 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %445 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %444, i32 0, i32 3
  store i64 0, i64* %445, align 8
  %446 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %447 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %446, i32 0, i32 2
  %448 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %447, align 8
  %449 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %450 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = sub nsw i32 %451, 1
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %448, i64 %453
  %455 = load %struct.TYPE_17__*, %struct.TYPE_17__** %454, align 8
  %456 = call i32 @Cs2FreeBlock(%struct.TYPE_17__* %455)
  %457 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %458 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %457, i32 0, i32 1
  %459 = load i32*, i32** %458, align 8
  %460 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %461 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = sub nsw i32 %462, 1
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %459, i64 %464
  store i32 255, i32* %465, align 4
  %466 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %467 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %466, i32 0, i32 0
  store i32 0, i32* %467, align 8
  store i32 -1, i32* %1, align 4
  br label %469

468:                                              ; preds = %421
  store i32 0, i32* %1, align 4
  br label %469

469:                                              ; preds = %468, %443, %332, %255, %210, %117, %20
  %470 = load i32, i32* %1, align 4
  ret i32 %470
}

declare dso_local %struct.TYPE_13__* @Cs2ReadUnFilteredSector(i32) #1

declare dso_local i32 @YabauseSpeedySetup(...) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @Cs2FreeBlock(%struct.TYPE_17__*) #1

declare dso_local i32 @MappedMemoryWriteByte(i32, i32) #1

declare dso_local i32 @SH2WriteNotify(i32, i32) #1

declare dso_local i32 @Cs2CopyDirRecord(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @SH2GetRegisters(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @Cs2GetMasterStackAdress(...) #1

declare dso_local i32 @SH2SetRegisters(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
