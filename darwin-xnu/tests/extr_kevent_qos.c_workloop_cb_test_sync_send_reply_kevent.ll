; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_workloop_cb_test_sync_send_reply_kevent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_workloop_cb_test_sync_send_reply_kevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent_qos_s = type { i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"Workloop handler workloop_cb_test_sync_send_reply_kevent called\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"kevent_qos test requires root privileges to run.\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"events received\00", align 1
@EVFILT_MACHPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"received EVFILT_MACHPORT\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Handler returning \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.kevent_qos_s**, i32*)* @workloop_cb_test_sync_send_reply_kevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workloop_cb_test_sync_send_reply_kevent(i32* %0, %struct.kevent_qos_s** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kevent_qos_s**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kevent_qos_s*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.kevent_qos_s** %1, %struct.kevent_qos_s*** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = call i32 @T_LOG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %9 = call i64 (...) @geteuid()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @T_SKIP(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i32, i32* @T_QUIET, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @T_ASSERT_EQ_INT(i32 %16, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @T_QUIET, align 4
  %19 = load %struct.kevent_qos_s**, %struct.kevent_qos_s*** %5, align 8
  %20 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %19, align 8
  %21 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EVFILT_MACHPORT, align 4
  %24 = call i32 @T_ASSERT_EQ_INT(i32 %22, i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %25 = load %struct.kevent_qos_s**, %struct.kevent_qos_s*** %5, align 8
  %26 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %25, align 8
  store %struct.kevent_qos_s* %26, %struct.kevent_qos_s** %7, align 8
  %27 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %7, align 8
  %28 = call i32 @get_reply_port(%struct.kevent_qos_s* %27)
  %29 = call i32 @send_reply(i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %7, align 8
  %32 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @enable_kevent(i32* %30, i32 %33)
  %35 = load i32*, i32** %6, align 8
  store i32 0, i32* %35, align 4
  %36 = call i32 @T_LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @T_SKIP(i8*) #1

declare dso_local i32 @T_ASSERT_EQ_INT(i32, i32, i8*) #1

declare dso_local i32 @send_reply(i32) #1

declare dso_local i32 @get_reply_port(%struct.kevent_qos_s*) #1

declare dso_local i32 @enable_kevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
