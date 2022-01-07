; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2413.c_OPLLWriteReg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2413.c_OPLLWriteReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32**, i32, i32*, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@ym2413 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@SLOT1 = common dso_local global i64 0, align 8
@ENV_BITS = common dso_local global i32 0, align 4
@SLOT2 = common dso_local global i64 0, align 8
@ksl_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OPLLWriteReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OPLLWriteReg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 255
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 240
  switch i32 %16, label %590 [
    i32 0, label %17
    i32 16, label %313
    i32 32, label %313
    i32 48, label %483
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 15
  switch i32 %19, label %312 [
    i32 0, label %20
    i32 1, label %20
    i32 2, label %20
    i32 3, label %20
    i32 4, label %20
    i32 5, label %20
    i32 6, label %20
    i32 7, label %20
    i32 14, label %30
  ]

20:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17
  %21 = load i32, i32* %4, align 4
  %22 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 0), align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %21, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @update_instrument_zero(i32 %28)
  br label %312

30:                                               ; preds = %17
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %231

34:                                               ; preds = %30
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 1), align 8
  %36 = and i32 %35, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %116

38:                                               ; preds = %34
  %39 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 0), align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 16
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = call i32 @load_instrument(i32 6, i32 12, i32* %42)
  %44 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 0), align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 17
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = call i32 @load_instrument(i32 7, i32 14, i32* %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 7
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %5, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load i64, i64* @SLOT1, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %54
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %6, align 8
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 2), align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 7
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 4
  %60 = shl i32 %59, 2
  %61 = load i32, i32* @ENV_BITS, align 4
  %62 = sub nsw i32 %61, 2
  %63 = sub nsw i32 %62, 7
  %64 = shl i32 %60, %63
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %72, %75
  %77 = add nsw i32 %69, %76
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 0), align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 18
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = call i32 @load_instrument(i32 8, i32 16, i32* %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 8
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %5, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i64, i64* @SLOT1, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %90
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %6, align 8
  %92 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 2), align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 8
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 4
  %96 = shl i32 %95, 2
  %97 = load i32, i32* @ENV_BITS, align 4
  %98 = sub nsw i32 %97, 2
  %99 = sub nsw i32 %98, 7
  %100 = shl i32 %96, %99
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %108, %111
  %113 = add nsw i32 %105, %112
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %38, %34
  %117 = load i32, i32* %4, align 4
  %118 = and i32 %117, 16
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %116
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 6
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = load i64, i64* @SLOT1, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %125
  %127 = call i32 @KEY_ON(%struct.TYPE_8__* %126, i32 2)
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 6
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = load i64, i64* @SLOT2, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i64 %132
  %134 = call i32 @KEY_ON(%struct.TYPE_8__* %133, i32 2)
  br label %150

135:                                              ; preds = %116
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 6
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load i64, i64* @SLOT1, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 %140
  %142 = call i32 @KEY_OFF(%struct.TYPE_8__* %141, i32 -3)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 6
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = load i64, i64* @SLOT2, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %147
  %149 = call i32 @KEY_OFF(%struct.TYPE_8__* %148, i32 -3)
  br label %150

150:                                              ; preds = %135, %120
  %151 = load i32, i32* %4, align 4
  %152 = and i32 %151, 1
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i64 7
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 5
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load i64, i64* @SLOT1, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i64 %159
  %161 = call i32 @KEY_ON(%struct.TYPE_8__* %160, i32 2)
  br label %170

162:                                              ; preds = %150
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i64 7
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 5
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = load i64, i64* @SLOT1, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i64 %167
  %169 = call i32 @KEY_OFF(%struct.TYPE_8__* %168, i32 -3)
  br label %170

170:                                              ; preds = %162, %154
  %171 = load i32, i32* %4, align 4
  %172 = and i32 %171, 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %170
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i64 7
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 5
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = load i64, i64* @SLOT2, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i64 %179
  %181 = call i32 @KEY_ON(%struct.TYPE_8__* %180, i32 2)
  br label %190

182:                                              ; preds = %170
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i64 7
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 5
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = load i64, i64* @SLOT2, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i64 %187
  %189 = call i32 @KEY_OFF(%struct.TYPE_8__* %188, i32 -3)
  br label %190

190:                                              ; preds = %182, %174
  %191 = load i32, i32* %4, align 4
  %192 = and i32 %191, 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %190
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i64 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 5
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = load i64, i64* @SLOT1, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i64 %199
  %201 = call i32 @KEY_ON(%struct.TYPE_8__* %200, i32 2)
  br label %210

202:                                              ; preds = %190
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i64 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 5
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = load i64, i64* @SLOT1, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i64 %207
  %209 = call i32 @KEY_OFF(%struct.TYPE_8__* %208, i32 -3)
  br label %210

210:                                              ; preds = %202, %194
  %211 = load i32, i32* %4, align 4
  %212 = and i32 %211, 2
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %210
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i64 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 5
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = load i64, i64* @SLOT2, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i64 %219
  %221 = call i32 @KEY_ON(%struct.TYPE_8__* %220, i32 2)
  br label %230

222:                                              ; preds = %210
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i64 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 5
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = load i64, i64* @SLOT2, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i64 %227
  %229 = call i32 @KEY_OFF(%struct.TYPE_8__* %228, i32 -3)
  br label %230

230:                                              ; preds = %222, %214
  br label %309

231:                                              ; preds = %30
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 1), align 8
  %233 = and i32 %232, 32
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %266

235:                                              ; preds = %231
  %236 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 0), align 8
  %237 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 2), align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 6
  %239 = load i32, i32* %238, align 4
  %240 = ashr i32 %239, 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32*, i32** %236, i64 %241
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = call i32 @load_instrument(i32 6, i32 12, i32* %244)
  %246 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 0), align 8
  %247 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 2), align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 7
  %249 = load i32, i32* %248, align 4
  %250 = ashr i32 %249, 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %246, i64 %251
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = call i32 @load_instrument(i32 7, i32 14, i32* %254)
  %256 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 0), align 8
  %257 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 2), align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 8
  %259 = load i32, i32* %258, align 4
  %260 = ashr i32 %259, 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32*, i32** %256, i64 %261
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = call i32 @load_instrument(i32 8, i32 16, i32* %264)
  br label %266

266:                                              ; preds = %235, %231
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i64 6
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 5
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %269, align 8
  %271 = load i64, i64* @SLOT1, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i64 %271
  %273 = call i32 @KEY_OFF(%struct.TYPE_8__* %272, i32 -3)
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i64 6
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 5
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %276, align 8
  %278 = load i64, i64* @SLOT2, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i64 %278
  %280 = call i32 @KEY_OFF(%struct.TYPE_8__* %279, i32 -3)
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i64 7
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 5
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %283, align 8
  %285 = load i64, i64* @SLOT1, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i64 %285
  %287 = call i32 @KEY_OFF(%struct.TYPE_8__* %286, i32 -3)
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i64 7
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 5
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %290, align 8
  %292 = load i64, i64* @SLOT2, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i64 %292
  %294 = call i32 @KEY_OFF(%struct.TYPE_8__* %293, i32 -3)
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i64 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 5
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %297, align 8
  %299 = load i64, i64* @SLOT1, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i64 %299
  %301 = call i32 @KEY_OFF(%struct.TYPE_8__* %300, i32 -3)
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i64 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 5
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %304, align 8
  %306 = load i64, i64* @SLOT2, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i64 %306
  %308 = call i32 @KEY_OFF(%struct.TYPE_8__* %307, i32 -3)
  br label %309

309:                                              ; preds = %266, %230
  %310 = load i32, i32* %4, align 4
  %311 = and i32 %310, 63
  store i32 %311, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 1), align 8
  br label %312

312:                                              ; preds = %17, %309, %20
  br label %591

313:                                              ; preds = %2, %2
  %314 = load i32, i32* %3, align 4
  %315 = and i32 %314, 15
  store i32 %315, i32* %8, align 4
  %316 = load i32, i32* %8, align 4
  %317 = icmp sge i32 %316, 9
  br i1 %317, label %318, label %321

318:                                              ; preds = %313
  %319 = load i32, i32* %8, align 4
  %320 = sub nsw i32 %319, 9
  store i32 %320, i32* %8, align 4
  br label %321

321:                                              ; preds = %318, %313
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %323 = load i32, i32* %8, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i64 %324
  store %struct.TYPE_9__* %325, %struct.TYPE_9__** %5, align 8
  %326 = load i32, i32* %3, align 4
  %327 = and i32 %326, 16
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %321
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = and i32 %332, 3840
  %334 = load i32, i32* %4, align 4
  %335 = or i32 %333, %334
  store i32 %335, i32* %7, align 4
  br label %379

336:                                              ; preds = %321
  %337 = load i32, i32* %4, align 4
  %338 = and i32 %337, 15
  %339 = shl i32 %338, 8
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = and i32 %342, 255
  %344 = or i32 %339, %343
  store i32 %344, i32* %7, align 4
  %345 = load i32, i32* %4, align 4
  %346 = and i32 %345, 16
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %361

348:                                              ; preds = %336
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 5
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %350, align 8
  %352 = load i64, i64* @SLOT1, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i64 %352
  %354 = call i32 @KEY_ON(%struct.TYPE_8__* %353, i32 1)
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 5
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %356, align 8
  %358 = load i64, i64* @SLOT2, align 8
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i64 %358
  %360 = call i32 @KEY_ON(%struct.TYPE_8__* %359, i32 1)
  br label %374

361:                                              ; preds = %336
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 5
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %363, align 8
  %365 = load i64, i64* @SLOT1, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i64 %365
  %367 = call i32 @KEY_OFF(%struct.TYPE_8__* %366, i32 -2)
  %368 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 5
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %369, align 8
  %371 = load i64, i64* @SLOT2, align 8
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i64 %371
  %373 = call i32 @KEY_OFF(%struct.TYPE_8__* %372, i32 -2)
  br label %374

374:                                              ; preds = %361, %348
  %375 = load i32, i32* %4, align 4
  %376 = and i32 %375, 32
  %377 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 2
  store i32 %376, i32* %378, align 8
  br label %379

379:                                              ; preds = %374, %329
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %7, align 4
  %384 = icmp ne i32 %382, %383
  br i1 %384, label %385, label %482

385:                                              ; preds = %379
  %386 = load i32, i32* %7, align 4
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 1
  store i32 %386, i32* %388, align 4
  %389 = load i32, i32* %7, align 4
  %390 = and i32 %389, 3840
  %391 = ashr i32 %390, 8
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 3
  store i32 %391, i32* %393, align 4
  %394 = load i32*, i32** @ksl_tab, align 8
  %395 = load i32, i32* %7, align 4
  %396 = ashr i32 %395, 5
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %394, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 0
  store i32 %399, i32* %401, align 8
  %402 = load i32, i32* %7, align 4
  %403 = mul nsw i32 %402, 2
  store i32 %403, i32* %7, align 4
  %404 = load i32, i32* %7, align 4
  %405 = and i32 %404, 7168
  %406 = ashr i32 %405, 10
  store i32 %406, i32* %9, align 4
  %407 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 3), align 8
  %408 = load i32, i32* %7, align 4
  %409 = and i32 %408, 1023
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %407, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* %9, align 4
  %414 = sub nsw i32 7, %413
  %415 = ashr i32 %412, %414
  %416 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 4
  store i32 %415, i32* %417, align 8
  %418 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %418, i32 0, i32 5
  %420 = load %struct.TYPE_8__*, %struct.TYPE_8__** %419, align 8
  %421 = load i64, i64* @SLOT1, align 8
  %422 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i32 0, i32 5
  %430 = load %struct.TYPE_8__*, %struct.TYPE_8__** %429, align 8
  %431 = load i64, i64* @SLOT1, align 8
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 4
  %435 = ashr i32 %427, %434
  %436 = add nsw i32 %424, %435
  %437 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %437, i32 0, i32 5
  %439 = load %struct.TYPE_8__*, %struct.TYPE_8__** %438, align 8
  %440 = load i64, i64* @SLOT1, align 8
  %441 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %439, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 1
  store i32 %436, i32* %442, align 4
  %443 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %443, i32 0, i32 5
  %445 = load %struct.TYPE_8__*, %struct.TYPE_8__** %444, align 8
  %446 = load i64, i64* @SLOT2, align 8
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %445, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 5
  %455 = load %struct.TYPE_8__*, %struct.TYPE_8__** %454, align 8
  %456 = load i64, i64* @SLOT2, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 4
  %460 = ashr i32 %452, %459
  %461 = add nsw i32 %449, %460
  %462 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %462, i32 0, i32 5
  %464 = load %struct.TYPE_8__*, %struct.TYPE_8__** %463, align 8
  %465 = load i64, i64* @SLOT2, align 8
  %466 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %464, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i32 0, i32 1
  store i32 %461, i32* %467, align 4
  %468 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %469 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %469, i32 0, i32 5
  %471 = load %struct.TYPE_8__*, %struct.TYPE_8__** %470, align 8
  %472 = load i64, i64* @SLOT1, align 8
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %471, i64 %472
  %474 = call i32 @CALC_FCSLOT(%struct.TYPE_9__* %468, %struct.TYPE_8__* %473)
  %475 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %476 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %476, i32 0, i32 5
  %478 = load %struct.TYPE_8__*, %struct.TYPE_8__** %477, align 8
  %479 = load i64, i64* @SLOT2, align 8
  %480 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %478, i64 %479
  %481 = call i32 @CALC_FCSLOT(%struct.TYPE_9__* %475, %struct.TYPE_8__* %480)
  br label %482

482:                                              ; preds = %385, %379
  br label %591

483:                                              ; preds = %2
  %484 = load i32, i32* %3, align 4
  %485 = and i32 %484, 15
  store i32 %485, i32* %10, align 4
  %486 = load i32, i32* %10, align 4
  %487 = icmp sge i32 %486, 9
  br i1 %487, label %488, label %491

488:                                              ; preds = %483
  %489 = load i32, i32* %10, align 4
  %490 = sub nsw i32 %489, 9
  store i32 %490, i32* %10, align 4
  br label %491

491:                                              ; preds = %488, %483
  %492 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 4), align 8
  %493 = load i32, i32* %10, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %492, i64 %494
  store %struct.TYPE_9__* %495, %struct.TYPE_9__** %5, align 8
  %496 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %497 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i32 0, i32 5
  %498 = load %struct.TYPE_8__*, %struct.TYPE_8__** %497, align 8
  %499 = load i64, i64* @SLOT2, align 8
  %500 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %498, i64 %499
  store %struct.TYPE_8__* %500, %struct.TYPE_8__** %6, align 8
  %501 = load i32, i32* %4, align 4
  %502 = and i32 %501, 15
  %503 = shl i32 %502, 2
  %504 = load i32, i32* @ENV_BITS, align 4
  %505 = sub nsw i32 %504, 2
  %506 = sub nsw i32 %505, 7
  %507 = shl i32 %503, %506
  %508 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %509 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %508, i32 0, i32 0
  store i32 %507, i32* %509, align 4
  %510 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %514 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %517 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 4
  %519 = ashr i32 %515, %518
  %520 = add nsw i32 %512, %519
  %521 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %522 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %521, i32 0, i32 1
  store i32 %520, i32* %522, align 4
  %523 = load i32, i32* %10, align 4
  %524 = icmp sge i32 %523, 6
  br i1 %524, label %525, label %561

525:                                              ; preds = %491
  %526 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 1), align 8
  %527 = and i32 %526, 32
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %561

529:                                              ; preds = %525
  %530 = load i32, i32* %10, align 4
  %531 = icmp sge i32 %530, 7
  br i1 %531, label %532, label %560

532:                                              ; preds = %529
  %533 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %534 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %533, i32 0, i32 5
  %535 = load %struct.TYPE_8__*, %struct.TYPE_8__** %534, align 8
  %536 = load i64, i64* @SLOT1, align 8
  %537 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %535, i64 %536
  store %struct.TYPE_8__* %537, %struct.TYPE_8__** %6, align 8
  %538 = load i32, i32* %4, align 4
  %539 = ashr i32 %538, 4
  %540 = shl i32 %539, 2
  %541 = load i32, i32* @ENV_BITS, align 4
  %542 = sub nsw i32 %541, 2
  %543 = sub nsw i32 %542, 7
  %544 = shl i32 %540, %543
  %545 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %546 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %545, i32 0, i32 0
  store i32 %544, i32* %546, align 4
  %547 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %548 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %551 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 8
  %553 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %554 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 4
  %556 = ashr i32 %552, %555
  %557 = add nsw i32 %549, %556
  %558 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %559 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %558, i32 0, i32 1
  store i32 %557, i32* %559, align 4
  br label %560

560:                                              ; preds = %532, %529
  br label %589

561:                                              ; preds = %525, %491
  %562 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 2), align 8
  %563 = load i32, i32* %10, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i32, i32* %562, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = and i32 %566, 240
  %568 = load i32, i32* %4, align 4
  %569 = and i32 %568, 240
  %570 = icmp ne i32 %567, %569
  br i1 %570, label %571, label %588

571:                                              ; preds = %561
  %572 = load i32, i32* %4, align 4
  %573 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 2), align 8
  %574 = load i32, i32* %10, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i32, i32* %573, i64 %575
  store i32 %572, i32* %576, align 4
  %577 = load i32, i32* %10, align 4
  %578 = load i32, i32* %10, align 4
  %579 = mul nsw i32 %578, 2
  %580 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ym2413, i32 0, i32 0), align 8
  %581 = load i32, i32* %4, align 4
  %582 = ashr i32 %581, 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32*, i32** %580, i64 %583
  %585 = load i32*, i32** %584, align 8
  %586 = getelementptr inbounds i32, i32* %585, i64 0
  %587 = call i32 @load_instrument(i32 %577, i32 %579, i32* %586)
  br label %588

588:                                              ; preds = %571, %561
  br label %589

589:                                              ; preds = %588, %560
  br label %591

590:                                              ; preds = %2
  br label %591

591:                                              ; preds = %590, %589, %482, %312
  ret void
}

declare dso_local i32 @update_instrument_zero(i32) #1

declare dso_local i32 @load_instrument(i32, i32, i32*) #1

declare dso_local i32 @KEY_ON(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @KEY_OFF(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @CALC_FCSLOT(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
