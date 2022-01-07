; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_check_circularity.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_check_circularity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_16__* }
%struct.turnstile = type { i32 }

@IP_NULL = common dso_local global %struct.TYPE_16__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@TURNSTILE_SYNC_IPC = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_TURNSTILE = common dso_local global i32 0, align 4
@TURNSTILE_IMMEDIATE_UPDATE = common dso_local global i32 0, align 4
@TURNSTILE_INTERLOCK_NOT_HELD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_port_check_circularity(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.turnstile*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %12 = icmp ne %struct.TYPE_16__* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %17 = icmp ne %struct.TYPE_16__* %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = icmp eq %struct.TYPE_16__* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %3, align 4
  br label %257

25:                                               ; preds = %2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %6, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = call i32 @ipc_port_send_turnstile_prepare(%struct.TYPE_16__* %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = call i32 @ip_lock(%struct.TYPE_16__* %29)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = call i64 @ip_lock_try(%struct.TYPE_16__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %25
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = call i32 @ip_active(%struct.TYPE_16__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MACH_PORT_NULL, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %49 = icmp eq %struct.TYPE_16__* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %38, %34
  br label %134

51:                                               ; preds = %44
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = call i32 @ip_unlock(%struct.TYPE_16__* %52)
  br label %54

54:                                               ; preds = %51, %25
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = call i32 @ip_unlock(%struct.TYPE_16__* %55)
  %57 = call i32 (...) @ipc_port_multiple_lock()
  br label %58

58:                                               ; preds = %77, %54
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = call i32 @ip_lock(%struct.TYPE_16__* %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = call i32 @ip_active(%struct.TYPE_16__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MACH_PORT_NULL, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %75 = icmp eq %struct.TYPE_16__* %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70, %64, %58
  br label %81

77:                                               ; preds = %70
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %6, align 8
  br label %58

81:                                               ; preds = %76
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = icmp eq %struct.TYPE_16__* %82, %83
  br i1 %84, label %85, label %130

85:                                               ; preds = %81
  %86 = call i32 (...) @ipc_port_multiple_unlock()
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = call i32 @ip_active(%struct.TYPE_16__* %87)
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MACH_PORT_NULL, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %101 = icmp eq %struct.TYPE_16__* %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %104, %struct.TYPE_16__** %6, align 8
  br label %105

105:                                              ; preds = %109, %85
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %108 = icmp ne %struct.TYPE_16__* %106, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %105
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = call i32 @ip_active(%struct.TYPE_16__* %110)
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MACH_PORT_NULL, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  store %struct.TYPE_16__* %122, %struct.TYPE_16__** %7, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = call i32 @ip_unlock(%struct.TYPE_16__* %123)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %125, %struct.TYPE_16__** %6, align 8
  br label %105

126:                                              ; preds = %105
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %128 = call i32 @ipc_port_send_turnstile_complete(%struct.TYPE_16__* %127)
  %129 = load i32, i32* @TRUE, align 4
  store i32 %129, i32* %3, align 4
  br label %257

130:                                              ; preds = %81
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %132 = call i32 @ip_lock(%struct.TYPE_16__* %131)
  %133 = call i32 (...) @ipc_port_multiple_unlock()
  br label %134

134:                                              ; preds = %130, %50
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = call i32 @imq_lock(i32* %136)
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %139 = call i32 @ip_active(%struct.TYPE_16__* %138)
  %140 = call i32 @assert(i32 %139)
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @MACH_PORT_NULL, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %152 = icmp eq %struct.TYPE_16__* %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %156 = call i32 @ip_reference(%struct.TYPE_16__* %155)
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  store %struct.TYPE_16__* %157, %struct.TYPE_16__** %159, align 8
  %160 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %160, %struct.turnstile** %8, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %162 = call i64 @port_send_turnstile(%struct.TYPE_16__* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %134
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = ptrtoint %struct.TYPE_16__* %165 to i64
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %168 = call i32 @port_send_turnstile_address(%struct.TYPE_16__* %167)
  %169 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %170 = load i32, i32* @TURNSTILE_SYNC_IPC, align 4
  %171 = call %struct.turnstile* @turnstile_prepare(i64 %166, i32 %168, %struct.turnstile* %169, i32 %170)
  store %struct.turnstile* %171, %struct.turnstile** %8, align 8
  %172 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %174 = call i64 @port_send_turnstile(%struct.TYPE_16__* %173)
  %175 = load i32, i32* @TURNSTILE_INHERITOR_TURNSTILE, align 4
  %176 = load i32, i32* @TURNSTILE_IMMEDIATE_UPDATE, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @turnstile_update_inheritor(%struct.turnstile* %172, i64 %174, i32 %177)
  br label %179

179:                                              ; preds = %164, %134
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = call i32 @imq_unlock(i32* %181)
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %184 = call i32 @ip_unlock(%struct.TYPE_16__* %183)
  br label %185

185:                                              ; preds = %190, %179
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %188 = icmp eq %struct.TYPE_16__* %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %214

190:                                              ; preds = %185
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %192 = call i32 @ip_active(%struct.TYPE_16__* %191)
  %193 = call i32 @assert(i32 %192)
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @MACH_PORT_NULL, align 8
  %198 = icmp eq i64 %196, %197
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert(i32 %199)
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %202, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %205 = icmp ne %struct.TYPE_16__* %203, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  store %struct.TYPE_16__* %210, %struct.TYPE_16__** %9, align 8
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %212 = call i32 @ip_unlock(%struct.TYPE_16__* %211)
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %213, %struct.TYPE_16__** %5, align 8
  br label %185

214:                                              ; preds = %189
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %216 = call i32 @ip_active(%struct.TYPE_16__* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %214
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @MACH_PORT_NULL, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %230, label %224

224:                                              ; preds = %218
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %226, align 8
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IP_NULL, align 8
  %229 = icmp eq %struct.TYPE_16__* %227, %228
  br label %230

230:                                              ; preds = %224, %218, %214
  %231 = phi i1 [ true, %218 ], [ true, %214 ], [ %229, %224 ]
  %232 = zext i1 %231 to i32
  %233 = call i32 @assert(i32 %232)
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %235 = call i32 @ip_unlock(%struct.TYPE_16__* %234)
  %236 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %237 = icmp ne %struct.turnstile* %236, null
  br i1 %237, label %238, label %255

238:                                              ; preds = %230
  %239 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %240 = load i32, i32* @TURNSTILE_INTERLOCK_NOT_HELD, align 4
  %241 = call i32 @turnstile_update_inheritor_complete(%struct.turnstile* %239, i32 %240)
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 1
  %244 = call i32 @imq_lock(i32* %243)
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %246 = ptrtoint %struct.TYPE_16__* %245 to i64
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %248 = call i32 @port_send_turnstile_address(%struct.TYPE_16__* %247)
  %249 = call i32 @turnstile_complete(i64 %246, i32 %248, i32* null)
  %250 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %250, %struct.turnstile** %8, align 8
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 1
  %253 = call i32 @imq_unlock(i32* %252)
  %254 = call i32 (...) @turnstile_cleanup()
  br label %255

255:                                              ; preds = %238, %230
  %256 = load i32, i32* @FALSE, align 4
  store i32 %256, i32* %3, align 4
  br label %257

257:                                              ; preds = %255, %126, %23
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ipc_port_send_turnstile_prepare(%struct.TYPE_16__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_16__*) #1

declare dso_local i64 @ip_lock_try(%struct.TYPE_16__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_16__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_16__*) #1

declare dso_local i32 @ipc_port_multiple_lock(...) #1

declare dso_local i32 @ipc_port_multiple_unlock(...) #1

declare dso_local i32 @ipc_port_send_turnstile_complete(%struct.TYPE_16__*) #1

declare dso_local i32 @imq_lock(i32*) #1

declare dso_local i32 @ip_reference(%struct.TYPE_16__*) #1

declare dso_local i64 @port_send_turnstile(%struct.TYPE_16__*) #1

declare dso_local %struct.turnstile* @turnstile_prepare(i64, i32, %struct.turnstile*, i32) #1

declare dso_local i32 @port_send_turnstile_address(%struct.TYPE_16__*) #1

declare dso_local i32 @turnstile_update_inheritor(%struct.turnstile*, i64, i32) #1

declare dso_local i32 @imq_unlock(i32*) #1

declare dso_local i32 @turnstile_update_inheritor_complete(%struct.turnstile*, i32) #1

declare dso_local i32 @turnstile_complete(i64, i32, i32*) #1

declare dso_local i32 @turnstile_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
