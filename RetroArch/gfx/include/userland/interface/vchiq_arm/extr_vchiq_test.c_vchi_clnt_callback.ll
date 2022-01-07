; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_vchi_clnt_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_vchi_clnt_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@g_mutex = common dso_local global i32 0, align 4
@VCHI_CALLBACK_MSG_AVAILABLE = common dso_local global i64 0, align 8
@g_sync_mode = common dso_local global i32 0, align 4
@vchi_clnt_callback.pong_buf = internal global [100 x i8] zeroinitializer, align 16
@VCHI_FLAGS_NONE = common dso_local global i32 0, align 4
@g_server_error = common dso_local global i8* null, align 8
@g_server_reply = common dso_local global i32 0, align 4
@VCHI_CALLBACK_BULK_SENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"  BULK_TRANSMIT_DONE(%d)\00", align 1
@bulk_tx_received = common dso_local global i32 0, align 4
@bulk_tx_sent = common dso_local global i32 0, align 4
@g_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@bulk_tx_data = common dso_local global i64* null, align 8
@NUM_BULK_BUFS = common dso_local global i32 0, align 4
@VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE = common dso_local global i32 0, align 4
@VCHI_FLAGS_BLOCK_UNTIL_QUEUED = common dso_local global i32 0, align 4
@VCHI_CALLBACK_BULK_RECEIVED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"  BULK_RECEIVE_DONE(%d): data '%s'\00", align 1
@bulk_rx_data = common dso_local global i64* null, align 8
@bulk_rx_received = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"* Data corruption - %x, %x, %x\00", align 1
@VCOS_BKPT = common dso_local global i32 0, align 4
@bulk_rx_sent = common dso_local global i32 0, align 4
@VCHI_CALLBACK_BULK_TRANSMIT_ABORTED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"  BULK_TRANSMIT_ABORTED(%d)\00", align 1
@VCHI_CALLBACK_BULK_RECEIVE_ABORTED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"  BULK_RECEIVE_ABORTED(%d)\00", align 1
@g_shutdown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*)* @vchi_clnt_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vchi_clnt_callback(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = call i32 @vcos_mutex_lock(i32* @g_mutex)
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @VCHI_CALLBACK_MSG_AVAILABLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %3
  %21 = load i32, i32* @g_sync_mode, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @VCHI_FLAGS_NONE, align 4
  %27 = call i64 @vchi_msg_dequeue(i32 %25, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @vchi_clnt_callback.pong_buf, i64 0, i64 0), i32 100, i32* %8, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @vchi_clnt_callback.pong_buf, i64 0, i64 0), i8** @g_server_error, align 8
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @vcos_event_signal(i32* @g_server_reply)
  br label %39

38:                                               ; preds = %33
  br label %24

39:                                               ; preds = %36, %24
  br label %40

40:                                               ; preds = %39, %20
  br label %208

41:                                               ; preds = %3
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @VCHI_CALLBACK_BULK_SENT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %86

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @bulk_tx_received, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @vcos_event_signal(i32* @g_server_reply)
  br label %85

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @bulk_tx_received, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @vcos_assert(i32 %58)
  %60 = load i32, i32* @bulk_tx_received, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @bulk_tx_received, align 4
  %62 = load i32, i32* @bulk_tx_sent, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 0), align 8
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %54
  %66 = load i32, i32* %7, align 4
  %67 = load i64*, i64** @bulk_tx_data, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @NUM_BULK_BUFS, align 4
  %70 = srem i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %67, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 1), align 4
  %75 = load i32, i32* @VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE, align 4
  %76 = load i32, i32* @VCHI_FLAGS_BLOCK_UNTIL_QUEUED, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @bulk_tx_sent, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @vchi_bulk_queue_transmit(i32 %66, i64 %73, i32 %74, i32 %77, i8* %80)
  %82 = load i32, i32* @bulk_tx_sent, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @bulk_tx_sent, align 4
  br label %84

84:                                               ; preds = %65, %54
  br label %85

85:                                               ; preds = %84, %52
  br label %207

86:                                               ; preds = %41
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* @VCHI_CALLBACK_BULK_RECEIVED, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %186

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i64*, i64** @bulk_rx_data, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @NUM_BULK_BUFS, align 4
  %97 = srem i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %94, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %93, i64 %100)
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @bulk_rx_received, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @vcos_assert(i32 %105)
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 2), align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %147

109:                                              ; preds = %90
  %110 = load i64*, i64** @bulk_tx_data, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @NUM_BULK_BUFS, align 4
  %113 = srem i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %110, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** @bulk_rx_data, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @NUM_BULK_BUFS, align 4
  %120 = srem i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %117, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 1), align 4
  %125 = call i64 @mem_check(i64 %116, i64 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %109
  %128 = load i64*, i64** @bulk_tx_data, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @NUM_BULK_BUFS, align 4
  %131 = srem i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %128, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = load i64*, i64** @bulk_rx_data, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @NUM_BULK_BUFS, align 4
  %139 = srem i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %136, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 1), align 4
  %145 = call i32 @vcos_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %135, i32 %143, i32 %144)
  %146 = load i32, i32* @VCOS_BKPT, align 4
  br label %147

147:                                              ; preds = %127, %109, %90
  %148 = load i32, i32* @bulk_rx_received, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @bulk_rx_received, align 4
  %150 = load i32, i32* @bulk_rx_sent, align 4
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 0), align 8
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %185

153:                                              ; preds = %147
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 2), align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load i64*, i64** @bulk_rx_data, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @NUM_BULK_BUFS, align 4
  %160 = srem i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %157, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 1), align 4
  %165 = call i32 @memset(i64 %163, i32 255, i32 %164)
  br label %166

166:                                              ; preds = %156, %153
  %167 = load i32, i32* %7, align 4
  %168 = load i64*, i64** @bulk_rx_data, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @NUM_BULK_BUFS, align 4
  %171 = srem i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %168, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 1), align 4
  %176 = load i32, i32* @VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE, align 4
  %177 = load i32, i32* @VCHI_FLAGS_BLOCK_UNTIL_QUEUED, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @bulk_rx_sent, align 4
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to i8*
  %182 = call i32 @vchi_bulk_queue_receive(i32 %167, i64 %174, i32 %175, i32 %178, i8* %181)
  %183 = load i32, i32* @bulk_rx_sent, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* @bulk_rx_sent, align 4
  br label %185

185:                                              ; preds = %166, %147
  br label %206

186:                                              ; preds = %86
  %187 = load i64, i64* %5, align 8
  %188 = load i64, i64* @VCHI_CALLBACK_BULK_TRANSMIT_ABORTED, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load i8*, i8** %6, align 8
  %192 = ptrtoint i8* %191 to i32
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @vcos_log_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %193)
  br label %205

195:                                              ; preds = %186
  %196 = load i64, i64* %5, align 8
  %197 = load i64, i64* @VCHI_CALLBACK_BULK_RECEIVE_ABORTED, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %195
  %200 = load i8*, i8** %6, align 8
  %201 = ptrtoint i8* %200 to i32
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @vcos_log_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %199, %195
  br label %205

205:                                              ; preds = %204, %190
  br label %206

206:                                              ; preds = %205, %185
  br label %207

207:                                              ; preds = %206, %85
  br label %208

208:                                              ; preds = %207, %40
  %209 = load i32, i32* @bulk_tx_received, align 4
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 0), align 8
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %208
  %213 = load i32, i32* @bulk_rx_received, align 4
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 0), align 8
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = call i32 @vcos_event_signal(i32* @g_shutdown)
  br label %218

218:                                              ; preds = %216, %212, %208
  %219 = call i32 @vcos_mutex_unlock(i32* @g_mutex)
  ret void
}

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i64 @vchi_msg_dequeue(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @vcos_event_signal(i32*) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, ...) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vchi_bulk_queue_transmit(i32, i64, i32, i32, i8*) #1

declare dso_local i64 @mem_check(i64, i64, i32) #1

declare dso_local i32 @vcos_log_error(i8*, i32, i32, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @vchi_bulk_queue_receive(i32, i64, i32, i32, i8*) #1

declare dso_local i32 @vcos_log_info(i8*, i32) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
