; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_importance.c_ipc_importance_check_circularity.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_importance.c_ipc_importance_check_circularity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.TYPE_20__ = type { i64, i32, i64, i64, i64, i32, %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }

@IIT_NULL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@IP_NULL = common dso_local global %struct.TYPE_20__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@TURNSTILE_SYNC_IPC = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_TURNSTILE = common dso_local global i32 0, align 4
@TURNSTILE_IMMEDIATE_UPDATE = common dso_local global i32 0, align 4
@TASK_NULL = common dso_local global %struct.TYPE_18__* null, align 8
@TURNSTILE_INTERLOCK_NOT_HELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_importance_check_circularity(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.turnstile*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %16 = load i64, i64* @IIT_NULL, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* @IIT_NULL, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %19, %struct.turnstile** %11, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %22 = icmp ne %struct.TYPE_20__* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %27 = icmp ne %struct.TYPE_20__* %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = icmp eq %struct.TYPE_20__* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %3, align 4
  br label %454

35:                                               ; preds = %2
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %36, %struct.TYPE_20__** %10, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = call i32 @ipc_port_send_turnstile_prepare(%struct.TYPE_20__* %37)
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %8, align 4
  %45 = call i32 (...) @ipc_importance_lock()
  br label %46

46:                                               ; preds = %43, %35
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = call i32 @ip_lock(%struct.TYPE_20__* %47)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %53
  %57 = call i32 (...) @ipc_importance_lock_try()
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = call i32 @ip_unlock(%struct.TYPE_20__* %60)
  %62 = call i32 (...) @ipc_importance_lock()
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %64 = call i32 @ip_lock(%struct.TYPE_20__* %63)
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %53, %46
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = call i64 @ip_lock_try(%struct.TYPE_20__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %73 = call i32 @ip_active(%struct.TYPE_20__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MACH_PORT_NULL, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 7
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %86 = icmp eq %struct.TYPE_20__* %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81, %75, %71
  br label %182

88:                                               ; preds = %81
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %90 = call i32 @ip_unlock(%struct.TYPE_20__* %89)
  br label %91

91:                                               ; preds = %88, %67
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %93 = call i32 @ip_unlock(%struct.TYPE_20__* %92)
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = call i32 (...) @ipc_importance_lock()
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %91
  %100 = call i32 (...) @ipc_port_multiple_lock()
  br label %101

101:                                              ; preds = %120, %99
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %103 = call i32 @ip_lock(%struct.TYPE_20__* %102)
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %105 = call i32 @ip_active(%struct.TYPE_20__* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %101
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @MACH_PORT_NULL, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 7
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %115, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %118 = icmp eq %struct.TYPE_20__* %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113, %107, %101
  br label %124

120:                                              ; preds = %113
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 7
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  store %struct.TYPE_20__* %123, %struct.TYPE_20__** %10, align 8
  br label %101

124:                                              ; preds = %119
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %127 = icmp eq %struct.TYPE_20__* %125, %126
  br i1 %127, label %128, label %178

128:                                              ; preds = %124
  %129 = call i32 (...) @ipc_port_multiple_unlock()
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %131 = call i32 @ip_active(%struct.TYPE_20__* %130)
  %132 = call i32 @assert(i32 %131)
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @MACH_PORT_NULL, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 7
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %144 = icmp eq %struct.TYPE_20__* %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %147, %struct.TYPE_20__** %10, align 8
  br label %148

148:                                              ; preds = %152, %128
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %151 = icmp ne %struct.TYPE_20__* %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %148
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %154 = call i32 @ip_active(%struct.TYPE_20__* %153)
  %155 = call i32 @assert(i32 %154)
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @MACH_PORT_NULL, align 8
  %160 = icmp eq i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 7
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  store %struct.TYPE_20__* %165, %struct.TYPE_20__** %12, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %167 = call i32 @ip_unlock(%struct.TYPE_20__* %166)
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %168, %struct.TYPE_20__** %10, align 8
  br label %148

169:                                              ; preds = %148
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = call i32 (...) @ipc_importance_unlock()
  br label %174

174:                                              ; preds = %172, %169
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %176 = call i32 @ipc_port_send_turnstile_complete(%struct.TYPE_20__* %175)
  %177 = load i32, i32* @TRUE, align 4
  store i32 %177, i32* %3, align 4
  br label %454

178:                                              ; preds = %124
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %180 = call i32 @ip_lock(%struct.TYPE_20__* %179)
  %181 = call i32 (...) @ipc_port_multiple_unlock()
  br label %182

182:                                              ; preds = %178, %87
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 5
  %185 = call i32 @imq_lock(i32* %184)
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %187 = call i32 @ip_active(%struct.TYPE_20__* %186)
  %188 = call i32 @assert(i32 %187)
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @MACH_PORT_NULL, align 8
  %193 = icmp eq i64 %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 7
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %197, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %200 = icmp eq %struct.TYPE_20__* %198, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %204 = call i32 @ip_reference(%struct.TYPE_20__* %203)
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 7
  store %struct.TYPE_20__* %205, %struct.TYPE_20__** %207, align 8
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %7, align 8
  %217 = load i64, i64* @IIT_NULL, align 8
  %218 = load i64, i64* %7, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %182
  %221 = load i64, i64* @IIT_NULL, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 4
  store i64 %221, i64* %223, align 8
  br label %224

224:                                              ; preds = %220, %182
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %9, align 4
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 3
  store i64 0, i64* %229, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %231 = call i64 @port_send_turnstile(%struct.TYPE_20__* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %224
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %235 = ptrtoint %struct.TYPE_20__* %234 to i64
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %237 = call i32 @port_send_turnstile_address(%struct.TYPE_20__* %236)
  %238 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %239 = load i32, i32* @TURNSTILE_SYNC_IPC, align 4
  %240 = call %struct.turnstile* @turnstile_prepare(i64 %235, i32 %237, %struct.turnstile* %238, i32 %239)
  store %struct.turnstile* %240, %struct.turnstile** %11, align 8
  %241 = load %struct.turnstile*, %struct.turnstile** %11, align 8
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %243 = call i64 @port_send_turnstile(%struct.TYPE_20__* %242)
  %244 = load i32, i32* @TURNSTILE_INHERITOR_TURNSTILE, align 4
  %245 = load i32, i32* @TURNSTILE_IMMEDIATE_UPDATE, align 4
  %246 = or i32 %244, %245
  %247 = call i32 @turnstile_update_inheritor(%struct.turnstile* %241, i64 %243, i32 %246)
  br label %248

248:                                              ; preds = %233, %224
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 5
  %251 = call i32 @imq_unlock(i32* %250)
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %253 = call i32 @ip_unlock(%struct.TYPE_20__* %252)
  br label %254

254:                                              ; preds = %263, %248
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %256 = load i32, i32* %9, align 4
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %258 = call i32 @ipc_port_impcount_delta(%struct.TYPE_20__* %255, i32 %256, %struct.TYPE_20__* %257)
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %261 = icmp eq %struct.TYPE_20__* %259, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %254
  br label %293

263:                                              ; preds = %254
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %265 = call i32 @ip_active(%struct.TYPE_20__* %264)
  %266 = call i32 @assert(i32 %265)
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @MACH_PORT_NULL, align 8
  %271 = icmp eq i64 %269, %270
  %272 = zext i1 %271 to i32
  %273 = call i32 @assert(i32 %272)
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 7
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %275, align 8
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %278 = icmp ne %struct.TYPE_20__* %276, %277
  %279 = zext i1 %278 to i32
  %280 = call i32 @assert(i32 %279)
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = icmp eq i64 %283, 0
  %285 = zext i1 %284 to i32
  %286 = call i32 @assert(i32 %285)
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 7
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %288, align 8
  store %struct.TYPE_20__* %289, %struct.TYPE_20__** %13, align 8
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %291 = call i32 @ip_unlock(%struct.TYPE_20__* %290)
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %292, %struct.TYPE_20__** %5, align 8
  br label %254

293:                                              ; preds = %262
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %295 = call i32 @ip_active(%struct.TYPE_20__* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %309

297:                                              ; preds = %293
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @MACH_PORT_NULL, align 8
  %302 = icmp ne i64 %300, %301
  br i1 %302, label %309, label %303

303:                                              ; preds = %297
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 7
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %305, align 8
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** @IP_NULL, align 8
  %308 = icmp eq %struct.TYPE_20__* %306, %307
  br label %309

309:                                              ; preds = %303, %297, %293
  %310 = phi i1 [ true, %297 ], [ true, %293 ], [ %308, %303 ]
  %311 = zext i1 %310 to i32
  %312 = call i32 @assert(i32 %311)
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %314 = call i32 @ip_active(%struct.TYPE_20__* %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %379

316:                                              ; preds = %309
  %317 = load i32, i32* %9, align 4
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %379

319:                                              ; preds = %316
  %320 = load i32, i32* %8, align 4
  %321 = call i32 @assert(i32 %320)
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 3
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %340

326:                                              ; preds = %319
  %327 = load i64, i64* @IIT_NULL, align 8
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %328, i32 0, i32 4
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %327, %330
  br i1 %331, label %332, label %339

332:                                              ; preds = %326
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 4
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %6, align 8
  %336 = load i64, i64* %6, align 8
  %337 = call i32 @ipc_importance_task_is_any_receiver_type(i64 %336)
  %338 = call i32 @assert(i32 %337)
  br label %339

339:                                              ; preds = %332, %326
  br label %371

340:                                              ; preds = %319
  %341 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %341, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @MACH_PORT_NULL, align 8
  %345 = icmp ne i64 %343, %344
  br i1 %345, label %346, label %370

346:                                              ; preds = %340
  %347 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %347, i32 0, i32 6
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %348, align 8
  store %struct.TYPE_19__* %349, %struct.TYPE_19__** %14, align 8
  %350 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %351 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_18__*, %struct.TYPE_18__** %351, align 8
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** @TASK_NULL, align 8
  %354 = icmp ne %struct.TYPE_18__* %352, %353
  br i1 %354, label %355, label %369

355:                                              ; preds = %346
  %356 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %357 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_18__*, %struct.TYPE_18__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = call i32 @ipc_importance_task_is_any_receiver_type(i64 %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %355
  %364 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %6, align 8
  br label %369

369:                                              ; preds = %363, %355, %346
  br label %370

370:                                              ; preds = %369, %340
  br label %371

371:                                              ; preds = %370, %339
  %372 = load i64, i64* %6, align 8
  %373 = load i64, i64* @IIT_NULL, align 8
  %374 = icmp ne i64 %372, %373
  br i1 %374, label %375, label %378

375:                                              ; preds = %371
  %376 = load i64, i64* %6, align 8
  %377 = call i32 @ipc_importance_task_reference(i64 %376)
  br label %378

378:                                              ; preds = %375, %371
  br label %379

379:                                              ; preds = %378, %316, %309
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %381 = call i32 @ip_unlock(%struct.TYPE_20__* %380)
  %382 = load i64, i64* %6, align 8
  %383 = load i64, i64* %7, align 8
  %384 = icmp ne i64 %382, %383
  %385 = zext i1 %384 to i32
  store i32 %385, i32* %15, align 4
  %386 = load i64, i64* %6, align 8
  %387 = load i64, i64* @IIT_NULL, align 8
  %388 = icmp ne i64 %386, %387
  br i1 %388, label %389, label %399

389:                                              ; preds = %379
  %390 = load i32, i32* %8, align 4
  %391 = call i32 @assert(i32 %390)
  %392 = load i32, i32* %15, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %389
  %395 = load i64, i64* %6, align 8
  %396 = load i32, i32* %9, align 4
  %397 = call i32 @ipc_importance_task_hold_internal_assertion_locked(i64 %395, i32 %396)
  br label %398

398:                                              ; preds = %394, %389
  br label %399

399:                                              ; preds = %398, %379
  %400 = load i64, i64* %7, align 8
  %401 = load i64, i64* @IIT_NULL, align 8
  %402 = icmp ne i64 %400, %401
  br i1 %402, label %403, label %413

403:                                              ; preds = %399
  %404 = load i32, i32* %8, align 4
  %405 = call i32 @assert(i32 %404)
  %406 = load i32, i32* %15, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %412

408:                                              ; preds = %403
  %409 = load i64, i64* %7, align 8
  %410 = load i32, i32* %9, align 4
  %411 = call i32 @ipc_importance_task_drop_internal_assertion_locked(i64 %409, i32 %410)
  br label %412

412:                                              ; preds = %408, %403
  br label %413

413:                                              ; preds = %412, %399
  %414 = load i32, i32* %8, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %413
  %417 = call i32 (...) @ipc_importance_unlock()
  br label %418

418:                                              ; preds = %416, %413
  %419 = load %struct.turnstile*, %struct.turnstile** %11, align 8
  %420 = icmp ne %struct.turnstile* %419, null
  br i1 %420, label %421, label %438

421:                                              ; preds = %418
  %422 = load %struct.turnstile*, %struct.turnstile** %11, align 8
  %423 = load i32, i32* @TURNSTILE_INTERLOCK_NOT_HELD, align 4
  %424 = call i32 @turnstile_update_inheritor_complete(%struct.turnstile* %422, i32 %423)
  %425 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %425, i32 0, i32 5
  %427 = call i32 @imq_lock(i32* %426)
  %428 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %429 = ptrtoint %struct.TYPE_20__* %428 to i64
  %430 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %431 = call i32 @port_send_turnstile_address(%struct.TYPE_20__* %430)
  %432 = call i32 @turnstile_complete(i64 %429, i32 %431, i32* null)
  %433 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %433, %struct.turnstile** %11, align 8
  %434 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %434, i32 0, i32 5
  %436 = call i32 @imq_unlock(i32* %435)
  %437 = call i32 (...) @turnstile_cleanup()
  br label %438

438:                                              ; preds = %421, %418
  %439 = load i64, i64* %6, align 8
  %440 = load i64, i64* @IIT_NULL, align 8
  %441 = icmp ne i64 %439, %440
  br i1 %441, label %442, label %445

442:                                              ; preds = %438
  %443 = load i64, i64* %6, align 8
  %444 = call i32 @ipc_importance_task_release(i64 %443)
  br label %445

445:                                              ; preds = %442, %438
  %446 = load i64, i64* %7, align 8
  %447 = load i64, i64* @IIT_NULL, align 8
  %448 = icmp ne i64 %446, %447
  br i1 %448, label %449, label %452

449:                                              ; preds = %445
  %450 = load i64, i64* %7, align 8
  %451 = call i32 @ipc_importance_task_release(i64 %450)
  br label %452

452:                                              ; preds = %449, %445
  %453 = load i32, i32* @FALSE, align 4
  store i32 %453, i32* %3, align 4
  br label %454

454:                                              ; preds = %452, %174, %33
  %455 = load i32, i32* %3, align 4
  ret i32 %455
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ipc_port_send_turnstile_prepare(%struct.TYPE_20__*) #1

declare dso_local i32 @ipc_importance_lock(...) #1

declare dso_local i32 @ip_lock(%struct.TYPE_20__*) #1

declare dso_local i32 @ipc_importance_lock_try(...) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_20__*) #1

declare dso_local i64 @ip_lock_try(%struct.TYPE_20__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_20__*) #1

declare dso_local i32 @ipc_port_multiple_lock(...) #1

declare dso_local i32 @ipc_port_multiple_unlock(...) #1

declare dso_local i32 @ipc_importance_unlock(...) #1

declare dso_local i32 @ipc_port_send_turnstile_complete(%struct.TYPE_20__*) #1

declare dso_local i32 @imq_lock(i32*) #1

declare dso_local i32 @ip_reference(%struct.TYPE_20__*) #1

declare dso_local i64 @port_send_turnstile(%struct.TYPE_20__*) #1

declare dso_local %struct.turnstile* @turnstile_prepare(i64, i32, %struct.turnstile*, i32) #1

declare dso_local i32 @port_send_turnstile_address(%struct.TYPE_20__*) #1

declare dso_local i32 @turnstile_update_inheritor(%struct.turnstile*, i64, i32) #1

declare dso_local i32 @imq_unlock(i32*) #1

declare dso_local i32 @ipc_port_impcount_delta(%struct.TYPE_20__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @ipc_importance_task_is_any_receiver_type(i64) #1

declare dso_local i32 @ipc_importance_task_reference(i64) #1

declare dso_local i32 @ipc_importance_task_hold_internal_assertion_locked(i64, i32) #1

declare dso_local i32 @ipc_importance_task_drop_internal_assertion_locked(i64, i32) #1

declare dso_local i32 @turnstile_update_inheritor_complete(%struct.turnstile*, i32) #1

declare dso_local i32 @turnstile_complete(i64, i32, i32*) #1

declare dso_local i32 @turnstile_cleanup(...) #1

declare dso_local i32 @ipc_importance_task_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
