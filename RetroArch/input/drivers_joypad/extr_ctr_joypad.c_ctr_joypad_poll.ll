; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_ctr_joypad.c_ctr_joypad_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_ctr_joypad.c_ctr_joypad_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@pad_state = common dso_local global i32 0, align 4
@KEY_DLEFT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_LEFT = common dso_local global i32 0, align 4
@KEY_DDOWN = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_DOWN = common dso_local global i32 0, align 4
@KEY_DRIGHT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_RIGHT = common dso_local global i32 0, align 4
@KEY_DUP = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_UP = common dso_local global i32 0, align 4
@KEY_START = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_START = common dso_local global i32 0, align 4
@KEY_SELECT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_SELECT = common dso_local global i32 0, align 4
@KEY_X = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_X = common dso_local global i32 0, align 4
@KEY_Y = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_Y = common dso_local global i32 0, align 4
@KEY_B = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_B = common dso_local global i32 0, align 4
@KEY_A = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_A = common dso_local global i32 0, align 4
@KEY_R = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_R = common dso_local global i32 0, align 4
@KEY_L = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_L = common dso_local global i32 0, align 4
@KEY_ZR = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_R2 = common dso_local global i32 0, align 4
@KEY_ZL = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_L2 = common dso_local global i32 0, align 4
@analog_state = common dso_local global i32*** null, align 8
@RETRO_DEVICE_INDEX_ANALOG_LEFT = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_X = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_Y = common dso_local global i64 0, align 8
@RETRO_DEVICE_INDEX_ANALOG_RIGHT = common dso_local global i64 0, align 8
@lifecycle_state = common dso_local global i32 0, align 4
@RARCH_MENU_TOGGLE = common dso_local global i32 0, align 4
@KEY_TOUCH = common dso_local global i32 0, align 4
@CMD_EVENT_QUIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ctr_joypad_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctr_joypad_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = call i32 (...) @hidScanInput()
  %6 = call i32 (...) @hidKeysHeld()
  store i32 %6, i32* %1, align 4
  %7 = call i32 @hidCircleRead(%struct.TYPE_7__* %2)
  %8 = call i32 @irrstCstickRead(%struct.TYPE_7__* %3)
  %9 = call i32 @hidTouchRead(%struct.TYPE_6__* %4)
  store i32 0, i32* @pad_state, align 4
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @KEY_DLEFT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_LEFT, align 4
  %16 = shl i32 1, %15
  br label %18

17:                                               ; preds = %0
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i32 [ %16, %14 ], [ 0, %17 ]
  %20 = load i32, i32* @pad_state, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* @pad_state, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @KEY_DDOWN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_DOWN, align 4
  %28 = shl i32 1, %27
  br label %30

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ 0, %29 ]
  %32 = load i32, i32* @pad_state, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* @pad_state, align 4
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @KEY_DRIGHT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_RIGHT, align 4
  %40 = shl i32 1, %39
  br label %42

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ 0, %41 ]
  %44 = load i32, i32* @pad_state, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* @pad_state, align 4
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @KEY_DUP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_UP, align 4
  %52 = shl i32 1, %51
  br label %54

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 0, %53 ]
  %56 = load i32, i32* @pad_state, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* @pad_state, align 4
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @KEY_START, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_START, align 4
  %64 = shl i32 1, %63
  br label %66

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %62
  %67 = phi i32 [ %64, %62 ], [ 0, %65 ]
  %68 = load i32, i32* @pad_state, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* @pad_state, align 4
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* @KEY_SELECT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_SELECT, align 4
  %76 = shl i32 1, %75
  br label %78

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i32 [ %76, %74 ], [ 0, %77 ]
  %80 = load i32, i32* @pad_state, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* @pad_state, align 4
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* @KEY_X, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_X, align 4
  %88 = shl i32 1, %87
  br label %90

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i32 [ %88, %86 ], [ 0, %89 ]
  %92 = load i32, i32* @pad_state, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* @pad_state, align 4
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* @KEY_Y, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_Y, align 4
  %100 = shl i32 1, %99
  br label %102

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i32 [ %100, %98 ], [ 0, %101 ]
  %104 = load i32, i32* @pad_state, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* @pad_state, align 4
  %106 = load i32, i32* %1, align 4
  %107 = load i32, i32* @KEY_B, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_B, align 4
  %112 = shl i32 1, %111
  br label %114

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113, %110
  %115 = phi i32 [ %112, %110 ], [ 0, %113 ]
  %116 = load i32, i32* @pad_state, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* @pad_state, align 4
  %118 = load i32, i32* %1, align 4
  %119 = load i32, i32* @KEY_A, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_A, align 4
  %124 = shl i32 1, %123
  br label %126

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %125, %122
  %127 = phi i32 [ %124, %122 ], [ 0, %125 ]
  %128 = load i32, i32* @pad_state, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* @pad_state, align 4
  %130 = load i32, i32* %1, align 4
  %131 = load i32, i32* @KEY_R, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_R, align 4
  %136 = shl i32 1, %135
  br label %138

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137, %134
  %139 = phi i32 [ %136, %134 ], [ 0, %137 ]
  %140 = load i32, i32* @pad_state, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* @pad_state, align 4
  %142 = load i32, i32* %1, align 4
  %143 = load i32, i32* @KEY_L, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_L, align 4
  %148 = shl i32 1, %147
  br label %150

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %149, %146
  %151 = phi i32 [ %148, %146 ], [ 0, %149 ]
  %152 = load i32, i32* @pad_state, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* @pad_state, align 4
  %154 = load i32, i32* %1, align 4
  %155 = load i32, i32* @KEY_ZR, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_R2, align 4
  %160 = shl i32 1, %159
  br label %162

161:                                              ; preds = %150
  br label %162

162:                                              ; preds = %161, %158
  %163 = phi i32 [ %160, %158 ], [ 0, %161 ]
  %164 = load i32, i32* @pad_state, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* @pad_state, align 4
  %166 = load i32, i32* %1, align 4
  %167 = load i32, i32* @KEY_ZL, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_L2, align 4
  %172 = shl i32 1, %171
  br label %174

173:                                              ; preds = %162
  br label %174

174:                                              ; preds = %173, %170
  %175 = phi i32 [ %172, %170 ], [ 0, %173 ]
  %176 = load i32, i32* @pad_state, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* @pad_state, align 4
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ctr_joypad_fix_range(i32 %179)
  %181 = load i32***, i32**** @analog_state, align 8
  %182 = getelementptr inbounds i32**, i32*** %181, i64 0
  %183 = load i32**, i32*** %182, align 8
  %184 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_LEFT, align 8
  %185 = getelementptr inbounds i32*, i32** %183, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32 %180, i32* %188, align 4
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @ctr_joypad_fix_range(i32 %190)
  %192 = sub nsw i32 0, %191
  %193 = load i32***, i32**** @analog_state, align 8
  %194 = getelementptr inbounds i32**, i32*** %193, i64 0
  %195 = load i32**, i32*** %194, align 8
  %196 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_LEFT, align 8
  %197 = getelementptr inbounds i32*, i32** %195, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32 %192, i32* %200, align 4
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @ctr_joypad_fix_range(i32 %202)
  %204 = load i32***, i32**** @analog_state, align 8
  %205 = getelementptr inbounds i32**, i32*** %204, i64 0
  %206 = load i32**, i32*** %205, align 8
  %207 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_RIGHT, align 8
  %208 = getelementptr inbounds i32*, i32** %206, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  store i32 %203, i32* %211, align 4
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ctr_joypad_fix_range(i32 %213)
  %215 = sub nsw i32 0, %214
  %216 = load i32***, i32**** @analog_state, align 8
  %217 = getelementptr inbounds i32**, i32*** %216, i64 0
  %218 = load i32**, i32*** %217, align 8
  %219 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_RIGHT, align 8
  %220 = getelementptr inbounds i32*, i32** %218, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32 %215, i32* %223, align 4
  %224 = load i32, i32* @lifecycle_state, align 4
  %225 = load i32, i32* @RARCH_MENU_TOGGLE, align 4
  %226 = call i32 @BIT64_CLEAR(i32 %224, i32 %225)
  %227 = load i32, i32* %1, align 4
  %228 = load i32, i32* @KEY_TOUCH, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %174
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp sgt i32 %233, 120
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load i32, i32* @lifecycle_state, align 4
  %237 = load i32, i32* @RARCH_MENU_TOGGLE, align 4
  %238 = call i32 @BIT64_SET(i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %235, %231, %174
  %240 = load i32, i32* %1, align 4
  %241 = load i32, i32* @KEY_START, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %262

244:                                              ; preds = %239
  %245 = load i32, i32* %1, align 4
  %246 = load i32, i32* @KEY_SELECT, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %244
  %250 = load i32, i32* %1, align 4
  %251 = load i32, i32* @KEY_L, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %249
  %255 = load i32, i32* %1, align 4
  %256 = load i32, i32* @KEY_R, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %254
  %260 = load i32, i32* @CMD_EVENT_QUIT, align 4
  %261 = call i32 @command_event(i32 %260, i32* null)
  br label %262

262:                                              ; preds = %259, %254, %249, %244, %239
  ret void
}

declare dso_local i32 @hidScanInput(...) #1

declare dso_local i32 @hidKeysHeld(...) #1

declare dso_local i32 @hidCircleRead(%struct.TYPE_7__*) #1

declare dso_local i32 @irrstCstickRead(%struct.TYPE_7__*) #1

declare dso_local i32 @hidTouchRead(%struct.TYPE_6__*) #1

declare dso_local i32 @ctr_joypad_fix_range(i32) #1

declare dso_local i32 @BIT64_CLEAR(i32, i32) #1

declare dso_local i32 @BIT64_SET(i32, i32) #1

declare dso_local i32 @command_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
