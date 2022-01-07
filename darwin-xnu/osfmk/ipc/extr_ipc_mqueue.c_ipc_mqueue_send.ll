; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32* }

@MACH_SEND_ALWAYS = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_PORT_SEND_ONCE = common dso_local global i64 0, align 8
@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@TURNSTILE_INHERITOR_NULL = common dso_local global i32 0, align 4
@MACH_SEND_TIMEOUT = common dso_local global i32 0, align 4
@MACH_SEND_TIMED_OUT = common dso_local global i32 0, align 4
@MACH_SEND_NO_BUFFER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@kThreadWaitPortSend = common dso_local global i32 0, align 4
@TURNSTILE_SYNC_IPC = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@TURNSTILE_DELAYED_UPDATE = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_TURNSTILE = common dso_local global i32 0, align 4
@IPC_MQUEUE_FULL = common dso_local global i32 0, align 4
@THREAD_ABORTSAFE = common dso_local global i32 0, align 4
@TIMEOUT_URGENCY_USER_NORMAL = common dso_local global i32 0, align 4
@TIMEOUT_NO_LEEWAY = common dso_local global i32 0, align 4
@TURNSTILE_INTERLOCK_NOT_HELD = common dso_local global i32 0, align 4
@THREAD_WAITING = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@c_ipc_mqueue_send_block = common dso_local global i32 0, align 4
@MACH_SEND_INTERRUPTED = common dso_local global i32 0, align 4
@MACH_SEND_INVALID_DEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ipc_mqueue_send\00", align 1
@MACH_MSG_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_mqueue_send(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.turnstile*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = call i32 @imq_full(%struct.TYPE_20__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %4
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = call i64 @imq_full_kernel(%struct.TYPE_20__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MACH_SEND_ALWAYS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @MACH_MSGH_BITS_REMOTE(i32 %33)
  %35 = load i64, i64* @MACH_MSG_TYPE_PORT_SEND_ONCE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %28, %23, %4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = call i32 @imq_unlock(%struct.TYPE_20__* %48)
  br label %177

50:                                               ; preds = %28, %19
  %51 = call i32 (...) @current_thread()
  store i32 %51, i32* %11, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = call %struct.TYPE_19__* @ip_from_mq(%struct.TYPE_20__* %52)
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %12, align 8
  %54 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %54, %struct.turnstile** %13, align 8
  %55 = load i32, i32* @TURNSTILE_INHERITOR_NULL, align 4
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MACH_SEND_TIMEOUT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load i64, i64* %9, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %65 = call i32 @imq_unlock(%struct.TYPE_20__* %64)
  %66 = load i32, i32* @MACH_SEND_TIMED_OUT, align 4
  store i32 %66, i32* %5, align 4
  br label %183

67:                                               ; preds = %60, %50
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %69 = call i64 @imq_full_kernel(%struct.TYPE_20__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %73 = call i32 @imq_unlock(%struct.TYPE_20__* %72)
  %74 = load i32, i32* @MACH_SEND_NO_BUFFER, align 4
  store i32 %74, i32* %5, align 4
  br label %183

75:                                               ; preds = %67
  %76 = load i32, i32* @TRUE, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @MACH_SEND_TIMEOUT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load i64, i64* %9, align 8
  %85 = load i32, i32* @NSEC_PER_USEC, align 4
  %86 = mul nsw i32 1000, %85
  %87 = call i32 @clock_interval_to_deadline(i64 %84, i32 %86, i64* %15)
  br label %89

88:                                               ; preds = %75
  store i64 0, i64* %15, align 8
  br label %89

89:                                               ; preds = %88, %83
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @kThreadWaitPortSend, align 4
  %92 = call i32 @thread_set_pending_block_hint(i32 %90, i32 %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %94 = ptrtoint %struct.TYPE_19__* %93 to i64
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %96 = call i32 @port_send_turnstile_address(%struct.TYPE_19__* %95)
  %97 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %98 = load i32, i32* @TURNSTILE_SYNC_IPC, align 4
  %99 = call %struct.turnstile* @turnstile_prepare(i64 %94, i32 %96, %struct.turnstile* %97, i32 %98)
  store %struct.turnstile* %99, %struct.turnstile** %13, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %101 = call i64 @ip_active(%struct.TYPE_19__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %89
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MACH_PORT_NULL, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @port_send_turnstile(i32* %117)
  store i32 %118, i32* %14, align 4
  br label %122

119:                                              ; preds = %109, %103, %89
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %121 = call i32 @ipc_port_get_inheritor(%struct.TYPE_19__* %120)
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %119, %114
  %123 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @TURNSTILE_DELAYED_UPDATE, align 4
  %126 = load i32, i32* @TURNSTILE_INHERITOR_TURNSTILE, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @turnstile_update_inheritor(%struct.turnstile* %123, i32 %124, i32 %127)
  %129 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %130 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %129, i32 0, i32 0
  %131 = load i32, i32* @IPC_MQUEUE_FULL, align 4
  %132 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %133 = load i32, i32* @TIMEOUT_URGENCY_USER_NORMAL, align 4
  %134 = load i64, i64* %15, align 8
  %135 = load i32, i32* @TIMEOUT_NO_LEEWAY, align 4
  %136 = call i32 @waitq_assert_wait64_leeway(i32* %130, i32 %131, i32 %132, i32 %133, i64 %134, i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %138 = call i32 @imq_unlock(%struct.TYPE_20__* %137)
  %139 = load %struct.turnstile*, %struct.turnstile** %13, align 8
  %140 = load i32, i32* @TURNSTILE_INTERLOCK_NOT_HELD, align 4
  %141 = call i32 @turnstile_update_inheritor_complete(%struct.turnstile* %139, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @THREAD_WAITING, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %122
  %146 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %147 = call i32 @thread_block(i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* @c_ipc_mqueue_send_block, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @c_ipc_mqueue_send_block, align 4
  %150 = call i32 @counter(i32 %148)
  br label %151

151:                                              ; preds = %145, %122
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %153 = call i32 @imq_lock(%struct.TYPE_20__* %152)
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %155 = ptrtoint %struct.TYPE_19__* %154 to i64
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %157 = call i32 @port_send_turnstile_address(%struct.TYPE_19__* %156)
  %158 = call i32 @turnstile_complete(i64 %155, i32 %157, i32* null)
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %160 = call i32 @imq_unlock(%struct.TYPE_20__* %159)
  %161 = call i32 (...) @turnstile_cleanup()
  %162 = load i32, i32* %10, align 4
  switch i32 %162, label %174 [
    i32 131, label %163
    i32 128, label %164
    i32 130, label %170
    i32 129, label %172
  ]

163:                                              ; preds = %151
  br label %176

164:                                              ; preds = %151
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @MACH_SEND_TIMEOUT, align 4
  %167 = and i32 %165, %166
  %168 = call i32 @assert(i32 %167)
  %169 = load i32, i32* @MACH_SEND_TIMED_OUT, align 4
  store i32 %169, i32* %5, align 4
  br label %183

170:                                              ; preds = %151
  %171 = load i32, i32* @MACH_SEND_INTERRUPTED, align 4
  store i32 %171, i32* %5, align 4
  br label %183

172:                                              ; preds = %151
  %173 = load i32, i32* @MACH_SEND_INVALID_DEST, align 4
  store i32 %173, i32* %5, align 4
  br label %183

174:                                              ; preds = %151
  %175 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %163
  br label %177

177:                                              ; preds = %176, %37
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @ipc_mqueue_post(%struct.TYPE_20__* %178, %struct.TYPE_21__* %179, i32 %180)
  %182 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %177, %172, %170, %164, %71, %63
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @imq_full(%struct.TYPE_20__*) #1

declare dso_local i64 @imq_full_kernel(%struct.TYPE_20__*) #1

declare dso_local i64 @MACH_MSGH_BITS_REMOTE(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @imq_unlock(%struct.TYPE_20__*) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local %struct.TYPE_19__* @ip_from_mq(%struct.TYPE_20__*) #1

declare dso_local i32 @clock_interval_to_deadline(i64, i32, i64*) #1

declare dso_local i32 @thread_set_pending_block_hint(i32, i32) #1

declare dso_local %struct.turnstile* @turnstile_prepare(i64, i32, %struct.turnstile*, i32) #1

declare dso_local i32 @port_send_turnstile_address(%struct.TYPE_19__*) #1

declare dso_local i64 @ip_active(%struct.TYPE_19__*) #1

declare dso_local i32 @port_send_turnstile(i32*) #1

declare dso_local i32 @ipc_port_get_inheritor(%struct.TYPE_19__*) #1

declare dso_local i32 @turnstile_update_inheritor(%struct.turnstile*, i32, i32) #1

declare dso_local i32 @waitq_assert_wait64_leeway(i32*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @turnstile_update_inheritor_complete(%struct.turnstile*, i32) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i32 @counter(i32) #1

declare dso_local i32 @imq_lock(%struct.TYPE_20__*) #1

declare dso_local i32 @turnstile_complete(i64, i32, i32*) #1

declare dso_local i32 @turnstile_cleanup(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ipc_mqueue_post(%struct.TYPE_20__*, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
