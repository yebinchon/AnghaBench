; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_event_loop.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_event_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { double, i32, i32*, i32, %struct.TYPE_28__*, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, double, i32, double, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_23__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_23__ = type { double, i32, i32 }
%struct.TYPE_27__ = type { i32, double }
%struct.TYPE_26__ = type { double, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }

@exit_on_keydown = common dso_local global i32 0, align 4
@SDLK_ESCAPE = common dso_local global i32 0, align 4
@SDLK_q = common dso_local global i32 0, align 4
@SDL_VOLUME_STEP = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@seek_interval = common dso_local global double 0.000000e+00, align 8
@seek_by_bytes = common dso_local global i32 0, align 4
@AV_TIME_BASE = common dso_local global double 0.000000e+00, align 8
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@exit_on_mousedown = common dso_local global i32 0, align 4
@SDL_BUTTON_LEFT = common dso_local global i32 0, align 4
@event_loop.last_mouse_left_click = internal global i32 0, align 4
@cursor_hidden = common dso_local global i32 0, align 4
@cursor_last_shown = common dso_local global i32 0, align 4
@SDL_BUTTON_RIGHT = common dso_local global i32 0, align 4
@SDL_BUTTON_RMASK = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Seek to %2.0f%% (%2d:%02d:%02d) of total duration (%2d:%02d:%02d)       \0A\00", align 1
@screen_width = common dso_local global double 0.000000e+00, align 8
@screen_height = common dso_local global i32 0, align 4
@SHOW_MODE_VIDEO = common dso_local global i32 0, align 4
@nb_vfilters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*)* @event_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_loop(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca %struct.TYPE_30__, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  br label %18

18:                                               ; preds = %457, %48, %1
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %20 = call i32 @refresh_loop_wait_event(%struct.TYPE_29__* %19, %struct.TYPE_30__* %3)
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %456 [
    i32 134, label %23
    i32 133, label %266
    i32 132, label %292
    i32 130, label %422
    i32 131, label %453
    i32 155, label %453
  ]

23:                                               ; preds = %18
  %24 = load i32, i32* @exit_on_keydown, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SDLK_ESCAPE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SDLK_q, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %26, %23
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %42 = call i32 @do_exit(%struct.TYPE_29__* %41)
  br label %457

43:                                               ; preds = %33
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = fcmp une double %46, 0.000000e+00
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %18

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %264 [
    i32 141, label %54
    i32 139, label %59
    i32 145, label %59
    i32 140, label %62
    i32 150, label %65
    i32 154, label %65
    i32 151, label %69
    i32 153, label %69
    i32 138, label %73
    i32 143, label %76
    i32 136, label %80
    i32 142, label %84
    i32 137, label %94
    i32 135, label %98
    i32 147, label %101
    i32 148, label %112
    i32 149, label %123
    i32 146, label %132
    i32 144, label %140
    i32 152, label %141
  ]

54:                                               ; preds = %49
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %56 = call i32 @toggle_full_screen(%struct.TYPE_29__* %55)
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 8
  br label %265

59:                                               ; preds = %49, %49
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %61 = call i32 @toggle_pause(%struct.TYPE_29__* %60)
  br label %265

62:                                               ; preds = %49
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %64 = call i32 @toggle_mute(%struct.TYPE_29__* %63)
  br label %265

65:                                               ; preds = %49, %49
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %67 = load i32, i32* @SDL_VOLUME_STEP, align 4
  %68 = call i32 @update_volume(%struct.TYPE_29__* %66, i32 1, i32 %67)
  br label %265

69:                                               ; preds = %49, %49
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %71 = load i32, i32* @SDL_VOLUME_STEP, align 4
  %72 = call i32 @update_volume(%struct.TYPE_29__* %70, i32 -1, i32 %71)
  br label %265

73:                                               ; preds = %49
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %75 = call i32 @step_to_next_frame(%struct.TYPE_29__* %74)
  br label %265

76:                                               ; preds = %49
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %78 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %79 = call i32 @stream_cycle_channel(%struct.TYPE_29__* %77, i32 %78)
  br label %265

80:                                               ; preds = %49
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %82 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %83 = call i32 @stream_cycle_channel(%struct.TYPE_29__* %81, i32 %82)
  br label %265

84:                                               ; preds = %49
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %86 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %87 = call i32 @stream_cycle_channel(%struct.TYPE_29__* %85, i32 %86)
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %89 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %90 = call i32 @stream_cycle_channel(%struct.TYPE_29__* %88, i32 %89)
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %92 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %93 = call i32 @stream_cycle_channel(%struct.TYPE_29__* %91, i32 %92)
  br label %265

94:                                               ; preds = %49
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %96 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %97 = call i32 @stream_cycle_channel(%struct.TYPE_29__* %95, i32 %96)
  br label %265

98:                                               ; preds = %49
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %100 = call i32 @toggle_audio_display(%struct.TYPE_29__* %99)
  br label %265

101:                                              ; preds = %49
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp sle i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  store double 6.000000e+02, double* %4, align 8
  br label %142

109:                                              ; preds = %101
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %111 = call i32 @seek_chapter(%struct.TYPE_29__* %110, i32 1)
  br label %265

112:                                              ; preds = %49
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sle i32 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  store double -6.000000e+02, double* %4, align 8
  br label %142

120:                                              ; preds = %112
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %122 = call i32 @seek_chapter(%struct.TYPE_29__* %121, i32 -1)
  br label %265

123:                                              ; preds = %49
  %124 = load double, double* @seek_interval, align 8
  %125 = fcmp une double %124, 0.000000e+00
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load double, double* @seek_interval, align 8
  %128 = fneg double %127
  br label %130

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129, %126
  %131 = phi double [ %128, %126 ], [ -1.000000e+01, %129 ]
  store double %131, double* %4, align 8
  br label %142

132:                                              ; preds = %49
  %133 = load double, double* @seek_interval, align 8
  %134 = fcmp une double %133, 0.000000e+00
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load double, double* @seek_interval, align 8
  br label %138

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi double [ %136, %135 ], [ 1.000000e+01, %137 ]
  store double %139, double* %4, align 8
  br label %142

140:                                              ; preds = %49
  store double 6.000000e+01, double* %4, align 8
  br label %142

141:                                              ; preds = %49
  store double -6.000000e+01, double* %4, align 8
  br label %142

142:                                              ; preds = %141, %140, %138, %130, %119, %108
  %143 = load i32, i32* @seek_by_bytes, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %208

145:                                              ; preds = %142
  store double -1.000000e+00, double* %5, align 8
  %146 = load double, double* %5, align 8
  %147 = fcmp olt double %146, 0.000000e+00
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 9
  %151 = load i32, i32* %150, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 8
  %156 = call double @frame_queue_last_pos(i32* %155)
  store double %156, double* %5, align 8
  br label %157

157:                                              ; preds = %153, %148, %145
  %158 = load double, double* %5, align 8
  %159 = fcmp olt double %158, 0.000000e+00
  br i1 %159, label %160, label %169

160:                                              ; preds = %157
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 6
  %168 = call double @frame_queue_last_pos(i32* %167)
  store double %168, double* %5, align 8
  br label %169

169:                                              ; preds = %165, %160, %157
  %170 = load double, double* %5, align 8
  %171 = fcmp olt double %170, 0.000000e+00
  br i1 %171, label %172, label %179

172:                                              ; preds = %169
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 4
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call double @avio_tell(i32 %177)
  store double %178, double* %5, align 8
  br label %179

179:                                              ; preds = %172, %169
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 4
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 1
  %184 = load double, double* %183, align 8
  %185 = fcmp une double %184, 0.000000e+00
  br i1 %185, label %186, label %195

186:                                              ; preds = %179
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 1
  %191 = load double, double* %190, align 8
  %192 = fdiv double %191, 8.000000e+00
  %193 = load double, double* %4, align 8
  %194 = fmul double %193, %192
  store double %194, double* %4, align 8
  br label %198

195:                                              ; preds = %179
  %196 = load double, double* %4, align 8
  %197 = fmul double %196, 1.800000e+05
  store double %197, double* %4, align 8
  br label %198

198:                                              ; preds = %195, %186
  %199 = load double, double* %4, align 8
  %200 = load double, double* %5, align 8
  %201 = fadd double %200, %199
  store double %201, double* %5, align 8
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %203 = load double, double* %5, align 8
  %204 = fptosi double %203 to i32
  %205 = load double, double* %4, align 8
  %206 = fptosi double %205 to i32
  %207 = call i32 @stream_seek(%struct.TYPE_29__* %202, i32 %204, i32 %206, i32 1)
  br label %263

208:                                              ; preds = %142
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %210 = call double @get_master_clock(%struct.TYPE_29__* %209)
  store double %210, double* %5, align 8
  %211 = load double, double* %5, align 8
  %212 = call i32 @isnan(double %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %208
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %215, i32 0, i32 5
  %217 = load i64, i64* %216, align 8
  %218 = sitofp i64 %217 to double
  %219 = load double, double* @AV_TIME_BASE, align 8
  %220 = fdiv double %218, %219
  store double %220, double* %5, align 8
  br label %221

221:                                              ; preds = %214, %208
  %222 = load double, double* %4, align 8
  %223 = load double, double* %5, align 8
  %224 = fadd double %223, %222
  store double %224, double* %5, align 8
  %225 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %225, i32 0, i32 4
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %252

232:                                              ; preds = %221
  %233 = load double, double* %5, align 8
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 4
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = sitofp i32 %238 to double
  %240 = load double, double* @AV_TIME_BASE, align 8
  %241 = fdiv double %239, %240
  %242 = fcmp olt double %233, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %232
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %244, i32 0, i32 4
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = sitofp i32 %248 to double
  %250 = load double, double* @AV_TIME_BASE, align 8
  %251 = fdiv double %249, %250
  store double %251, double* %5, align 8
  br label %252

252:                                              ; preds = %243, %232, %221
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %254 = load double, double* %5, align 8
  %255 = load double, double* @AV_TIME_BASE, align 8
  %256 = fmul double %254, %255
  %257 = fptosi double %256 to i32
  %258 = load double, double* %4, align 8
  %259 = load double, double* @AV_TIME_BASE, align 8
  %260 = fmul double %258, %259
  %261 = fptosi double %260 to i32
  %262 = call i32 @stream_seek(%struct.TYPE_29__* %253, i32 %257, i32 %261, i32 0)
  br label %263

263:                                              ; preds = %252, %198
  br label %265

264:                                              ; preds = %49
  br label %265

265:                                              ; preds = %264, %263, %120, %109, %98, %94, %84, %80, %76, %73, %69, %65, %62, %59, %54
  br label %457

266:                                              ; preds = %18
  %267 = load i32, i32* @exit_on_mousedown, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %271 = call i32 @do_exit(%struct.TYPE_29__* %270)
  br label %457

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @SDL_BUTTON_LEFT, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %291

278:                                              ; preds = %272
  %279 = call i32 (...) @av_gettime_relative()
  %280 = load i32, i32* @event_loop.last_mouse_left_click, align 4
  %281 = sub nsw i32 %279, %280
  %282 = icmp sle i32 %281, 500000
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %285 = call i32 @toggle_full_screen(%struct.TYPE_29__* %284)
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 1
  store i32 1, i32* %287, align 8
  store i32 0, i32* @event_loop.last_mouse_left_click, align 4
  br label %290

288:                                              ; preds = %278
  %289 = call i32 (...) @av_gettime_relative()
  store i32 %289, i32* @event_loop.last_mouse_left_click, align 4
  br label %290

290:                                              ; preds = %288, %283
  br label %291

291:                                              ; preds = %290, %272
  br label %292

292:                                              ; preds = %18, %291
  %293 = load i32, i32* @cursor_hidden, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = call i32 @SDL_ShowCursor(i32 1)
  store i32 0, i32* @cursor_hidden, align 4
  br label %297

297:                                              ; preds = %295, %292
  %298 = call i32 (...) @av_gettime_relative()
  store i32 %298, i32* @cursor_last_shown, align 4
  %299 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp eq i32 %300, 133
  br i1 %301, label %302, label %313

302:                                              ; preds = %297
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @SDL_BUTTON_RIGHT, align 4
  %307 = icmp ne i32 %305, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %302
  br label %457

309:                                              ; preds = %302
  %310 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %310, i32 0, i32 0
  %312 = load double, double* %311, align 8
  store double %312, double* %7, align 8
  br label %325

313:                                              ; preds = %297
  %314 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @SDL_BUTTON_RMASK, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %313
  br label %457

321:                                              ; preds = %313
  %322 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 1
  %324 = load double, double* %323, align 8
  store double %324, double* %7, align 8
  br label %325

325:                                              ; preds = %321, %309
  %326 = load i32, i32* @seek_by_bytes, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %335, label %328

328:                                              ; preds = %325
  %329 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %329, i32 0, i32 4
  %331 = load %struct.TYPE_28__*, %struct.TYPE_28__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 3
  %333 = load double, double* %332, align 8
  %334 = fcmp ole double %333, 0.000000e+00
  br i1 %334, label %335, label %352

335:                                              ; preds = %328, %325
  %336 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %336, i32 0, i32 4
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 8
  %341 = call double @avio_size(i32 %340)
  store double %341, double* %8, align 8
  %342 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %343 = load double, double* %8, align 8
  %344 = load double, double* %7, align 8
  %345 = fmul double %343, %344
  %346 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %347 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %346, i32 0, i32 0
  %348 = load double, double* %347, align 8
  %349 = fdiv double %345, %348
  %350 = fptosi double %349 to i32
  %351 = call i32 @stream_seek(%struct.TYPE_29__* %342, i32 %350, i32 0, i32 1)
  br label %421

352:                                              ; preds = %328
  %353 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %354 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %353, i32 0, i32 4
  %355 = load %struct.TYPE_28__*, %struct.TYPE_28__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %355, i32 0, i32 3
  %357 = load double, double* %356, align 8
  %358 = fdiv double %357, 1.000000e+06
  %359 = fptosi double %358 to i32
  store i32 %359, i32* %14, align 4
  %360 = load i32, i32* %14, align 4
  %361 = sdiv i32 %360, 3600
  store i32 %361, i32* %15, align 4
  %362 = load i32, i32* %14, align 4
  %363 = srem i32 %362, 3600
  %364 = sdiv i32 %363, 60
  store i32 %364, i32* %16, align 4
  %365 = load i32, i32* %14, align 4
  %366 = srem i32 %365, 60
  store i32 %366, i32* %17, align 4
  %367 = load double, double* %7, align 8
  %368 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %369 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %368, i32 0, i32 0
  %370 = load double, double* %369, align 8
  %371 = fdiv double %367, %370
  store double %371, double* %6, align 8
  %372 = load double, double* %6, align 8
  %373 = load i32, i32* %14, align 4
  %374 = sitofp i32 %373 to double
  %375 = fmul double %372, %374
  %376 = fptosi double %375 to i32
  store i32 %376, i32* %10, align 4
  %377 = load i32, i32* %10, align 4
  %378 = sdiv i32 %377, 3600
  store i32 %378, i32* %11, align 4
  %379 = load i32, i32* %10, align 4
  %380 = srem i32 %379, 3600
  %381 = sdiv i32 %380, 60
  store i32 %381, i32* %12, align 4
  %382 = load i32, i32* %10, align 4
  %383 = srem i32 %382, 60
  store i32 %383, i32* %13, align 4
  %384 = load i32, i32* @AV_LOG_INFO, align 4
  %385 = load double, double* %6, align 8
  %386 = fmul double %385, 1.000000e+02
  %387 = load i32, i32* %11, align 4
  %388 = load i32, i32* %12, align 4
  %389 = load i32, i32* %13, align 4
  %390 = load i32, i32* %15, align 4
  %391 = load i32, i32* %16, align 4
  %392 = load i32, i32* %17, align 4
  %393 = call i32 @av_log(i32* null, i32 %384, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), double %386, i32 %387, i32 %388, i32 %389, i32 %390, i32 %391, i32 %392)
  %394 = load double, double* %6, align 8
  %395 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %396 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %395, i32 0, i32 4
  %397 = load %struct.TYPE_28__*, %struct.TYPE_28__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %397, i32 0, i32 3
  %399 = load double, double* %398, align 8
  %400 = fmul double %394, %399
  %401 = fptosi double %400 to i32
  store i32 %401, i32* %9, align 4
  %402 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %403 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %402, i32 0, i32 4
  %404 = load %struct.TYPE_28__*, %struct.TYPE_28__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %408 = icmp ne i32 %406, %407
  br i1 %408, label %409, label %417

409:                                              ; preds = %352
  %410 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %411 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %410, i32 0, i32 4
  %412 = load %struct.TYPE_28__*, %struct.TYPE_28__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* %9, align 4
  %416 = add nsw i32 %415, %414
  store i32 %416, i32* %9, align 4
  br label %417

417:                                              ; preds = %409, %352
  %418 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %419 = load i32, i32* %9, align 4
  %420 = call i32 @stream_seek(%struct.TYPE_29__* %418, i32 %419, i32 0, i32 0)
  br label %421

421:                                              ; preds = %417, %335
  br label %457

422:                                              ; preds = %18
  %423 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 4
  switch i32 %425, label %452 [
    i32 128, label %426
    i32 129, label %449
  ]

426:                                              ; preds = %422
  %427 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %427, i32 0, i32 0
  %429 = load double, double* %428, align 8
  %430 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %431 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %430, i32 0, i32 0
  store double %429, double* %431, align 8
  store double %429, double* @screen_width, align 8
  %432 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 8
  %435 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %436 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %435, i32 0, i32 3
  store i32 %434, i32* %436, align 8
  store i32 %434, i32* @screen_height, align 4
  %437 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %438 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %437, i32 0, i32 2
  %439 = load i32*, i32** %438, align 8
  %440 = icmp ne i32* %439, null
  br i1 %440, label %441, label %448

441:                                              ; preds = %426
  %442 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %443 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %442, i32 0, i32 2
  %444 = load i32*, i32** %443, align 8
  %445 = call i32 @SDL_DestroyTexture(i32* %444)
  %446 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %447 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %446, i32 0, i32 2
  store i32* null, i32** %447, align 8
  br label %448

448:                                              ; preds = %441, %426
  br label %449

449:                                              ; preds = %422, %448
  %450 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %451 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %450, i32 0, i32 1
  store i32 1, i32* %451, align 8
  br label %452

452:                                              ; preds = %449, %422
  br label %457

453:                                              ; preds = %18, %18
  %454 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %455 = call i32 @do_exit(%struct.TYPE_29__* %454)
  br label %457

456:                                              ; preds = %18
  br label %457

457:                                              ; preds = %456, %453, %452, %421, %320, %308, %269, %265, %40
  br label %18
}

declare dso_local i32 @refresh_loop_wait_event(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @do_exit(%struct.TYPE_29__*) #1

declare dso_local i32 @toggle_full_screen(%struct.TYPE_29__*) #1

declare dso_local i32 @toggle_pause(%struct.TYPE_29__*) #1

declare dso_local i32 @toggle_mute(%struct.TYPE_29__*) #1

declare dso_local i32 @update_volume(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @step_to_next_frame(%struct.TYPE_29__*) #1

declare dso_local i32 @stream_cycle_channel(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @toggle_audio_display(%struct.TYPE_29__*) #1

declare dso_local i32 @seek_chapter(%struct.TYPE_29__*, i32) #1

declare dso_local double @frame_queue_last_pos(i32*) #1

declare dso_local double @avio_tell(i32) #1

declare dso_local i32 @stream_seek(%struct.TYPE_29__*, i32, i32, i32) #1

declare dso_local double @get_master_clock(%struct.TYPE_29__*) #1

declare dso_local i32 @isnan(double) #1

declare dso_local i32 @av_gettime_relative(...) #1

declare dso_local i32 @SDL_ShowCursor(i32) #1

declare dso_local double @avio_size(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, double, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SDL_DestroyTexture(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
