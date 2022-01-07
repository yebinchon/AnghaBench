; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_input.c_IN_JoyMove.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_input.c_IN_JoyMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_10__ = type { float }
%struct.TYPE_13__ = type { i32 }

@joy = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@JOY_RETURNALL = common dso_local global i32 0, align 4
@JOYERR_NOERROR = common dso_local global i64 0, align 8
@in_debugJoystick = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"%8x %5i %5.2f %5.2f %5.2f %5.2f %6i %6i\0A\00", align 1
@g_wv = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@SE_KEY = common dso_local global i32 0, align 4
@K_JOY1 = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@joy_threshold = common dso_local global %struct.TYPE_10__* null, align 8
@JOYCAPS_HASPOV = common dso_local global i32 0, align 4
@JOY_POVCENTERED = common dso_local global i64 0, align 8
@JOY_POVFORWARD = common dso_local global i64 0, align 8
@JOY_POVBACKWARD = common dso_local global i64 0, align 8
@JOY_POVRIGHT = common dso_local global i64 0, align 8
@JOY_POVLEFT = common dso_local global i64 0, align 8
@joyDirectionKeys = common dso_local global i32* null, align 8
@in_joyBallScale = common dso_local global %struct.TYPE_13__* null, align 8
@SE_MOUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IN_JoyMove() #0 {
  %1 = alloca float, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 5), align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %256

10:                                               ; preds = %0
  %11 = call i32 @Com_Memset(%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2), i32 0, i32 48)
  store i32 48, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 0), align 8
  %12 = load i32, i32* @JOY_RETURNALL, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 9), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 4), align 4
  %14 = call i64 @joyGetPosEx(i32 %13, %struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2))
  %15 = load i64, i64* @JOYERR_NOERROR, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %256

18:                                               ; preds = %10
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** @in_debugJoystick, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 1), align 4
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 2), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 5), align 8
  %27 = call float @JoyToF(i32 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 8), align 4
  %29 = call float @JoyToF(i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 7), align 8
  %31 = call float @JoyToF(i32 %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 6), align 4
  %33 = call float @JoyToF(i32 %32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 4), align 4
  %35 = call i32 @JoyToI(i32 %34)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 3), align 8
  %37 = call i32 @JoyToI(i32 %36)
  %38 = call i32 @Com_Printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25, float %27, float %29, float %31, float %33, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %23, %18
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 1), align 4
  store i32 %40, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %86, %39
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 3, i32 0), align 8
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %89

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %2, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 0), align 8
  %53 = load i32, i32* %2, align 4
  %54 = shl i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_wv, i32 0, i32 0), align 4
  %59 = load i32, i32* @SE_KEY, align 4
  %60 = load i32, i32* @K_JOY1, align 4
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* @qtrue, align 4
  %64 = call i32 @Sys_QueEvent(i32 %58, i32 %59, i32 %62, i32 %63, i32 0, i32* null)
  br label %65

65:                                               ; preds = %57, %51, %45
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %2, align 4
  %68 = shl i32 1, %67
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 0), align 8
  %73 = load i32, i32* %2, align 4
  %74 = shl i32 1, %73
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_wv, i32 0, i32 0), align 4
  %79 = load i32, i32* @SE_KEY, align 4
  %80 = load i32, i32* @K_JOY1, align 4
  %81 = load i32, i32* %2, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* @qfalse, align 4
  %84 = call i32 @Sys_QueEvent(i32 %78, i32 %79, i32 %82, i32 %83, i32 0, i32* null)
  br label %85

85:                                               ; preds = %77, %71, %65
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %2, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %2, align 4
  br label %41

89:                                               ; preds = %41
  %90 = load i32, i32* %3, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 0), align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %133, %89
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 3, i32 1), align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* %2, align 4
  %97 = icmp slt i32 %96, 4
  br label %98

98:                                               ; preds = %95, %91
  %99 = phi i1 [ false, %91 ], [ %97, %95 ]
  br i1 %99, label %100, label %136

100:                                              ; preds = %98
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 5), i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call float @JoyToF(i32 %104)
  store float %105, float* %1, align 4
  %106 = load float, float* %1, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** @joy_threshold, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load float, float* %108, align 4
  %110 = fneg float %109
  %111 = fcmp olt float %106, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %100
  %113 = load i32, i32* %2, align 4
  %114 = mul nsw i32 %113, 2
  %115 = shl i32 1, %114
  %116 = load i32, i32* %4, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %4, align 4
  br label %132

118:                                              ; preds = %100
  %119 = load float, float* %1, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** @joy_threshold, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load float, float* %121, align 4
  %123 = fcmp ogt float %119, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load i32, i32* %2, align 4
  %126 = mul nsw i32 %125, 2
  %127 = add nsw i32 %126, 1
  %128 = shl i32 1, %127
  %129 = load i32, i32* %4, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %124, %118
  br label %132

132:                                              ; preds = %131, %112
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %2, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %2, align 4
  br label %91

136:                                              ; preds = %98
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 3, i32 2), align 8
  %138 = load i32, i32* @JOYCAPS_HASPOV, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %175

141:                                              ; preds = %136
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 2), align 8
  %143 = load i64, i64* @JOY_POVCENTERED, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %174

145:                                              ; preds = %141
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 2), align 8
  %147 = load i64, i64* @JOY_POVFORWARD, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32, i32* %4, align 4
  %151 = or i32 %150, 4096
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %149, %145
  %153 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 2), align 8
  %154 = load i64, i64* @JOY_POVBACKWARD, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* %4, align 4
  %158 = or i32 %157, 8192
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %156, %152
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 2), align 8
  %161 = load i64, i64* @JOY_POVRIGHT, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i32, i32* %4, align 4
  %165 = or i32 %164, 16384
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %163, %159
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 2), align 8
  %168 = load i64, i64* @JOY_POVLEFT, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i32, i32* %4, align 4
  %172 = or i32 %171, 32768
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %170, %166
  br label %174

174:                                              ; preds = %173, %141
  br label %175

175:                                              ; preds = %174, %136
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %224, %175
  %177 = load i32, i32* %2, align 4
  %178 = icmp slt i32 %177, 16
  br i1 %178, label %179, label %227

179:                                              ; preds = %176
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* %2, align 4
  %182 = shl i32 1, %181
  %183 = and i32 %180, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %179
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 1), align 4
  %187 = load i32, i32* %2, align 4
  %188 = shl i32 1, %187
  %189 = and i32 %186, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %201, label %191

191:                                              ; preds = %185
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_wv, i32 0, i32 0), align 4
  %193 = load i32, i32* @SE_KEY, align 4
  %194 = load i32*, i32** @joyDirectionKeys, align 8
  %195 = load i32, i32* %2, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @qtrue, align 4
  %200 = call i32 @Sys_QueEvent(i32 %192, i32 %193, i32 %198, i32 %199, i32 0, i32* null)
  br label %201

201:                                              ; preds = %191, %185, %179
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* %2, align 4
  %204 = shl i32 1, %203
  %205 = and i32 %202, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %223, label %207

207:                                              ; preds = %201
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 1), align 4
  %209 = load i32, i32* %2, align 4
  %210 = shl i32 1, %209
  %211 = and i32 %208, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %207
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_wv, i32 0, i32 0), align 4
  %215 = load i32, i32* @SE_KEY, align 4
  %216 = load i32*, i32** @joyDirectionKeys, align 8
  %217 = load i32, i32* %2, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @qfalse, align 4
  %222 = call i32 @Sys_QueEvent(i32 %214, i32 %215, i32 %220, i32 %221, i32 0, i32* null)
  br label %223

223:                                              ; preds = %213, %207, %201
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %2, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %2, align 4
  br label %176

227:                                              ; preds = %176
  %228 = load i32, i32* %4, align 4
  store i32 %228, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 1), align 4
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 3, i32 1), align 4
  %230 = icmp sge i32 %229, 6
  br i1 %230, label %231, label %256

231:                                              ; preds = %227
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 4), align 4
  %233 = call i32 @JoyToI(i32 %232)
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** @in_joyBallScale, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = mul nsw i32 %233, %236
  store i32 %237, i32* %5, align 4
  %238 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @joy, i32 0, i32 2, i32 3), align 8
  %239 = call i32 @JoyToI(i32 %238)
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** @in_joyBallScale, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = mul nsw i32 %239, %242
  store i32 %243, i32* %6, align 4
  %244 = load i32, i32* %5, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %231
  %247 = load i32, i32* %6, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %246, %231
  %250 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_wv, i32 0, i32 0), align 4
  %251 = load i32, i32* @SE_MOUSE, align 4
  %252 = load i32, i32* %5, align 4
  %253 = load i32, i32* %6, align 4
  %254 = call i32 @Sys_QueEvent(i32 %250, i32 %251, i32 %252, i32 %253, i32 0, i32* null)
  br label %255

255:                                              ; preds = %249, %246
  br label %256

256:                                              ; preds = %9, %17, %255, %227
  ret void
}

declare dso_local i32 @Com_Memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @joyGetPosEx(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @Com_Printf(i8*, i32, i64, float, float, float, float, i32, i32) #1

declare dso_local float @JoyToF(i32) #1

declare dso_local i32 @JoyToI(i32) #1

declare dso_local i32 @Sys_QueEvent(i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
