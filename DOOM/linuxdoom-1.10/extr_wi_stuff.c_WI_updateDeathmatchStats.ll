; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_updateDeathmatchStats.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_updateDeathmatchStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@acceleratestage = common dso_local global i64 0, align 8
@dm_state = common dso_local global i32 0, align 4
@MAXPLAYERS = common dso_local global i32 0, align 4
@playeringame = common dso_local global i64* null, align 8
@plrs = common dso_local global %struct.TYPE_2__* null, align 8
@dm_frags = common dso_local global i32** null, align 8
@dm_totals = common dso_local global i32* null, align 8
@sfx_barexp = common dso_local global i32 0, align 4
@bcnt = common dso_local global i32 0, align 4
@sfx_pistol = common dso_local global i32 0, align 4
@sfx_slop = common dso_local global i32 0, align 4
@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@cnt_pause = common dso_local global i64 0, align 8
@TICRATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_updateDeathmatchStats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @WI_updateAnimatedBack()
  %5 = load i64, i64* @acceleratestage, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %71

7:                                                ; preds = %0
  %8 = load i32, i32* @dm_state, align 4
  %9 = icmp ne i32 %8, 4
  br i1 %9, label %10, label %71

10:                                               ; preds = %7
  store i64 0, i64* @acceleratestage, align 8
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %65, %10
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @MAXPLAYERS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %68

15:                                               ; preds = %11
  %16 = load i64*, i64** @playeringame, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %54, %22
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @MAXPLAYERS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load i64*, i64** @playeringame, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plrs, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32**, i32*** @dm_frags, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %44, i32* %52, align 4
  br label %53

53:                                               ; preds = %34, %27
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %23

57:                                               ; preds = %23
  %58 = load i32, i32* %1, align 4
  %59 = call i32 @WI_fragSum(i32 %58)
  %60 = load i32*, i32** @dm_totals, align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %57, %15
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  br label %11

68:                                               ; preds = %11
  %69 = load i32, i32* @sfx_barexp, align 4
  %70 = call i32 @S_StartSound(i32 0, i32 %69)
  store i32 4, i32* @dm_state, align 4
  br label %71

71:                                               ; preds = %68, %7, %0
  %72 = load i32, i32* @dm_state, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %249

74:                                               ; preds = %71
  %75 = load i32, i32* @bcnt, align 4
  %76 = and i32 %75, 3
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @sfx_pistol, align 4
  %80 = call i32 @S_StartSound(i32 0, i32 %79)
  br label %81

81:                                               ; preds = %78, %74
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %82

82:                                               ; preds = %237, %81
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @MAXPLAYERS, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %240

86:                                               ; preds = %82
  %87 = load i64*, i64** @playeringame, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %236

93:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %202, %93
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @MAXPLAYERS, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %205

98:                                               ; preds = %94
  %99 = load i64*, i64** @playeringame, align 8
  %100 = load i32, i32* %2, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %201

105:                                              ; preds = %98
  %106 = load i32**, i32*** @dm_frags, align 8
  %107 = load i32, i32* %1, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plrs, align 8
  %116 = load i32, i32* %1, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %114, %124
  br i1 %125, label %126, label %201

126:                                              ; preds = %105
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plrs, align 8
  %128 = load i32, i32* %1, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %2, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %126
  %139 = load i32**, i32*** @dm_frags, align 8
  %140 = load i32, i32* %1, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %2, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 4
  br label %160

149:                                              ; preds = %126
  %150 = load i32**, i32*** @dm_frags, align 8
  %151 = load i32, i32* %1, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %2, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %149, %138
  %161 = load i32**, i32*** @dm_frags, align 8
  %162 = load i32, i32* %1, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %2, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp sgt i32 %169, 99
  br i1 %170, label %171, label %180

171:                                              ; preds = %160
  %172 = load i32**, i32*** @dm_frags, align 8
  %173 = load i32, i32* %1, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %172, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %2, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 99, i32* %179, align 4
  br label %180

180:                                              ; preds = %171, %160
  %181 = load i32**, i32*** @dm_frags, align 8
  %182 = load i32, i32* %1, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %2, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %189, -99
  br i1 %190, label %191, label %200

191:                                              ; preds = %180
  %192 = load i32**, i32*** @dm_frags, align 8
  %193 = load i32, i32* %1, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32*, i32** %192, i64 %194
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %2, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 -99, i32* %199, align 4
  br label %200

200:                                              ; preds = %191, %180
  store i32 1, i32* %3, align 4
  br label %201

201:                                              ; preds = %200, %105, %98
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %2, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %2, align 4
  br label %94

205:                                              ; preds = %94
  %206 = load i32, i32* %1, align 4
  %207 = call i32 @WI_fragSum(i32 %206)
  %208 = load i32*, i32** @dm_totals, align 8
  %209 = load i32, i32* %1, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %207, i32* %211, align 4
  %212 = load i32*, i32** @dm_totals, align 8
  %213 = load i32, i32* %1, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = icmp sgt i32 %216, 99
  br i1 %217, label %218, label %223

218:                                              ; preds = %205
  %219 = load i32*, i32** @dm_totals, align 8
  %220 = load i32, i32* %1, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 99, i32* %222, align 4
  br label %223

223:                                              ; preds = %218, %205
  %224 = load i32*, i32** @dm_totals, align 8
  %225 = load i32, i32* %1, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %228, -99
  br i1 %229, label %230, label %235

230:                                              ; preds = %223
  %231 = load i32*, i32** @dm_totals, align 8
  %232 = load i32, i32* %1, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 -99, i32* %234, align 4
  br label %235

235:                                              ; preds = %230, %223
  br label %236

236:                                              ; preds = %235, %86
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %1, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %1, align 4
  br label %82

240:                                              ; preds = %82
  %241 = load i32, i32* %3, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* @sfx_barexp, align 4
  %245 = call i32 @S_StartSound(i32 0, i32 %244)
  %246 = load i32, i32* @dm_state, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* @dm_state, align 4
  br label %248

248:                                              ; preds = %243, %240
  br label %282

249:                                              ; preds = %71
  %250 = load i32, i32* @dm_state, align 4
  %251 = icmp eq i32 %250, 4
  br i1 %251, label %252, label %267

252:                                              ; preds = %249
  %253 = load i64, i64* @acceleratestage, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %252
  %256 = load i32, i32* @sfx_slop, align 4
  %257 = call i32 @S_StartSound(i32 0, i32 %256)
  %258 = load i64, i64* @gamemode, align 8
  %259 = load i64, i64* @commercial, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %255
  %262 = call i32 (...) @WI_initNoState()
  br label %265

263:                                              ; preds = %255
  %264 = call i32 (...) @WI_initShowNextLoc()
  br label %265

265:                                              ; preds = %263, %261
  br label %266

266:                                              ; preds = %265, %252
  br label %281

267:                                              ; preds = %249
  %268 = load i32, i32* @dm_state, align 4
  %269 = and i32 %268, 1
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %280

271:                                              ; preds = %267
  %272 = load i64, i64* @cnt_pause, align 8
  %273 = add nsw i64 %272, -1
  store i64 %273, i64* @cnt_pause, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %271
  %276 = load i32, i32* @dm_state, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* @dm_state, align 4
  %278 = load i64, i64* @TICRATE, align 8
  store i64 %278, i64* @cnt_pause, align 8
  br label %279

279:                                              ; preds = %275, %271
  br label %280

280:                                              ; preds = %279, %267
  br label %281

281:                                              ; preds = %280, %266
  br label %282

282:                                              ; preds = %281, %248
  ret void
}

declare dso_local i32 @WI_updateAnimatedBack(...) #1

declare dso_local i32 @WI_fragSum(i32) #1

declare dso_local i32 @S_StartSound(i32, i32) #1

declare dso_local i32 @WI_initNoState(...) #1

declare dso_local i32 @WI_initShowNextLoc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
