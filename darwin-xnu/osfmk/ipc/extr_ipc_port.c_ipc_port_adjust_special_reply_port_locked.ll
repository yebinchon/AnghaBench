; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_adjust_special_reply_port_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_adjust_special_reply_port_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.turnstile*, %struct.knote*, %struct.TYPE_12__* }
%struct.knote = type { i32 }

@IPC_PORT_NULL = common dso_local global i8* null, align 8
@TURNSTILE_INHERITOR_NULL = common dso_local global %struct.turnstile* null, align 8
@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@IPC_PORT_ADJUST_SR_RECEIVED_MSG = common dso_local global i32 0, align 4
@PORT_SYNC_LINK_ANY = common dso_local global i32 0, align 4
@IPC_PORT_ADJUST_SR_CLEAR_SPECIAL_REPLY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@IPC_PORT_ADJUST_SR_LINK_WORKLOOP = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_PORT_SEND_ONCE = common dso_local global i32 0, align 4
@IPC_PORT_ADJUST_SR_ALLOW_SYNC_LINKAGE = common dso_local global i32 0, align 4
@IPC_PORT_ADJUST_SR_ENABLE_EVENT = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_TURNSTILE = common dso_local global i32 0, align 4
@TURNSTILE_IMMEDIATE_UPDATE = common dso_local global i32 0, align 4
@TURNSTILE_INTERLOCK_NOT_HELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_port_adjust_special_reply_port_locked(%struct.TYPE_12__* %0, %struct.knote* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.knote*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.turnstile*, align 8
  %12 = alloca %struct.turnstile*, align 8
  %13 = alloca %struct.turnstile*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.knote* %1, %struct.knote** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load i8*, i8** @IPC_PORT_NULL, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %9, align 8
  store i32 131, i32* %10, align 4
  %16 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_INHERITOR_NULL, align 8
  store %struct.turnstile* %16, %struct.turnstile** %11, align 8
  %17 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %17, %struct.turnstile** %12, align 8
  %18 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %18, %struct.turnstile** %13, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = call i32 @imq_lock(i32* %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @IPC_PORT_ADJUST_SR_RECEIVED_MSG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = call i32 @reset_ip_srp_msg_sent(%struct.TYPE_12__* %27)
  br label %29

29:                                               ; preds = %26, %4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PORT_SYNC_LINK_ANY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34, %29
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = ptrtoint %struct.TYPE_12__* %44 to i64
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = call i32 @port_rcv_turnstile_address(%struct.TYPE_12__* %46)
  %48 = call i32 @turnstile_complete(i64 %45, i32 %47, i32* null)
  br label %49

49:                                               ; preds = %43, %40
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = call i32 @imq_unlock(i32* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = call i32 @ip_unlock(%struct.TYPE_12__* %53)
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 (...) @turnstile_cleanup()
  br label %59

59:                                               ; preds = %57, %49
  br label %225

60:                                               ; preds = %34
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @IPC_PORT_ADJUST_SR_CLEAR_SPECIAL_REPLY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @FALSE, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = call i32 @reset_ip_srp_bits(%struct.TYPE_12__* %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 131
  br i1 %78, label %79, label %85

79:                                               ; preds = %65
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = call i32 @imq_unlock(i32* %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = call i32 @ip_unlock(%struct.TYPE_12__* %83)
  br label %225

85:                                               ; preds = %65
  br label %122

86:                                               ; preds = %60
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @IPC_PORT_ADJUST_SR_LINK_WORKLOOP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %86
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @PORT_SYNC_LINK_ANY, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 130
  br i1 %101, label %102, label %112

102:                                              ; preds = %97, %91
  %103 = load %struct.knote*, %struct.knote** %6, align 8
  %104 = load i32, i32* @MACH_MSG_TYPE_PORT_SEND_ONCE, align 4
  %105 = call i64 @ITH_KNOTE_VALID(%struct.knote* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.knote*, %struct.knote** %6, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = call %struct.turnstile* @filt_machport_stash_port(%struct.knote* %108, %struct.TYPE_12__* %109, i32* %10)
  store %struct.turnstile* %110, %struct.turnstile** %11, align 8
  br label %111

111:                                              ; preds = %107, %102
  br label %112

112:                                              ; preds = %111, %97
  br label %121

113:                                              ; preds = %86
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @IPC_PORT_ADJUST_SR_ALLOW_SYNC_LINKAGE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @PORT_SYNC_LINK_ANY, align 4
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %118, %113
  br label %121

121:                                              ; preds = %120, %112
  br label %122

122:                                              ; preds = %121, %85
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  switch i32 %125, label %143 [
    i32 130, label %126
    i32 129, label %134
    i32 128, label %137
  ]

126:                                              ; preds = %122
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  store %struct.TYPE_12__* %129, %struct.TYPE_12__** %9, align 8
  %130 = load i8*, i8** @IPC_PORT_NULL, align 8
  %131 = bitcast i8* %130 to %struct.TYPE_12__*
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 5
  store %struct.TYPE_12__* %131, %struct.TYPE_12__** %133, align 8
  br label %143

134:                                              ; preds = %122
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 4
  store %struct.knote* null, %struct.knote** %136, align 8
  br label %143

137:                                              ; preds = %122
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 3
  %140 = load %struct.turnstile*, %struct.turnstile** %139, align 8
  store %struct.turnstile* %140, %struct.turnstile** %12, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 3
  store %struct.turnstile* null, %struct.turnstile** %142, align 8
  br label %143

143:                                              ; preds = %122, %137, %134, %126
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %10, align 4
  switch i32 %147, label %167 [
    i32 129, label %148
    i32 128, label %152
    i32 131, label %158
  ]

148:                                              ; preds = %143
  %149 = load %struct.knote*, %struct.knote** %6, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 4
  store %struct.knote* %149, %struct.knote** %151, align 8
  br label %167

152:                                              ; preds = %143
  %153 = load %struct.turnstile*, %struct.turnstile** %11, align 8
  %154 = call i32 @turnstile_reference(%struct.turnstile* %153)
  %155 = load %struct.turnstile*, %struct.turnstile** %11, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 3
  store %struct.turnstile* %155, %struct.turnstile** %157, align 8
  br label %167

158:                                              ; preds = %143
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @IPC_PORT_ADJUST_SR_ENABLE_EVENT, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %165 = call i32 @set_ip_srp_lost_link(%struct.TYPE_12__* %164)
  br label %166

166:                                              ; preds = %163, %158
  br label %167

167:                                              ; preds = %143, %166, %152, %148
  %168 = load i64, i64* %8, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %172 = ptrtoint %struct.TYPE_12__* %171 to i64
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %174 = call i32 @port_rcv_turnstile_address(%struct.TYPE_12__* %173)
  %175 = call i32 @turnstile_complete(i64 %172, i32 %174, i32* null)
  br label %191

176:                                              ; preds = %167
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %178 = call %struct.turnstile* @ipc_port_rcv_turnstile(%struct.TYPE_12__* %177)
  store %struct.turnstile* %178, %struct.turnstile** %13, align 8
  %179 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %180 = icmp ne %struct.turnstile* %179, null
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %183 = call i32 @turnstile_reference(%struct.turnstile* %182)
  %184 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %185 = load %struct.turnstile*, %struct.turnstile** %11, align 8
  %186 = load i32, i32* @TURNSTILE_INHERITOR_TURNSTILE, align 4
  %187 = load i32, i32* @TURNSTILE_IMMEDIATE_UPDATE, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @turnstile_update_inheritor(%struct.turnstile* %184, %struct.turnstile* %185, i32 %188)
  br label %190

190:                                              ; preds = %181, %176
  br label %191

191:                                              ; preds = %190, %170
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  %194 = call i32 @imq_unlock(i32* %193)
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %196 = call i32 @ip_unlock(%struct.TYPE_12__* %195)
  %197 = load i64, i64* %8, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %191
  %200 = call i32 (...) @turnstile_cleanup()
  br label %211

201:                                              ; preds = %191
  %202 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %203 = icmp ne %struct.turnstile* %202, null
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %206 = load i32, i32* @TURNSTILE_INTERLOCK_NOT_HELD, align 4
  %207 = call i32 @turnstile_update_inheritor_complete(%struct.turnstile* %205, i32 %206)
  %208 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %209 = call i32 @turnstile_deallocate_safe(%struct.turnstile* %208)
  br label %210

210:                                              ; preds = %204, %201
  br label %211

211:                                              ; preds = %210, %199
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %213 = icmp ne %struct.TYPE_12__* %212, null
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %216 = call i32 @ipc_port_send_turnstile_complete(%struct.TYPE_12__* %215)
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %218 = call i32 @ip_release(%struct.TYPE_12__* %217)
  br label %219

219:                                              ; preds = %214, %211
  %220 = load %struct.turnstile*, %struct.turnstile** %12, align 8
  %221 = icmp ne %struct.turnstile* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load %struct.turnstile*, %struct.turnstile** %12, align 8
  %224 = call i32 @turnstile_deallocate_safe(%struct.turnstile* %223)
  br label %225

225:                                              ; preds = %59, %79, %222, %219
  ret void
}

declare dso_local i32 @imq_lock(i32*) #1

declare dso_local i32 @reset_ip_srp_msg_sent(%struct.TYPE_12__*) #1

declare dso_local i32 @turnstile_complete(i64, i32, i32*) #1

declare dso_local i32 @port_rcv_turnstile_address(%struct.TYPE_12__*) #1

declare dso_local i32 @imq_unlock(i32*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_12__*) #1

declare dso_local i32 @turnstile_cleanup(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @reset_ip_srp_bits(%struct.TYPE_12__*) #1

declare dso_local i64 @ITH_KNOTE_VALID(%struct.knote*, i32) #1

declare dso_local %struct.turnstile* @filt_machport_stash_port(%struct.knote*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @turnstile_reference(%struct.turnstile*) #1

declare dso_local i32 @set_ip_srp_lost_link(%struct.TYPE_12__*) #1

declare dso_local %struct.turnstile* @ipc_port_rcv_turnstile(%struct.TYPE_12__*) #1

declare dso_local i32 @turnstile_update_inheritor(%struct.turnstile*, %struct.turnstile*, i32) #1

declare dso_local i32 @turnstile_update_inheritor_complete(%struct.turnstile*, i32) #1

declare dso_local i32 @turnstile_deallocate_safe(%struct.turnstile*) #1

declare dso_local i32 @ipc_port_send_turnstile_complete(%struct.TYPE_12__*) #1

declare dso_local i32 @ip_release(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
