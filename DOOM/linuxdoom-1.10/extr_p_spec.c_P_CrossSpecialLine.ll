; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_spec.c_P_CrossSpecialLine.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_spec.c_P_CrossSpecialLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

@lines = common dso_local global %struct.TYPE_18__* null, align 8
@open = common dso_local global i32 0, align 4
@close = common dso_local global i32 0, align 4
@normal = common dso_local global i32 0, align 4
@raiseFloor = common dso_local global i32 0, align 4
@fastCrushAndRaise = common dso_local global i32 0, align 4
@build8 = common dso_local global i32 0, align 4
@downWaitUpStay = common dso_local global i32 0, align 4
@close30ThenOpen = common dso_local global i32 0, align 4
@lowerFloor = common dso_local global i32 0, align 4
@raiseToNearestAndChange = common dso_local global i32 0, align 4
@crushAndRaise = common dso_local global i32 0, align 4
@raiseToTexture = common dso_local global i32 0, align 4
@turboLower = common dso_local global i32 0, align 4
@lowerAndChange = common dso_local global i32 0, align 4
@lowerFloorToLowest = common dso_local global i32 0, align 4
@raiseToHighest = common dso_local global i32 0, align 4
@lowerAndCrush = common dso_local global i32 0, align 4
@perpetualRaise = common dso_local global i32 0, align 4
@raiseFloorCrush = common dso_local global i32 0, align 4
@raiseFloor24 = common dso_local global i32 0, align 4
@raiseFloor24AndChange = common dso_local global i32 0, align 4
@blazeRaise = common dso_local global i32 0, align 4
@blazeOpen = common dso_local global i32 0, align 4
@turbo16 = common dso_local global i32 0, align 4
@blazeClose = common dso_local global i32 0, align 4
@raiseFloorToNearest = common dso_local global i32 0, align 4
@blazeDWUS = common dso_local global i32 0, align 4
@raiseFloorTurbo = common dso_local global i32 0, align 4
@silentCrushAndRaise = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_CrossSpecialLine(i32 %0, i32 %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** @lines, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i64 %11
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %7, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %22 [
    i32 129, label %21
    i32 130, label %21
    i32 133, label %21
    i32 128, label %21
    i32 131, label %21
    i32 132, label %21
  ]

21:                                               ; preds = %17, %17, %17, %17, %17, %17
  br label %404

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %28 [
    i32 39, label %27
    i32 97, label %27
    i32 125, label %27
    i32 126, label %27
    i32 4, label %27
    i32 10, label %27
    i32 88, label %27
  ]

27:                                               ; preds = %23, %23, %23, %23, %23, %23, %23
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %23, %27
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %404

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %404 [
    i32 2, label %37
    i32 3, label %43
    i32 4, label %49
    i32 5, label %55
    i32 6, label %61
    i32 8, label %67
    i32 10, label %73
    i32 12, label %79
    i32 13, label %84
    i32 16, label %89
    i32 17, label %95
    i32 19, label %100
    i32 22, label %106
    i32 25, label %112
    i32 30, label %118
    i32 35, label %124
    i32 36, label %129
    i32 37, label %135
    i32 38, label %141
    i32 39, label %147
    i32 40, label %154
    i32 44, label %163
    i32 52, label %169
    i32 53, label %171
    i32 54, label %177
    i32 56, label %182
    i32 57, label %188
    i32 58, label %193
    i32 59, label %199
    i32 104, label %205
    i32 108, label %210
    i32 109, label %216
    i32 100, label %222
    i32 110, label %228
    i32 119, label %234
    i32 121, label %240
    i32 124, label %246
    i32 125, label %248
    i32 130, label %261
    i32 141, label %267
    i32 72, label %273
    i32 73, label %277
    i32 74, label %281
    i32 75, label %284
    i32 76, label %288
    i32 77, label %292
    i32 79, label %296
    i32 80, label %299
    i32 81, label %302
    i32 82, label %305
    i32 83, label %309
    i32 84, label %313
    i32 86, label %317
    i32 87, label %321
    i32 88, label %325
    i32 89, label %329
    i32 90, label %332
    i32 91, label %336
    i32 92, label %340
    i32 93, label %344
    i32 94, label %348
    i32 95, label %352
    i32 96, label %356
    i32 97, label %360
    i32 98, label %365
    i32 105, label %369
    i32 106, label %373
    i32 107, label %377
    i32 120, label %381
    i32 126, label %385
    i32 128, label %396
    i32 129, label %400
  ]

37:                                               ; preds = %33
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = load i32, i32* @open, align 4
  %40 = call i32 @EV_DoDoor(%struct.TYPE_18__* %38, i32 %39)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %404

43:                                               ; preds = %33
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = load i32, i32* @close, align 4
  %46 = call i32 @EV_DoDoor(%struct.TYPE_18__* %44, i32 %45)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  br label %404

49:                                               ; preds = %33
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %51 = load i32, i32* @normal, align 4
  %52 = call i32 @EV_DoDoor(%struct.TYPE_18__* %50, i32 %51)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  br label %404

55:                                               ; preds = %33
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %57 = load i32, i32* @raiseFloor, align 4
  %58 = call i32 @EV_DoFloor(%struct.TYPE_18__* %56, i32 %57)
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  br label %404

61:                                               ; preds = %33
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %63 = load i32, i32* @fastCrushAndRaise, align 4
  %64 = call i32 @EV_DoCeiling(%struct.TYPE_18__* %62, i32 %63)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %404

67:                                               ; preds = %33
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %69 = load i32, i32* @build8, align 4
  %70 = call i32 @EV_BuildStairs(%struct.TYPE_18__* %68, i32 %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  br label %404

73:                                               ; preds = %33
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = load i32, i32* @downWaitUpStay, align 4
  %76 = call i32 @EV_DoPlat(%struct.TYPE_18__* %74, i32 %75, i32 0)
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  br label %404

79:                                               ; preds = %33
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %81 = call i32 @EV_LightTurnOn(%struct.TYPE_18__* %80, i32 0)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  br label %404

84:                                               ; preds = %33
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %86 = call i32 @EV_LightTurnOn(%struct.TYPE_18__* %85, i32 255)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %404

89:                                               ; preds = %33
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %91 = load i32, i32* @close30ThenOpen, align 4
  %92 = call i32 @EV_DoDoor(%struct.TYPE_18__* %90, i32 %91)
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 4
  br label %404

95:                                               ; preds = %33
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %97 = call i32 @EV_StartLightStrobing(%struct.TYPE_18__* %96)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 4
  br label %404

100:                                              ; preds = %33
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %102 = load i32, i32* @lowerFloor, align 4
  %103 = call i32 @EV_DoFloor(%struct.TYPE_18__* %101, i32 %102)
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  br label %404

106:                                              ; preds = %33
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %108 = load i32, i32* @raiseToNearestAndChange, align 4
  %109 = call i32 @EV_DoPlat(%struct.TYPE_18__* %107, i32 %108, i32 0)
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 4
  br label %404

112:                                              ; preds = %33
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %114 = load i32, i32* @crushAndRaise, align 4
  %115 = call i32 @EV_DoCeiling(%struct.TYPE_18__* %113, i32 %114)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  store i32 0, i32* %117, align 4
  br label %404

118:                                              ; preds = %33
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %120 = load i32, i32* @raiseToTexture, align 4
  %121 = call i32 @EV_DoFloor(%struct.TYPE_18__* %119, i32 %120)
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 4
  br label %404

124:                                              ; preds = %33
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %126 = call i32 @EV_LightTurnOn(%struct.TYPE_18__* %125, i32 35)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  store i32 0, i32* %128, align 4
  br label %404

129:                                              ; preds = %33
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %131 = load i32, i32* @turboLower, align 4
  %132 = call i32 @EV_DoFloor(%struct.TYPE_18__* %130, i32 %131)
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  store i32 0, i32* %134, align 4
  br label %404

135:                                              ; preds = %33
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %137 = load i32, i32* @lowerAndChange, align 4
  %138 = call i32 @EV_DoFloor(%struct.TYPE_18__* %136, i32 %137)
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  store i32 0, i32* %140, align 4
  br label %404

141:                                              ; preds = %33
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %143 = load i32, i32* @lowerFloorToLowest, align 4
  %144 = call i32 @EV_DoFloor(%struct.TYPE_18__* %142, i32 %143)
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 4
  br label %404

147:                                              ; preds = %33
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %151 = call i32 @EV_Teleport(%struct.TYPE_18__* %148, i32 %149, %struct.TYPE_17__* %150)
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  store i32 0, i32* %153, align 4
  br label %404

154:                                              ; preds = %33
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %156 = load i32, i32* @raiseToHighest, align 4
  %157 = call i32 @EV_DoCeiling(%struct.TYPE_18__* %155, i32 %156)
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %159 = load i32, i32* @lowerFloorToLowest, align 4
  %160 = call i32 @EV_DoFloor(%struct.TYPE_18__* %158, i32 %159)
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  store i32 0, i32* %162, align 4
  br label %404

163:                                              ; preds = %33
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %165 = load i32, i32* @lowerAndCrush, align 4
  %166 = call i32 @EV_DoCeiling(%struct.TYPE_18__* %164, i32 %165)
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  store i32 0, i32* %168, align 4
  br label %404

169:                                              ; preds = %33
  %170 = call i32 (...) @G_ExitLevel()
  br label %404

171:                                              ; preds = %33
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %173 = load i32, i32* @perpetualRaise, align 4
  %174 = call i32 @EV_DoPlat(%struct.TYPE_18__* %172, i32 %173, i32 0)
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  store i32 0, i32* %176, align 4
  br label %404

177:                                              ; preds = %33
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %179 = call i32 @EV_StopPlat(%struct.TYPE_18__* %178)
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  store i32 0, i32* %181, align 4
  br label %404

182:                                              ; preds = %33
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %184 = load i32, i32* @raiseFloorCrush, align 4
  %185 = call i32 @EV_DoFloor(%struct.TYPE_18__* %183, i32 %184)
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  store i32 0, i32* %187, align 4
  br label %404

188:                                              ; preds = %33
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %190 = call i32 @EV_CeilingCrushStop(%struct.TYPE_18__* %189)
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  store i32 0, i32* %192, align 4
  br label %404

193:                                              ; preds = %33
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %195 = load i32, i32* @raiseFloor24, align 4
  %196 = call i32 @EV_DoFloor(%struct.TYPE_18__* %194, i32 %195)
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  store i32 0, i32* %198, align 4
  br label %404

199:                                              ; preds = %33
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %201 = load i32, i32* @raiseFloor24AndChange, align 4
  %202 = call i32 @EV_DoFloor(%struct.TYPE_18__* %200, i32 %201)
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  store i32 0, i32* %204, align 4
  br label %404

205:                                              ; preds = %33
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %207 = call i32 @EV_TurnTagLightsOff(%struct.TYPE_18__* %206)
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  store i32 0, i32* %209, align 4
  br label %404

210:                                              ; preds = %33
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %212 = load i32, i32* @blazeRaise, align 4
  %213 = call i32 @EV_DoDoor(%struct.TYPE_18__* %211, i32 %212)
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  store i32 0, i32* %215, align 4
  br label %404

216:                                              ; preds = %33
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %218 = load i32, i32* @blazeOpen, align 4
  %219 = call i32 @EV_DoDoor(%struct.TYPE_18__* %217, i32 %218)
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  store i32 0, i32* %221, align 4
  br label %404

222:                                              ; preds = %33
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %224 = load i32, i32* @turbo16, align 4
  %225 = call i32 @EV_BuildStairs(%struct.TYPE_18__* %223, i32 %224)
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 0
  store i32 0, i32* %227, align 4
  br label %404

228:                                              ; preds = %33
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %230 = load i32, i32* @blazeClose, align 4
  %231 = call i32 @EV_DoDoor(%struct.TYPE_18__* %229, i32 %230)
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  store i32 0, i32* %233, align 4
  br label %404

234:                                              ; preds = %33
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %236 = load i32, i32* @raiseFloorToNearest, align 4
  %237 = call i32 @EV_DoFloor(%struct.TYPE_18__* %235, i32 %236)
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  store i32 0, i32* %239, align 4
  br label %404

240:                                              ; preds = %33
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %242 = load i32, i32* @blazeDWUS, align 4
  %243 = call i32 @EV_DoPlat(%struct.TYPE_18__* %241, i32 %242, i32 0)
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 0
  store i32 0, i32* %245, align 4
  br label %404

246:                                              ; preds = %33
  %247 = call i32 (...) @G_SecretExitLevel()
  br label %404

248:                                              ; preds = %33
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %260, label %253

253:                                              ; preds = %248
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %255 = load i32, i32* %5, align 4
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %257 = call i32 @EV_Teleport(%struct.TYPE_18__* %254, i32 %255, %struct.TYPE_17__* %256)
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 0
  store i32 0, i32* %259, align 4
  br label %260

260:                                              ; preds = %253, %248
  br label %404

261:                                              ; preds = %33
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %263 = load i32, i32* @raiseFloorTurbo, align 4
  %264 = call i32 @EV_DoFloor(%struct.TYPE_18__* %262, i32 %263)
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 0
  store i32 0, i32* %266, align 4
  br label %404

267:                                              ; preds = %33
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %269 = load i32, i32* @silentCrushAndRaise, align 4
  %270 = call i32 @EV_DoCeiling(%struct.TYPE_18__* %268, i32 %269)
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 0
  store i32 0, i32* %272, align 4
  br label %404

273:                                              ; preds = %33
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %275 = load i32, i32* @lowerAndCrush, align 4
  %276 = call i32 @EV_DoCeiling(%struct.TYPE_18__* %274, i32 %275)
  br label %404

277:                                              ; preds = %33
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %279 = load i32, i32* @crushAndRaise, align 4
  %280 = call i32 @EV_DoCeiling(%struct.TYPE_18__* %278, i32 %279)
  br label %404

281:                                              ; preds = %33
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %283 = call i32 @EV_CeilingCrushStop(%struct.TYPE_18__* %282)
  br label %404

284:                                              ; preds = %33
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %286 = load i32, i32* @close, align 4
  %287 = call i32 @EV_DoDoor(%struct.TYPE_18__* %285, i32 %286)
  br label %404

288:                                              ; preds = %33
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %290 = load i32, i32* @close30ThenOpen, align 4
  %291 = call i32 @EV_DoDoor(%struct.TYPE_18__* %289, i32 %290)
  br label %404

292:                                              ; preds = %33
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %294 = load i32, i32* @fastCrushAndRaise, align 4
  %295 = call i32 @EV_DoCeiling(%struct.TYPE_18__* %293, i32 %294)
  br label %404

296:                                              ; preds = %33
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %298 = call i32 @EV_LightTurnOn(%struct.TYPE_18__* %297, i32 35)
  br label %404

299:                                              ; preds = %33
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %301 = call i32 @EV_LightTurnOn(%struct.TYPE_18__* %300, i32 0)
  br label %404

302:                                              ; preds = %33
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %304 = call i32 @EV_LightTurnOn(%struct.TYPE_18__* %303, i32 255)
  br label %404

305:                                              ; preds = %33
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %307 = load i32, i32* @lowerFloorToLowest, align 4
  %308 = call i32 @EV_DoFloor(%struct.TYPE_18__* %306, i32 %307)
  br label %404

309:                                              ; preds = %33
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %311 = load i32, i32* @lowerFloor, align 4
  %312 = call i32 @EV_DoFloor(%struct.TYPE_18__* %310, i32 %311)
  br label %404

313:                                              ; preds = %33
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %315 = load i32, i32* @lowerAndChange, align 4
  %316 = call i32 @EV_DoFloor(%struct.TYPE_18__* %314, i32 %315)
  br label %404

317:                                              ; preds = %33
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %319 = load i32, i32* @open, align 4
  %320 = call i32 @EV_DoDoor(%struct.TYPE_18__* %318, i32 %319)
  br label %404

321:                                              ; preds = %33
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %323 = load i32, i32* @perpetualRaise, align 4
  %324 = call i32 @EV_DoPlat(%struct.TYPE_18__* %322, i32 %323, i32 0)
  br label %404

325:                                              ; preds = %33
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %327 = load i32, i32* @downWaitUpStay, align 4
  %328 = call i32 @EV_DoPlat(%struct.TYPE_18__* %326, i32 %327, i32 0)
  br label %404

329:                                              ; preds = %33
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %331 = call i32 @EV_StopPlat(%struct.TYPE_18__* %330)
  br label %404

332:                                              ; preds = %33
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %334 = load i32, i32* @normal, align 4
  %335 = call i32 @EV_DoDoor(%struct.TYPE_18__* %333, i32 %334)
  br label %404

336:                                              ; preds = %33
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %338 = load i32, i32* @raiseFloor, align 4
  %339 = call i32 @EV_DoFloor(%struct.TYPE_18__* %337, i32 %338)
  br label %404

340:                                              ; preds = %33
  %341 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %342 = load i32, i32* @raiseFloor24, align 4
  %343 = call i32 @EV_DoFloor(%struct.TYPE_18__* %341, i32 %342)
  br label %404

344:                                              ; preds = %33
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %346 = load i32, i32* @raiseFloor24AndChange, align 4
  %347 = call i32 @EV_DoFloor(%struct.TYPE_18__* %345, i32 %346)
  br label %404

348:                                              ; preds = %33
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %350 = load i32, i32* @raiseFloorCrush, align 4
  %351 = call i32 @EV_DoFloor(%struct.TYPE_18__* %349, i32 %350)
  br label %404

352:                                              ; preds = %33
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %354 = load i32, i32* @raiseToNearestAndChange, align 4
  %355 = call i32 @EV_DoPlat(%struct.TYPE_18__* %353, i32 %354, i32 0)
  br label %404

356:                                              ; preds = %33
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %358 = load i32, i32* @raiseToTexture, align 4
  %359 = call i32 @EV_DoFloor(%struct.TYPE_18__* %357, i32 %358)
  br label %404

360:                                              ; preds = %33
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %362 = load i32, i32* %5, align 4
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %364 = call i32 @EV_Teleport(%struct.TYPE_18__* %361, i32 %362, %struct.TYPE_17__* %363)
  br label %404

365:                                              ; preds = %33
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %367 = load i32, i32* @turboLower, align 4
  %368 = call i32 @EV_DoFloor(%struct.TYPE_18__* %366, i32 %367)
  br label %404

369:                                              ; preds = %33
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %371 = load i32, i32* @blazeRaise, align 4
  %372 = call i32 @EV_DoDoor(%struct.TYPE_18__* %370, i32 %371)
  br label %404

373:                                              ; preds = %33
  %374 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %375 = load i32, i32* @blazeOpen, align 4
  %376 = call i32 @EV_DoDoor(%struct.TYPE_18__* %374, i32 %375)
  br label %404

377:                                              ; preds = %33
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %379 = load i32, i32* @blazeClose, align 4
  %380 = call i32 @EV_DoDoor(%struct.TYPE_18__* %378, i32 %379)
  br label %404

381:                                              ; preds = %33
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %383 = load i32, i32* @blazeDWUS, align 4
  %384 = call i32 @EV_DoPlat(%struct.TYPE_18__* %382, i32 %383, i32 0)
  br label %404

385:                                              ; preds = %33
  %386 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %395, label %390

390:                                              ; preds = %385
  %391 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %392 = load i32, i32* %5, align 4
  %393 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %394 = call i32 @EV_Teleport(%struct.TYPE_18__* %391, i32 %392, %struct.TYPE_17__* %393)
  br label %395

395:                                              ; preds = %390, %385
  br label %404

396:                                              ; preds = %33
  %397 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %398 = load i32, i32* @raiseFloorToNearest, align 4
  %399 = call i32 @EV_DoFloor(%struct.TYPE_18__* %397, i32 %398)
  br label %404

400:                                              ; preds = %33
  %401 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %402 = load i32, i32* @raiseFloorTurbo, align 4
  %403 = call i32 @EV_DoFloor(%struct.TYPE_18__* %401, i32 %402)
  br label %404

404:                                              ; preds = %21, %31, %33, %400, %396, %395, %381, %377, %373, %369, %365, %360, %356, %352, %348, %344, %340, %336, %332, %329, %325, %321, %317, %313, %309, %305, %302, %299, %296, %292, %288, %284, %281, %277, %273, %267, %261, %260, %246, %240, %234, %228, %222, %216, %210, %205, %199, %193, %188, %182, %177, %171, %169, %163, %154, %147, %141, %135, %129, %124, %118, %112, %106, %100, %95, %89, %84, %79, %73, %67, %61, %55, %49, %43, %37
  ret void
}

declare dso_local i32 @EV_DoDoor(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @EV_DoFloor(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @EV_DoCeiling(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @EV_BuildStairs(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @EV_DoPlat(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @EV_LightTurnOn(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @EV_StartLightStrobing(%struct.TYPE_18__*) #1

declare dso_local i32 @EV_Teleport(%struct.TYPE_18__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @G_ExitLevel(...) #1

declare dso_local i32 @EV_StopPlat(%struct.TYPE_18__*) #1

declare dso_local i32 @EV_CeilingCrushStop(%struct.TYPE_18__*) #1

declare dso_local i32 @EV_TurnTagLightsOff(%struct.TYPE_18__*) #1

declare dso_local i32 @G_SecretExitLevel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
