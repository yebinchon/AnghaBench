; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_commands.c_mmalomx_commands_check_port_actions.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_commands.c_mmalomx_commands_check_port_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64, i64, %struct.TYPE_10__*, i32, i64 }
%struct.TYPE_10__ = type { i32 }

@MMALOMX_ACTION_FLUSH = common dso_local global i32 0, align 4
@MMALOMX_ACTION_PENDING_FLUSH = common dso_local global i32 0, align 4
@MMALOMX_ACTION_DISABLE = common dso_local global i32 0, align 4
@MMALOMX_ACTION_CHECK_FLUSHED = common dso_local global i32 0, align 4
@MMALOMX_ACTION_PENDING_DISABLE = common dso_local global i32 0, align 4
@MMALOMX_ACTION_ENABLE = common dso_local global i32 0, align 4
@MMALOMX_ACTION_PENDING_ENABLE = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"could not commit new format (%i)\00", align 1
@MMAL_FALSE = common dso_local global i64 0, align 8
@mmalomx_buffer_cb_io = common dso_local global i32 0, align 4
@OMX_EventError = common dso_local global i32 0, align 4
@MMALOMX_ACTION_CHECK_ALLOCATED = common dso_local global i32 0, align 4
@MMALOMX_ACTION_CHECK_DEALLOCATED = common dso_local global i32 0, align 4
@MMALOMX_ACTION_NOTIFY_FLUSH = common dso_local global i32 0, align 4
@MMALOMX_ACTION_NOTIFY_ENABLE = common dso_local global i32 0, align 4
@MMALOMX_ACTION_NOTIFY_DISABLE = common dso_local global i32 0, align 4
@OMX_EventCmdComplete = common dso_local global i32 0, align 4
@OMX_CommandFlush = common dso_local global i32 0, align 4
@OMX_CommandPortEnable = common dso_local global i32 0, align 4
@OMX_CommandPortDisable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*)* @mmalomx_commands_check_port_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmalomx_commands_check_port_actions(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = call i32 @MMALOMX_LOCK_PORT(i32* %7, %struct.TYPE_9__* %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = call i32 @MMALOMX_UNLOCK_PORT(i32* %15, %struct.TYPE_9__* %16)
  br label %310

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MMALOMX_ACTION_FLUSH, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load i32, i32* @MMALOMX_ACTION_FLUSH, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @MMALOMX_ACTION_PENDING_FLUSH, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @MMALOMX_ACTION_PENDING_FLUSH, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %25, %18
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MMALOMX_ACTION_DISABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %40
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MMALOMX_ACTION_CHECK_FLUSHED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %52, %47
  %60 = load i32, i32* @MMALOMX_ACTION_DISABLE, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @MMALOMX_ACTION_PENDING_DISABLE, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @MMALOMX_ACTION_PENDING_DISABLE, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %59, %52, %40
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MMALOMX_ACTION_ENABLE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %74
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %81
  %87 = load i32, i32* @MMALOMX_ACTION_ENABLE, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* @MMALOMX_ACTION_PENDING_ENABLE, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* @MMALOMX_ACTION_PENDING_ENABLE, align 4
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %86, %81, %74
  %102 = load i32*, i32** %3, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %104 = call i32 @MMALOMX_UNLOCK_PORT(i32* %102, %struct.TYPE_9__* %103)
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @MMALOMX_ACTION_PENDING_FLUSH, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = call i32 @mmal_port_flush(%struct.TYPE_10__* %112)
  br label %114

114:                                              ; preds = %109, %101
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @MMALOMX_ACTION_PENDING_DISABLE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %144

119:                                              ; preds = %114
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 5
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = call i32 @mmal_port_disable(%struct.TYPE_10__* %122)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %119
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = call i64 @mmal_port_format_commit(%struct.TYPE_10__* %131)
  store i64 %132, i64* %6, align 8
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* @MMAL_SUCCESS, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i64, i64* %6, align 8
  %138 = call i32 @LOG_WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %137)
  br label %139

139:                                              ; preds = %136, %128
  %140 = load i64, i64* @MMAL_FALSE, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 7
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %139, %119
  br label %144

144:                                              ; preds = %143, %114
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @MMALOMX_ACTION_PENDING_ENABLE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %179

149:                                              ; preds = %144
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 5
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = load i32, i32* @mmalomx_buffer_cb_io, align 4
  %154 = call i64 @mmal_port_enable(%struct.TYPE_10__* %152, i32 %153)
  store i64 %154, i64* %6, align 8
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @MMAL_SUCCESS, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %149
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 5
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @mmal_pool_resize(i32 %161, i32 %166, i32 0)
  store i64 %167, i64* %6, align 8
  br label %168

168:                                              ; preds = %158, %149
  %169 = load i64, i64* %6, align 8
  %170 = load i64, i64* @MMAL_SUCCESS, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load i32*, i32** %3, align 8
  %174 = load i32, i32* @OMX_EventError, align 4
  %175 = load i64, i64* %6, align 8
  %176 = call i32 @mmalil_error_to_omx(i64 %175)
  %177 = call i32 @mmalomx_callback_event_handler(i32* %173, i32 %174, i32 %176, i32 0, i32* null)
  br label %178

178:                                              ; preds = %172, %168
  br label %179

179:                                              ; preds = %178, %144
  %180 = load i32*, i32** %3, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = call i32 @MMALOMX_LOCK_PORT(i32* %180, %struct.TYPE_9__* %181)
  %183 = load i32, i32* %5, align 4
  %184 = xor i32 %183, -1
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @MMALOMX_ACTION_CHECK_ALLOCATED, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %179
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load i32, i32* @MMALOMX_ACTION_CHECK_ALLOCATED, align 4
  %202 = xor i32 %201, -1
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %200, %195, %179
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @MMALOMX_ACTION_CHECK_DEALLOCATED, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %207
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %226, label %219

219:                                              ; preds = %214
  %220 = load i32, i32* @MMALOMX_ACTION_CHECK_DEALLOCATED, align 4
  %221 = xor i32 %220, -1
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = and i32 %224, %221
  store i32 %225, i32* %223, align 8
  br label %226

226:                                              ; preds = %219, %214, %207
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @MMALOMX_ACTION_CHECK_FLUSHED, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %245

233:                                              ; preds = %226
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %233
  %239 = load i32, i32* @MMALOMX_ACTION_CHECK_FLUSHED, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 8
  br label %245

245:                                              ; preds = %238, %233, %226
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  store i32 %248, i32* %5, align 4
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @MMALOMX_ACTION_NOTIFY_FLUSH, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %266, label %254

254:                                              ; preds = %245
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @MMALOMX_ACTION_NOTIFY_ENABLE, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %266, label %260

260:                                              ; preds = %254
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @MMALOMX_ACTION_NOTIFY_DISABLE, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %260, %254, %245
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  store i32 0, i32* %268, align 8
  br label %269

269:                                              ; preds = %266, %260
  %270 = load i32*, i32** %3, align 8
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %272 = call i32 @MMALOMX_UNLOCK_PORT(i32* %270, %struct.TYPE_9__* %271)
  %273 = load i32, i32* %5, align 4
  %274 = load i32, i32* @MMALOMX_ACTION_NOTIFY_FLUSH, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %284

276:                                              ; preds = %269
  %277 = load i32*, i32** %3, align 8
  %278 = load i32, i32* @OMX_EventCmdComplete, align 4
  %279 = load i32, i32* @OMX_CommandFlush, align 4
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @mmalomx_callback_event_handler(i32* %277, i32 %278, i32 %279, i32 %282, i32* null)
  br label %310

284:                                              ; preds = %269
  %285 = load i32, i32* %5, align 4
  %286 = load i32, i32* @MMALOMX_ACTION_NOTIFY_ENABLE, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %296

288:                                              ; preds = %284
  %289 = load i32*, i32** %3, align 8
  %290 = load i32, i32* @OMX_EventCmdComplete, align 4
  %291 = load i32, i32* @OMX_CommandPortEnable, align 4
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @mmalomx_callback_event_handler(i32* %289, i32 %290, i32 %291, i32 %294, i32* null)
  br label %309

296:                                              ; preds = %284
  %297 = load i32, i32* %5, align 4
  %298 = load i32, i32* @MMALOMX_ACTION_NOTIFY_DISABLE, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %308

300:                                              ; preds = %296
  %301 = load i32*, i32** %3, align 8
  %302 = load i32, i32* @OMX_EventCmdComplete, align 4
  %303 = load i32, i32* @OMX_CommandPortDisable, align 4
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @mmalomx_callback_event_handler(i32* %301, i32 %302, i32 %303, i32 %306, i32* null)
  br label %308

308:                                              ; preds = %300, %296
  br label %309

309:                                              ; preds = %308, %288
  br label %310

310:                                              ; preds = %14, %309, %276
  ret void
}

declare dso_local i32 @MMALOMX_LOCK_PORT(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @MMALOMX_UNLOCK_PORT(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @mmal_port_flush(%struct.TYPE_10__*) #1

declare dso_local i32 @mmal_port_disable(%struct.TYPE_10__*) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_10__*) #1

declare dso_local i32 @LOG_WARN(i8*, i64) #1

declare dso_local i64 @mmal_port_enable(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @mmal_pool_resize(i32, i32, i32) #1

declare dso_local i32 @mmalomx_callback_event_handler(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @mmalil_error_to_omx(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
