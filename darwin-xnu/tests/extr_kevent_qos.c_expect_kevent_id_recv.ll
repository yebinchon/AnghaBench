; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_expect_kevent_id_recv.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_expect_kevent_id_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent_qos_s = type { i32, i32, i32, i32, i32, i32, i32 }

@ENV_VAR_QOS = common dso_local global i32 0, align 4
@g_expected_qos = common dso_local global i32* null, align 8
@g_expected_qos_name = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [27 x i8] c"workloop_cb_test_intransit\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@worker_cb = common dso_local global i32 0, align 4
@event_cb = common dso_local global i32 0, align 4
@workloop_cb_test_intransit = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"workloop_cb_test_sync_send\00", align 1
@workloop_cb_test_sync_send = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"workloop_cb_test_sync_send_and_enable\00", align 1
@workloop_cb_test_sync_send_and_enable = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"workloop_cb_test_send_two_sync\00", align 1
@workloop_cb_test_send_two_sync = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"workloop_cb_test_two_send_and_destroy\00", align 1
@workloop_cb_test_two_send_and_destroy = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"workloop_cb_test_sync_send_reply\00", align 1
@workloop_cb_test_sync_send_reply = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"workloop_cb_test_sync_send_deallocate\00", align 1
@workloop_cb_test_sync_send_deallocate = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"workloop_cb_test_sync_send_reply_kevent\00", align 1
@workloop_cb_test_sync_send_reply_kevent = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"workloop_cb_test_sync_send_reply_kevent_pthread\00", align 1
@workloop_cb_test_sync_send_reply_kevent_pthread = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [40 x i8] c"workloop_cb_test_sync_send_kevent_reply\00", align 1
@workloop_cb_test_sync_send_kevent_reply = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [38 x i8] c"workloop_cb_test_sync_send_do_nothing\00", align 1
@workloop_cb_test_sync_send_do_nothing = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [53 x i8] c"workloop_cb_test_sync_send_do_nothing_kevent_pthread\00", align 1
@workloop_cb_test_sync_send_do_nothing_kevent_pthread = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [43 x i8] c"workloop_cb_test_sync_send_do_nothing_exit\00", align 1
@workloop_cb_test_sync_send_do_nothing_exit = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [53 x i8] c"workloop_cb_test_sync_send_reply_kevent_reply_kevent\00", align 1
@workloop_cb_test_sync_send_reply_kevent_reply_kevent = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [53 x i8] c"workloop_cb_test_sync_send_kevent_reply_reply_kevent\00", align 1
@workloop_cb_test_sync_send_kevent_reply_reply_kevent = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [53 x i8] c"workloop_cb_test_sync_send_kevent_reply_kevent_reply\00", align 1
@workloop_cb_test_sync_send_kevent_reply_kevent_reply = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [53 x i8] c"workloop_cb_test_sync_send_reply_kevent_kevent_reply\00", align 1
@workloop_cb_test_sync_send_reply_kevent_kevent_reply = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [33 x i8] c"no workloop function specified \0A\00", align 1
@EV_ADD = common dso_local global i32 0, align 4
@EV_UDATA_SPECIFIC = common dso_local global i32 0, align 4
@EV_DISPATCH = common dso_local global i32 0, align 4
@EV_VANISHED = common dso_local global i32 0, align 4
@MACH_RCV_MSG = common dso_local global i32 0, align 4
@MACH_RCV_LARGE = common dso_local global i32 0, align 4
@MACH_RCV_LARGE_IDENTITY = common dso_local global i32 0, align 4
@MACH_RCV_TRAILER_CTX = common dso_local global i32 0, align 4
@MACH_MSG_TRAILER_FORMAT_0 = common dso_local global i32 0, align 4
@ENV_QOS_QUEUE_OVERRIDE = common dso_local global i64 0, align 8
@EVFILT_MACHPORT = common dso_local global i32 0, align 4
@KEVENT_FLAG_WORKLOOP = common dso_local global i32 0, align 4
@KEVENT_FLAG_ERROR_EVENTS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"kevent_id\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"no errors returned from kevent_id\00", align 1
@HELPER_TIMEOUT_SECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8**, i8*)* @expect_kevent_id_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expect_kevent_id_recv(i32 %0, i32* %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x %struct.kevent_qos_s], align 16
  %12 = alloca [1 x %struct.kevent_qos_s], align 16
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %36, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @ENV_VAR_QOS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @g_expected_qos, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %22, i32* %26, align 4
  %27 = load i8**, i8*** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** @g_expected_qos_name, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  store i8* %31, i8** %35, align 8
  br label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %13

39:                                               ; preds = %13
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* @T_QUIET, align 4
  %45 = load i32, i32* @worker_cb, align 4
  %46 = load i32, i32* @event_cb, align 4
  %47 = load i64, i64* @workloop_cb_test_intransit, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @_pthread_workqueue_init_with_workloop(i32 %45, i32 %46, i32 %48, i32 0, i32 0)
  %50 = call i32 @T_ASSERT_POSIX_ZERO(i32 %49, i32* null)
  br label %261

51:                                               ; preds = %39
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* @T_QUIET, align 4
  %57 = load i32, i32* @worker_cb, align 4
  %58 = load i32, i32* @event_cb, align 4
  %59 = load i64, i64* @workloop_cb_test_sync_send, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @_pthread_workqueue_init_with_workloop(i32 %57, i32 %58, i32 %60, i32 0, i32 0)
  %62 = call i32 @T_ASSERT_POSIX_ZERO(i32 %61, i32* null)
  br label %260

63:                                               ; preds = %51
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32, i32* @T_QUIET, align 4
  %69 = load i32, i32* @worker_cb, align 4
  %70 = load i32, i32* @event_cb, align 4
  %71 = load i64, i64* @workloop_cb_test_sync_send_and_enable, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @_pthread_workqueue_init_with_workloop(i32 %69, i32 %70, i32 %72, i32 0, i32 0)
  %74 = call i32 @T_ASSERT_POSIX_ZERO(i32 %73, i32* null)
  br label %259

75:                                               ; preds = %63
  %76 = load i8*, i8** %8, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32, i32* @T_QUIET, align 4
  %81 = load i32, i32* @worker_cb, align 4
  %82 = load i32, i32* @event_cb, align 4
  %83 = load i64, i64* @workloop_cb_test_send_two_sync, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @_pthread_workqueue_init_with_workloop(i32 %81, i32 %82, i32 %84, i32 0, i32 0)
  %86 = call i32 @T_ASSERT_POSIX_ZERO(i32 %85, i32* null)
  br label %258

87:                                               ; preds = %75
  %88 = load i8*, i8** %8, align 8
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i32, i32* @T_QUIET, align 4
  %93 = load i32, i32* @worker_cb, align 4
  %94 = load i32, i32* @event_cb, align 4
  %95 = load i64, i64* @workloop_cb_test_two_send_and_destroy, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @_pthread_workqueue_init_with_workloop(i32 %93, i32 %94, i32 %96, i32 0, i32 0)
  %98 = call i32 @T_ASSERT_POSIX_ZERO(i32 %97, i32* null)
  br label %257

99:                                               ; preds = %87
  %100 = load i8*, i8** %8, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i32, i32* @T_QUIET, align 4
  %105 = load i32, i32* @worker_cb, align 4
  %106 = load i32, i32* @event_cb, align 4
  %107 = load i64, i64* @workloop_cb_test_sync_send_reply, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @_pthread_workqueue_init_with_workloop(i32 %105, i32 %106, i32 %108, i32 0, i32 0)
  %110 = call i32 @T_ASSERT_POSIX_ZERO(i32 %109, i32* null)
  br label %256

111:                                              ; preds = %99
  %112 = load i8*, i8** %8, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i32, i32* @T_QUIET, align 4
  %117 = load i32, i32* @worker_cb, align 4
  %118 = load i32, i32* @event_cb, align 4
  %119 = load i64, i64* @workloop_cb_test_sync_send_deallocate, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @_pthread_workqueue_init_with_workloop(i32 %117, i32 %118, i32 %120, i32 0, i32 0)
  %122 = call i32 @T_ASSERT_POSIX_ZERO(i32 %121, i32* null)
  br label %255

123:                                              ; preds = %111
  %124 = load i8*, i8** %8, align 8
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load i32, i32* @T_QUIET, align 4
  %129 = load i32, i32* @worker_cb, align 4
  %130 = load i32, i32* @event_cb, align 4
  %131 = load i64, i64* @workloop_cb_test_sync_send_reply_kevent, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @_pthread_workqueue_init_with_workloop(i32 %129, i32 %130, i32 %132, i32 0, i32 0)
  %134 = call i32 @T_ASSERT_POSIX_ZERO(i32 %133, i32* null)
  br label %254

135:                                              ; preds = %123
  %136 = load i8*, i8** %8, align 8
  %137 = call i64 @strcmp(i8* %136, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = load i32, i32* @T_QUIET, align 4
  %141 = load i32, i32* @worker_cb, align 4
  %142 = load i32, i32* @event_cb, align 4
  %143 = load i64, i64* @workloop_cb_test_sync_send_reply_kevent_pthread, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @_pthread_workqueue_init_with_workloop(i32 %141, i32 %142, i32 %144, i32 0, i32 0)
  %146 = call i32 @T_ASSERT_POSIX_ZERO(i32 %145, i32* null)
  br label %253

147:                                              ; preds = %135
  %148 = load i8*, i8** %8, align 8
  %149 = call i64 @strcmp(i8* %148, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = load i32, i32* @T_QUIET, align 4
  %153 = load i32, i32* @worker_cb, align 4
  %154 = load i32, i32* @event_cb, align 4
  %155 = load i64, i64* @workloop_cb_test_sync_send_kevent_reply, align 8
  %156 = trunc i64 %155 to i32
  %157 = call i32 @_pthread_workqueue_init_with_workloop(i32 %153, i32 %154, i32 %156, i32 0, i32 0)
  %158 = call i32 @T_ASSERT_POSIX_ZERO(i32 %157, i32* null)
  br label %252

159:                                              ; preds = %147
  %160 = load i8*, i8** %8, align 8
  %161 = call i64 @strcmp(i8* %160, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load i32, i32* @T_QUIET, align 4
  %165 = load i32, i32* @worker_cb, align 4
  %166 = load i32, i32* @event_cb, align 4
  %167 = load i64, i64* @workloop_cb_test_sync_send_do_nothing, align 8
  %168 = trunc i64 %167 to i32
  %169 = call i32 @_pthread_workqueue_init_with_workloop(i32 %165, i32 %166, i32 %168, i32 0, i32 0)
  %170 = call i32 @T_ASSERT_POSIX_ZERO(i32 %169, i32* null)
  br label %251

171:                                              ; preds = %159
  %172 = load i8*, i8** %8, align 8
  %173 = call i64 @strcmp(i8* %172, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %171
  %176 = load i32, i32* @T_QUIET, align 4
  %177 = load i32, i32* @worker_cb, align 4
  %178 = load i32, i32* @event_cb, align 4
  %179 = load i64, i64* @workloop_cb_test_sync_send_do_nothing_kevent_pthread, align 8
  %180 = trunc i64 %179 to i32
  %181 = call i32 @_pthread_workqueue_init_with_workloop(i32 %177, i32 %178, i32 %180, i32 0, i32 0)
  %182 = call i32 @T_ASSERT_POSIX_ZERO(i32 %181, i32* null)
  br label %250

183:                                              ; preds = %171
  %184 = load i8*, i8** %8, align 8
  %185 = call i64 @strcmp(i8* %184, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %183
  %188 = load i32, i32* @T_QUIET, align 4
  %189 = load i32, i32* @worker_cb, align 4
  %190 = load i32, i32* @event_cb, align 4
  %191 = load i64, i64* @workloop_cb_test_sync_send_do_nothing_exit, align 8
  %192 = trunc i64 %191 to i32
  %193 = call i32 @_pthread_workqueue_init_with_workloop(i32 %189, i32 %190, i32 %192, i32 0, i32 0)
  %194 = call i32 @T_ASSERT_POSIX_ZERO(i32 %193, i32* null)
  br label %249

195:                                              ; preds = %183
  %196 = load i8*, i8** %8, align 8
  %197 = call i64 @strcmp(i8* %196, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0))
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  %200 = load i32, i32* @T_QUIET, align 4
  %201 = load i32, i32* @worker_cb, align 4
  %202 = load i32, i32* @event_cb, align 4
  %203 = load i64, i64* @workloop_cb_test_sync_send_reply_kevent_reply_kevent, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 @_pthread_workqueue_init_with_workloop(i32 %201, i32 %202, i32 %204, i32 0, i32 0)
  %206 = call i32 @T_ASSERT_POSIX_ZERO(i32 %205, i32* null)
  br label %248

207:                                              ; preds = %195
  %208 = load i8*, i8** %8, align 8
  %209 = call i64 @strcmp(i8* %208, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0))
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %207
  %212 = load i32, i32* @T_QUIET, align 4
  %213 = load i32, i32* @worker_cb, align 4
  %214 = load i32, i32* @event_cb, align 4
  %215 = load i64, i64* @workloop_cb_test_sync_send_kevent_reply_reply_kevent, align 8
  %216 = trunc i64 %215 to i32
  %217 = call i32 @_pthread_workqueue_init_with_workloop(i32 %213, i32 %214, i32 %216, i32 0, i32 0)
  %218 = call i32 @T_ASSERT_POSIX_ZERO(i32 %217, i32* null)
  br label %247

219:                                              ; preds = %207
  %220 = load i8*, i8** %8, align 8
  %221 = call i64 @strcmp(i8* %220, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0))
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %219
  %224 = load i32, i32* @T_QUIET, align 4
  %225 = load i32, i32* @worker_cb, align 4
  %226 = load i32, i32* @event_cb, align 4
  %227 = load i64, i64* @workloop_cb_test_sync_send_kevent_reply_kevent_reply, align 8
  %228 = trunc i64 %227 to i32
  %229 = call i32 @_pthread_workqueue_init_with_workloop(i32 %225, i32 %226, i32 %228, i32 0, i32 0)
  %230 = call i32 @T_ASSERT_POSIX_ZERO(i32 %229, i32* null)
  br label %246

231:                                              ; preds = %219
  %232 = load i8*, i8** %8, align 8
  %233 = call i64 @strcmp(i8* %232, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0))
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %231
  %236 = load i32, i32* @T_QUIET, align 4
  %237 = load i32, i32* @worker_cb, align 4
  %238 = load i32, i32* @event_cb, align 4
  %239 = load i64, i64* @workloop_cb_test_sync_send_reply_kevent_kevent_reply, align 8
  %240 = trunc i64 %239 to i32
  %241 = call i32 @_pthread_workqueue_init_with_workloop(i32 %237, i32 %238, i32 %240, i32 0, i32 0)
  %242 = call i32 @T_ASSERT_POSIX_ZERO(i32 %241, i32* null)
  br label %245

243:                                              ; preds = %231
  %244 = call i32 @T_ASSERT_FAIL(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  br label %245

245:                                              ; preds = %243, %235
  br label %246

246:                                              ; preds = %245, %223
  br label %247

247:                                              ; preds = %246, %211
  br label %248

248:                                              ; preds = %247, %199
  br label %249

249:                                              ; preds = %248, %187
  br label %250

250:                                              ; preds = %249, %175
  br label %251

251:                                              ; preds = %250, %163
  br label %252

252:                                              ; preds = %251, %151
  br label %253

253:                                              ; preds = %252, %139
  br label %254

254:                                              ; preds = %253, %127
  br label %255

255:                                              ; preds = %254, %115
  br label %256

256:                                              ; preds = %255, %103
  br label %257

257:                                              ; preds = %256, %91
  br label %258

258:                                              ; preds = %257, %79
  br label %259

259:                                              ; preds = %258, %67
  br label %260

260:                                              ; preds = %259, %55
  br label %261

261:                                              ; preds = %260, %43
  %262 = getelementptr inbounds [1 x %struct.kevent_qos_s], [1 x %struct.kevent_qos_s]* %11, i64 0, i64 0
  %263 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %262, i32 0, i32 0
  %264 = load i32, i32* @EV_ADD, align 4
  %265 = load i32, i32* @EV_UDATA_SPECIFIC, align 4
  %266 = or i32 %264, %265
  %267 = load i32, i32* @EV_DISPATCH, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @EV_VANISHED, align 4
  %270 = or i32 %268, %269
  store i32 %270, i32* %263, align 4
  %271 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %262, i32 0, i32 1
  %272 = load i32, i32* @MACH_RCV_MSG, align 4
  %273 = load i32, i32* @MACH_RCV_LARGE, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @MACH_RCV_LARGE_IDENTITY, align 4
  %276 = or i32 %274, %275
  %277 = load i32, i32* @MACH_RCV_TRAILER_CTX, align 4
  %278 = call i32 @MACH_RCV_TRAILER_ELEMENTS(i32 %277)
  %279 = or i32 %276, %278
  %280 = load i32, i32* @MACH_MSG_TRAILER_FORMAT_0, align 4
  %281 = call i32 @MACH_RCV_TRAILER_TYPE(i32 %280)
  %282 = or i32 %279, %281
  store i32 %282, i32* %271, align 4
  %283 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %262, i32 0, i32 2
  store i32 1, i32* %283, align 4
  %284 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %262, i32 0, i32 3
  store i32 0, i32* %284, align 4
  %285 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %262, i32 0, i32 4
  %286 = load i32*, i32** %6, align 8
  %287 = load i64, i64* @ENV_QOS_QUEUE_OVERRIDE, align 8
  %288 = getelementptr inbounds i32, i32* %286, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @_pthread_qos_class_encode(i32 %289, i32 0, i32 0)
  store i32 %290, i32* %285, align 4
  %291 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %262, i32 0, i32 5
  %292 = load i32, i32* @EVFILT_MACHPORT, align 4
  store i32 %292, i32* %291, align 4
  %293 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %262, i32 0, i32 6
  %294 = load i32, i32* %5, align 4
  store i32 %294, i32* %293, align 4
  %295 = bitcast [1 x %struct.kevent_qos_s]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %295, i8 0, i64 28, i1 false)
  %296 = getelementptr inbounds [1 x %struct.kevent_qos_s], [1 x %struct.kevent_qos_s]* %11, i64 0, i64 0
  %297 = getelementptr inbounds [1 x %struct.kevent_qos_s], [1 x %struct.kevent_qos_s]* %12, i64 0, i64 0
  %298 = load i32, i32* @KEVENT_FLAG_WORKLOOP, align 4
  %299 = load i32, i32* @KEVENT_FLAG_ERROR_EVENTS, align 4
  %300 = or i32 %298, %299
  %301 = call i32 @kevent_id(i32 25, %struct.kevent_qos_s* %296, i32 1, %struct.kevent_qos_s* %297, i32 1, i32* null, i32* null, i32 %300)
  store i32 %301, i32* %9, align 4
  %302 = load i32, i32* @T_QUIET, align 4
  %303 = load i32, i32* %9, align 4
  %304 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %303, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %305 = load i32, i32* @T_QUIET, align 4
  %306 = load i32, i32* %9, align 4
  %307 = call i32 @T_ASSERT_EQ(i32 %306, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0))
  %308 = load i32, i32* @HELPER_TIMEOUT_SECS, align 4
  %309 = call i32 @sleep(i32 %308)
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @T_ASSERT_POSIX_ZERO(i32, i32*) #1

declare dso_local i32 @_pthread_workqueue_init_with_workloop(i32, i32, i32, i32, i32) #1

declare dso_local i32 @T_ASSERT_FAIL(i8*) #1

declare dso_local i32 @MACH_RCV_TRAILER_ELEMENTS(i32) #1

declare dso_local i32 @MACH_RCV_TRAILER_TYPE(i32) #1

declare dso_local i32 @_pthread_qos_class_encode(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @kevent_id(i32, %struct.kevent_qos_s*, i32, %struct.kevent_qos_s*, i32, i32*, i32*, i32) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

declare dso_local i32 @T_ASSERT_EQ(i32, i32, i8*) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
