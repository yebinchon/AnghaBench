; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_switch.c_P_UseSpecialLine.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_switch.c_P_UseSpecialLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@ML_SECRET = common dso_local global i32 0, align 4
@build8 = common dso_local global i32 0, align 4
@raiseAndChange = common dso_local global i32 0, align 4
@raiseFloorToNearest = common dso_local global i32 0, align 4
@raiseToNearestAndChange = common dso_local global i32 0, align 4
@downWaitUpStay = common dso_local global i32 0, align 4
@lowerFloorToLowest = common dso_local global i32 0, align 4
@normal = common dso_local global i32 0, align 4
@lowerToFloor = common dso_local global i32 0, align 4
@turboLower = common dso_local global i32 0, align 4
@crushAndRaise = common dso_local global i32 0, align 4
@close = common dso_local global i32 0, align 4
@raiseFloorCrush = common dso_local global i32 0, align 4
@raiseFloor = common dso_local global i32 0, align 4
@lowerFloor = common dso_local global i32 0, align 4
@open = common dso_local global i32 0, align 4
@blazeRaise = common dso_local global i32 0, align 4
@blazeOpen = common dso_local global i32 0, align 4
@blazeClose = common dso_local global i32 0, align 4
@blazeDWUS = common dso_local global i32 0, align 4
@turbo16 = common dso_local global i32 0, align 4
@raiseFloorTurbo = common dso_local global i32 0, align 4
@raiseFloor512 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_UseSpecialLine(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %15 [
    i32 124, label %14
  ]

14:                                               ; preds = %10
  br label %16

15:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %470

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %3
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ML_SECRET, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %470

30:                                               ; preds = %22
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %35 [
    i32 1, label %34
    i32 32, label %34
    i32 33, label %34
    i32 34, label %34
  ]

34:                                               ; preds = %30, %30, %30, %30
  br label %36

35:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %470

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36, %17
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %469 [
    i32 1, label %41
    i32 26, label %41
    i32 27, label %41
    i32 28, label %41
    i32 31, label %41
    i32 32, label %41
    i32 33, label %41
    i32 34, label %41
    i32 117, label %41
    i32 118, label %41
    i32 7, label %45
    i32 9, label %54
    i32 11, label %62
    i32 14, label %66
    i32 15, label %75
    i32 18, label %84
    i32 20, label %93
    i32 21, label %102
    i32 23, label %111
    i32 29, label %120
    i32 41, label %129
    i32 71, label %138
    i32 49, label %147
    i32 50, label %156
    i32 51, label %165
    i32 55, label %169
    i32 101, label %178
    i32 102, label %187
    i32 103, label %196
    i32 111, label %205
    i32 112, label %214
    i32 113, label %223
    i32 122, label %232
    i32 127, label %241
    i32 131, label %250
    i32 133, label %259
    i32 135, label %259
    i32 137, label %259
    i32 140, label %269
    i32 42, label %278
    i32 43, label %287
    i32 45, label %296
    i32 60, label %305
    i32 61, label %314
    i32 62, label %323
    i32 63, label %332
    i32 64, label %341
    i32 66, label %350
    i32 67, label %359
    i32 65, label %368
    i32 68, label %377
    i32 69, label %386
    i32 70, label %395
    i32 114, label %404
    i32 115, label %413
    i32 116, label %422
    i32 123, label %431
    i32 132, label %440
    i32 99, label %449
    i32 134, label %449
    i32 136, label %449
    i32 138, label %459
    i32 139, label %464
  ]

41:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37, %37
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = call i32 @EV_VerticalDoor(%struct.TYPE_18__* %42, %struct.TYPE_17__* %43)
  br label %469

45:                                               ; preds = %37
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = load i32, i32* @build8, align 4
  %48 = call i32 @EV_BuildStairs(%struct.TYPE_18__* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %51, i32 0)
  br label %53

53:                                               ; preds = %50, %45
  br label %469

54:                                               ; preds = %37
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = call i32 @EV_DoDonut(%struct.TYPE_18__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %59, i32 0)
  br label %61

61:                                               ; preds = %58, %54
  br label %469

62:                                               ; preds = %37
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %63, i32 0)
  %65 = call i32 (...) @G_ExitLevel()
  br label %469

66:                                               ; preds = %37
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %68 = load i32, i32* @raiseAndChange, align 4
  %69 = call i32 @EV_DoPlat(%struct.TYPE_18__* %67, i32 %68, i32 32)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %72, i32 0)
  br label %74

74:                                               ; preds = %71, %66
  br label %469

75:                                               ; preds = %37
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = load i32, i32* @raiseAndChange, align 4
  %78 = call i32 @EV_DoPlat(%struct.TYPE_18__* %76, i32 %77, i32 24)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %81, i32 0)
  br label %83

83:                                               ; preds = %80, %75
  br label %469

84:                                               ; preds = %37
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = load i32, i32* @raiseFloorToNearest, align 4
  %87 = call i32 @EV_DoFloor(%struct.TYPE_18__* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %91 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %90, i32 0)
  br label %92

92:                                               ; preds = %89, %84
  br label %469

93:                                               ; preds = %37
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %95 = load i32, i32* @raiseToNearestAndChange, align 4
  %96 = call i32 @EV_DoPlat(%struct.TYPE_18__* %94, i32 %95, i32 0)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %99, i32 0)
  br label %101

101:                                              ; preds = %98, %93
  br label %469

102:                                              ; preds = %37
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = load i32, i32* @downWaitUpStay, align 4
  %105 = call i32 @EV_DoPlat(%struct.TYPE_18__* %103, i32 %104, i32 0)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %109 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %108, i32 0)
  br label %110

110:                                              ; preds = %107, %102
  br label %469

111:                                              ; preds = %37
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %113 = load i32, i32* @lowerFloorToLowest, align 4
  %114 = call i32 @EV_DoFloor(%struct.TYPE_18__* %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %118 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %117, i32 0)
  br label %119

119:                                              ; preds = %116, %111
  br label %469

120:                                              ; preds = %37
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = load i32, i32* @normal, align 4
  %123 = call i32 @EV_DoDoor(%struct.TYPE_18__* %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %127 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %126, i32 0)
  br label %128

128:                                              ; preds = %125, %120
  br label %469

129:                                              ; preds = %37
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %131 = load i32, i32* @lowerToFloor, align 4
  %132 = call i32 @EV_DoCeiling(%struct.TYPE_18__* %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %136 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %135, i32 0)
  br label %137

137:                                              ; preds = %134, %129
  br label %469

138:                                              ; preds = %37
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %140 = load i32, i32* @turboLower, align 4
  %141 = call i32 @EV_DoFloor(%struct.TYPE_18__* %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %145 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %144, i32 0)
  br label %146

146:                                              ; preds = %143, %138
  br label %469

147:                                              ; preds = %37
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %149 = load i32, i32* @crushAndRaise, align 4
  %150 = call i32 @EV_DoCeiling(%struct.TYPE_18__* %148, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %154 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %153, i32 0)
  br label %155

155:                                              ; preds = %152, %147
  br label %469

156:                                              ; preds = %37
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %158 = load i32, i32* @close, align 4
  %159 = call i32 @EV_DoDoor(%struct.TYPE_18__* %157, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %163 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %162, i32 0)
  br label %164

164:                                              ; preds = %161, %156
  br label %469

165:                                              ; preds = %37
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %167 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %166, i32 0)
  %168 = call i32 (...) @G_SecretExitLevel()
  br label %469

169:                                              ; preds = %37
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %171 = load i32, i32* @raiseFloorCrush, align 4
  %172 = call i32 @EV_DoFloor(%struct.TYPE_18__* %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %176 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %175, i32 0)
  br label %177

177:                                              ; preds = %174, %169
  br label %469

178:                                              ; preds = %37
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %180 = load i32, i32* @raiseFloor, align 4
  %181 = call i32 @EV_DoFloor(%struct.TYPE_18__* %179, i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %185 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %184, i32 0)
  br label %186

186:                                              ; preds = %183, %178
  br label %469

187:                                              ; preds = %37
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %189 = load i32, i32* @lowerFloor, align 4
  %190 = call i32 @EV_DoFloor(%struct.TYPE_18__* %188, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %194 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %193, i32 0)
  br label %195

195:                                              ; preds = %192, %187
  br label %469

196:                                              ; preds = %37
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %198 = load i32, i32* @open, align 4
  %199 = call i32 @EV_DoDoor(%struct.TYPE_18__* %197, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %203 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %202, i32 0)
  br label %204

204:                                              ; preds = %201, %196
  br label %469

205:                                              ; preds = %37
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %207 = load i32, i32* @blazeRaise, align 4
  %208 = call i32 @EV_DoDoor(%struct.TYPE_18__* %206, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %212 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %211, i32 0)
  br label %213

213:                                              ; preds = %210, %205
  br label %469

214:                                              ; preds = %37
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %216 = load i32, i32* @blazeOpen, align 4
  %217 = call i32 @EV_DoDoor(%struct.TYPE_18__* %215, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %221 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %220, i32 0)
  br label %222

222:                                              ; preds = %219, %214
  br label %469

223:                                              ; preds = %37
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %225 = load i32, i32* @blazeClose, align 4
  %226 = call i32 @EV_DoDoor(%struct.TYPE_18__* %224, i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %230 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %229, i32 0)
  br label %231

231:                                              ; preds = %228, %223
  br label %469

232:                                              ; preds = %37
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %234 = load i32, i32* @blazeDWUS, align 4
  %235 = call i32 @EV_DoPlat(%struct.TYPE_18__* %233, i32 %234, i32 0)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %239 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %238, i32 0)
  br label %240

240:                                              ; preds = %237, %232
  br label %469

241:                                              ; preds = %37
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %243 = load i32, i32* @turbo16, align 4
  %244 = call i32 @EV_BuildStairs(%struct.TYPE_18__* %242, i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %248 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %247, i32 0)
  br label %249

249:                                              ; preds = %246, %241
  br label %469

250:                                              ; preds = %37
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %252 = load i32, i32* @raiseFloorTurbo, align 4
  %253 = call i32 @EV_DoFloor(%struct.TYPE_18__* %251, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %257 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %256, i32 0)
  br label %258

258:                                              ; preds = %255, %250
  br label %469

259:                                              ; preds = %37, %37, %37
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %261 = load i32, i32* @blazeOpen, align 4
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %263 = call i32 @EV_DoLockedDoor(%struct.TYPE_18__* %260, i32 %261, %struct.TYPE_17__* %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %267 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %266, i32 0)
  br label %268

268:                                              ; preds = %265, %259
  br label %469

269:                                              ; preds = %37
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %271 = load i32, i32* @raiseFloor512, align 4
  %272 = call i32 @EV_DoFloor(%struct.TYPE_18__* %270, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %269
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %276 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %275, i32 0)
  br label %277

277:                                              ; preds = %274, %269
  br label %469

278:                                              ; preds = %37
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %280 = load i32, i32* @close, align 4
  %281 = call i32 @EV_DoDoor(%struct.TYPE_18__* %279, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %285 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %284, i32 1)
  br label %286

286:                                              ; preds = %283, %278
  br label %469

287:                                              ; preds = %37
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %289 = load i32, i32* @lowerToFloor, align 4
  %290 = call i32 @EV_DoCeiling(%struct.TYPE_18__* %288, i32 %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %287
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %294 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %293, i32 1)
  br label %295

295:                                              ; preds = %292, %287
  br label %469

296:                                              ; preds = %37
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %298 = load i32, i32* @lowerFloor, align 4
  %299 = call i32 @EV_DoFloor(%struct.TYPE_18__* %297, i32 %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %303 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %302, i32 1)
  br label %304

304:                                              ; preds = %301, %296
  br label %469

305:                                              ; preds = %37
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %307 = load i32, i32* @lowerFloorToLowest, align 4
  %308 = call i32 @EV_DoFloor(%struct.TYPE_18__* %306, i32 %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %305
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %312 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %311, i32 1)
  br label %313

313:                                              ; preds = %310, %305
  br label %469

314:                                              ; preds = %37
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %316 = load i32, i32* @open, align 4
  %317 = call i32 @EV_DoDoor(%struct.TYPE_18__* %315, i32 %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %314
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %321 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %320, i32 1)
  br label %322

322:                                              ; preds = %319, %314
  br label %469

323:                                              ; preds = %37
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %325 = load i32, i32* @downWaitUpStay, align 4
  %326 = call i32 @EV_DoPlat(%struct.TYPE_18__* %324, i32 %325, i32 1)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %330 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %329, i32 1)
  br label %331

331:                                              ; preds = %328, %323
  br label %469

332:                                              ; preds = %37
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %334 = load i32, i32* @normal, align 4
  %335 = call i32 @EV_DoDoor(%struct.TYPE_18__* %333, i32 %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %332
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %339 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %338, i32 1)
  br label %340

340:                                              ; preds = %337, %332
  br label %469

341:                                              ; preds = %37
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %343 = load i32, i32* @raiseFloor, align 4
  %344 = call i32 @EV_DoFloor(%struct.TYPE_18__* %342, i32 %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %341
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %348 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %347, i32 1)
  br label %349

349:                                              ; preds = %346, %341
  br label %469

350:                                              ; preds = %37
  %351 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %352 = load i32, i32* @raiseAndChange, align 4
  %353 = call i32 @EV_DoPlat(%struct.TYPE_18__* %351, i32 %352, i32 24)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %350
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %357 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %356, i32 1)
  br label %358

358:                                              ; preds = %355, %350
  br label %469

359:                                              ; preds = %37
  %360 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %361 = load i32, i32* @raiseAndChange, align 4
  %362 = call i32 @EV_DoPlat(%struct.TYPE_18__* %360, i32 %361, i32 32)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %359
  %365 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %366 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %365, i32 1)
  br label %367

367:                                              ; preds = %364, %359
  br label %469

368:                                              ; preds = %37
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %370 = load i32, i32* @raiseFloorCrush, align 4
  %371 = call i32 @EV_DoFloor(%struct.TYPE_18__* %369, i32 %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %368
  %374 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %375 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %374, i32 1)
  br label %376

376:                                              ; preds = %373, %368
  br label %469

377:                                              ; preds = %37
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %379 = load i32, i32* @raiseToNearestAndChange, align 4
  %380 = call i32 @EV_DoPlat(%struct.TYPE_18__* %378, i32 %379, i32 0)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %377
  %383 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %384 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %383, i32 1)
  br label %385

385:                                              ; preds = %382, %377
  br label %469

386:                                              ; preds = %37
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %388 = load i32, i32* @raiseFloorToNearest, align 4
  %389 = call i32 @EV_DoFloor(%struct.TYPE_18__* %387, i32 %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %386
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %393 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %392, i32 1)
  br label %394

394:                                              ; preds = %391, %386
  br label %469

395:                                              ; preds = %37
  %396 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %397 = load i32, i32* @turboLower, align 4
  %398 = call i32 @EV_DoFloor(%struct.TYPE_18__* %396, i32 %397)
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %395
  %401 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %402 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %401, i32 1)
  br label %403

403:                                              ; preds = %400, %395
  br label %469

404:                                              ; preds = %37
  %405 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %406 = load i32, i32* @blazeRaise, align 4
  %407 = call i32 @EV_DoDoor(%struct.TYPE_18__* %405, i32 %406)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %404
  %410 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %411 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %410, i32 1)
  br label %412

412:                                              ; preds = %409, %404
  br label %469

413:                                              ; preds = %37
  %414 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %415 = load i32, i32* @blazeOpen, align 4
  %416 = call i32 @EV_DoDoor(%struct.TYPE_18__* %414, i32 %415)
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %413
  %419 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %420 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %419, i32 1)
  br label %421

421:                                              ; preds = %418, %413
  br label %469

422:                                              ; preds = %37
  %423 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %424 = load i32, i32* @blazeClose, align 4
  %425 = call i32 @EV_DoDoor(%struct.TYPE_18__* %423, i32 %424)
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %422
  %428 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %429 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %428, i32 1)
  br label %430

430:                                              ; preds = %427, %422
  br label %469

431:                                              ; preds = %37
  %432 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %433 = load i32, i32* @blazeDWUS, align 4
  %434 = call i32 @EV_DoPlat(%struct.TYPE_18__* %432, i32 %433, i32 0)
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %439

436:                                              ; preds = %431
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %438 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %437, i32 1)
  br label %439

439:                                              ; preds = %436, %431
  br label %469

440:                                              ; preds = %37
  %441 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %442 = load i32, i32* @raiseFloorTurbo, align 4
  %443 = call i32 @EV_DoFloor(%struct.TYPE_18__* %441, i32 %442)
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %448

445:                                              ; preds = %440
  %446 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %447 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %446, i32 1)
  br label %448

448:                                              ; preds = %445, %440
  br label %469

449:                                              ; preds = %37, %37, %37
  %450 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %451 = load i32, i32* @blazeOpen, align 4
  %452 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %453 = call i32 @EV_DoLockedDoor(%struct.TYPE_18__* %450, i32 %451, %struct.TYPE_17__* %452)
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %458

455:                                              ; preds = %449
  %456 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %457 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %456, i32 1)
  br label %458

458:                                              ; preds = %455, %449
  br label %469

459:                                              ; preds = %37
  %460 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %461 = call i32 @EV_LightTurnOn(%struct.TYPE_18__* %460, i32 255)
  %462 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %463 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %462, i32 1)
  br label %469

464:                                              ; preds = %37
  %465 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %466 = call i32 @EV_LightTurnOn(%struct.TYPE_18__* %465, i32 35)
  %467 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %468 = call i32 @P_ChangeSwitchTexture(%struct.TYPE_18__* %467, i32 1)
  br label %469

469:                                              ; preds = %37, %464, %459, %458, %448, %439, %430, %421, %412, %403, %394, %385, %376, %367, %358, %349, %340, %331, %322, %313, %304, %295, %286, %277, %268, %258, %249, %240, %231, %222, %213, %204, %195, %186, %177, %165, %164, %155, %146, %137, %128, %119, %110, %101, %92, %83, %74, %62, %61, %53, %41
  store i32 1, i32* %4, align 4
  br label %470

470:                                              ; preds = %469, %35, %29, %15
  %471 = load i32, i32* %4, align 4
  ret i32 %471
}

declare dso_local i32 @EV_VerticalDoor(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @EV_BuildStairs(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @P_ChangeSwitchTexture(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @EV_DoDonut(%struct.TYPE_18__*) #1

declare dso_local i32 @G_ExitLevel(...) #1

declare dso_local i32 @EV_DoPlat(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @EV_DoFloor(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @EV_DoDoor(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @EV_DoCeiling(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @G_SecretExitLevel(...) #1

declare dso_local i32 @EV_DoLockedDoor(%struct.TYPE_18__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @EV_LightTurnOn(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
