; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_receive_on_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_receive_on_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_27__, i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i64, i32 }
%struct.TYPE_25__ = type { i64 }

@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@THREAD_RESTART = common dso_local global i64 0, align 8
@IMQ_NULL = common dso_local global %struct.TYPE_26__* null, align 8
@mqueue_process_prepost_receive = common dso_local global i32 0, align 4
@MACH_PEEK_MSG = common dso_local global i32 0, align 4
@THREAD_NOT_WAITING = common dso_local global i64 0, align 8
@IKM_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Unknown mqueue type 0x%x: likely memory corruption!\0A\00", align 1
@MACH_RCV_TIMEOUT = common dso_local global i32 0, align 4
@MACH_RCV_TIMED_OUT = common dso_local global i32 0, align 4
@MACH_PEEK_IN_PROGRESS = common dso_local global i32 0, align 4
@MACH_RCV_IN_PROGRESS = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@TURNSTILE_SYNC_IPC = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_TURNSTILE = common dso_local global i32 0, align 4
@TURNSTILE_DELAYED_UPDATE = common dso_local global i32 0, align 4
@kThreadWaitPortReceive = common dso_local global i32 0, align 4
@IPC_MQUEUE_RECEIVE = common dso_local global i32 0, align 4
@TIMEOUT_URGENCY_USER_NORMAL = common dso_local global i32 0, align 4
@TIMEOUT_NO_LEEWAY = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"ipc_mqueue_receive_on_thread: sleep walking\00", align 1
@TURNSTILE_INTERLOCK_NOT_HELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_mqueue_receive_on_thread(%struct.TYPE_26__* %0, i32 %1, i32 %2, i64 %3, i32 %4, %struct.TYPE_24__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.turnstile*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_24__* %5, %struct.TYPE_24__** %13, align 8
  %21 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %21, %struct.turnstile** %16, align 8
  store i32* null, i32** %17, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %23 = call i32 @imq_valid(%struct.TYPE_26__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %27 = call i32 @imq_unlock(%struct.TYPE_26__* %26)
  %28 = load i64, i64* @THREAD_RESTART, align 8
  store i64 %28, i64* %7, align 8
  br label %212

29:                                               ; preds = %6
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %31 = call i64 @imq_is_set(%struct.TYPE_26__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** @IMQ_NULL, align 8
  store %struct.TYPE_26__* %34, %struct.TYPE_26__** %18, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 2
  %37 = load i32, i32* @mqueue_process_prepost_receive, align 4
  %38 = call i32 @waitq_set_iterate_preposts(i32* %36, %struct.TYPE_26__** %18, i32 %37)
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** @IMQ_NULL, align 8
  %41 = icmp ne %struct.TYPE_26__* %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %33
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %44 = call i32 @imq_unlock(%struct.TYPE_26__* %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MACH_PEEK_MSG, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %53 = call i32 @ipc_mqueue_peek_on_thread(%struct.TYPE_26__* %50, i32 %51, %struct.TYPE_24__* %52)
  br label %61

54:                                               ; preds = %42
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %60 = call i32 @ipc_mqueue_select_on_thread(%struct.TYPE_26__* %55, %struct.TYPE_26__* %56, i32 %57, i32 %58, %struct.TYPE_24__* %59)
  br label %61

61:                                               ; preds = %54, %49
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %63 = call i32 @imq_unlock(%struct.TYPE_26__* %62)
  %64 = load i64, i64* @THREAD_NOT_WAITING, align 8
  store i64 %64, i64* %7, align 8
  br label %212

65:                                               ; preds = %33
  br label %106

66:                                               ; preds = %29
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %68 = call i64 @imq_is_queue(%struct.TYPE_26__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %66
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 1
  store i32* %72, i32** %19, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = call i64 @ipc_kmsg_queue_first(i32* %73)
  %75 = load i64, i64* @IKM_NULL, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @MACH_PEEK_MSG, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %86 = call i32 @ipc_mqueue_peek_on_thread(%struct.TYPE_26__* %83, i32 %84, %struct.TYPE_24__* %85)
  br label %94

87:                                               ; preds = %77
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** @IMQ_NULL, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %93 = call i32 @ipc_mqueue_select_on_thread(%struct.TYPE_26__* %88, %struct.TYPE_26__* %89, i32 %90, i32 %91, %struct.TYPE_24__* %92)
  br label %94

94:                                               ; preds = %87, %82
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %96 = call i32 @imq_unlock(%struct.TYPE_26__* %95)
  %97 = load i64, i64* @THREAD_NOT_WAITING, align 8
  store i64 %97, i64* %7, align 8
  br label %212

98:                                               ; preds = %70
  br label %105

99:                                               ; preds = %66
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %98
  br label %106

106:                                              ; preds = %105, %65
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @MACH_RCV_TIMEOUT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load i64, i64* %11, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %116 = call i32 @imq_unlock(%struct.TYPE_26__* %115)
  %117 = load i32, i32* @MACH_RCV_TIMED_OUT, align 4
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i64, i64* @THREAD_NOT_WAITING, align 8
  store i64 %120, i64* %7, align 8
  br label %212

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %106
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 2
  store i64 0, i64* %130, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @MACH_PEEK_MSG, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %122
  %136 = load i32, i32* @MACH_PEEK_IN_PROGRESS, align 4
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %143

139:                                              ; preds = %122
  %140 = load i32, i32* @MACH_RCV_IN_PROGRESS, align 4
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %135
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @MACH_RCV_TIMEOUT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i64, i64* %11, align 8
  %150 = load i32, i32* @NSEC_PER_USEC, align 4
  %151 = mul nsw i32 1000, %150
  %152 = call i32 @clock_interval_to_deadline(i64 %149, i32 %151, i64* %15)
  br label %154

153:                                              ; preds = %143
  store i64 0, i64* %15, align 8
  br label %154

154:                                              ; preds = %153, %148
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %156 = call i64 @imq_is_queue(%struct.TYPE_26__* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %182

158:                                              ; preds = %154
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %160 = call %struct.TYPE_25__* @ip_from_mq(%struct.TYPE_26__* %159)
  store %struct.TYPE_25__* %160, %struct.TYPE_25__** %20, align 8
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %162 = ptrtoint %struct.TYPE_25__* %161 to i64
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %164 = call i32 @port_rcv_turnstile_address(%struct.TYPE_25__* %163)
  %165 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %166 = load i32, i32* @TURNSTILE_SYNC_IPC, align 4
  %167 = call %struct.turnstile* @turnstile_prepare(i64 %162, i32 %164, %struct.turnstile* %165, i32 %166)
  store %struct.turnstile* %167, %struct.turnstile** %16, align 8
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %158
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %174 = call i32* @ipc_port_get_special_reply_port_inheritor(%struct.TYPE_25__* %173)
  store i32* %174, i32** %17, align 8
  br label %175

175:                                              ; preds = %172, %158
  %176 = load %struct.turnstile*, %struct.turnstile** %16, align 8
  %177 = load i32*, i32** %17, align 8
  %178 = load i32, i32* @TURNSTILE_INHERITOR_TURNSTILE, align 4
  %179 = load i32, i32* @TURNSTILE_DELAYED_UPDATE, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @turnstile_update_inheritor(%struct.turnstile* %176, i32* %177, i32 %180)
  br label %182

182:                                              ; preds = %175, %154
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %184 = load i32, i32* @kThreadWaitPortReceive, align 4
  %185 = call i32 @thread_set_pending_block_hint(%struct.TYPE_24__* %183, i32 %184)
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 0
  %188 = load i32, i32* @IPC_MQUEUE_RECEIVE, align 4
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @TIMEOUT_URGENCY_USER_NORMAL, align 4
  %191 = load i64, i64* %15, align 8
  %192 = load i32, i32* @TIMEOUT_NO_LEEWAY, align 4
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %194 = call i64 @waitq_assert_wait64_locked(%struct.TYPE_27__* %187, i32 %188, i32 %189, i32 %190, i64 %191, i32 %192, %struct.TYPE_24__* %193)
  store i64 %194, i64* %14, align 8
  %195 = load i64, i64* %14, align 8
  %196 = load i64, i64* @THREAD_AWAKENED, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %182
  %199 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %182
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %202 = call i32 @imq_unlock(%struct.TYPE_26__* %201)
  %203 = load %struct.turnstile*, %struct.turnstile** %16, align 8
  %204 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %205 = icmp ne %struct.turnstile* %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = load %struct.turnstile*, %struct.turnstile** %16, align 8
  %208 = load i32, i32* @TURNSTILE_INTERLOCK_NOT_HELD, align 4
  %209 = call i32 @turnstile_update_inheritor_complete(%struct.turnstile* %207, i32 %208)
  br label %210

210:                                              ; preds = %206, %200
  %211 = load i64, i64* %14, align 8
  store i64 %211, i64* %7, align 8
  br label %212

212:                                              ; preds = %210, %114, %94, %61, %25
  %213 = load i64, i64* %7, align 8
  ret i64 %213
}

declare dso_local i32 @imq_valid(%struct.TYPE_26__*) #1

declare dso_local i32 @imq_unlock(%struct.TYPE_26__*) #1

declare dso_local i64 @imq_is_set(%struct.TYPE_26__*) #1

declare dso_local i32 @waitq_set_iterate_preposts(i32*, %struct.TYPE_26__**, i32) #1

declare dso_local i32 @ipc_mqueue_peek_on_thread(%struct.TYPE_26__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @ipc_mqueue_select_on_thread(%struct.TYPE_26__*, %struct.TYPE_26__*, i32, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @imq_is_queue(%struct.TYPE_26__*) #1

declare dso_local i64 @ipc_kmsg_queue_first(i32*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @clock_interval_to_deadline(i64, i32, i64*) #1

declare dso_local %struct.TYPE_25__* @ip_from_mq(%struct.TYPE_26__*) #1

declare dso_local %struct.turnstile* @turnstile_prepare(i64, i32, %struct.turnstile*, i32) #1

declare dso_local i32 @port_rcv_turnstile_address(%struct.TYPE_25__*) #1

declare dso_local i32* @ipc_port_get_special_reply_port_inheritor(%struct.TYPE_25__*) #1

declare dso_local i32 @turnstile_update_inheritor(%struct.turnstile*, i32*, i32) #1

declare dso_local i32 @thread_set_pending_block_hint(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @waitq_assert_wait64_locked(%struct.TYPE_27__*, i32, i32, i32, i64, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @turnstile_update_inheritor_complete(%struct.turnstile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
