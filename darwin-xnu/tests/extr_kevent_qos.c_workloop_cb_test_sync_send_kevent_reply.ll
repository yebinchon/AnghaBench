; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_workloop_cb_test_sync_send_kevent_reply.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_workloop_cb_test_sync_send_kevent_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent_qos_s = type { i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"workloop handler workloop_cb_test_sync_send_kevent_reply called\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"kevent_qos test requires root privileges to run.\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"events received\00", align 1
@EVFILT_MACHPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"received EVFILT_MACHPORT\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Handler returning \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.kevent_qos_s**, i32*)* @workloop_cb_test_sync_send_kevent_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workloop_cb_test_sync_send_kevent_reply(i32* %0, %struct.kevent_qos_s** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kevent_qos_s**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kevent_qos_s*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.kevent_qos_s** %1, %struct.kevent_qos_s*** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = call i32 @T_LOG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %10 = call i64 (...) @geteuid()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @T_SKIP(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i32, i32* @T_QUIET, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @T_ASSERT_EQ_INT(i32 %17, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* @T_QUIET, align 4
  %20 = load %struct.kevent_qos_s**, %struct.kevent_qos_s*** %5, align 8
  %21 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %20, align 8
  %22 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @EVFILT_MACHPORT, align 4
  %25 = call i32 @T_ASSERT_EQ_INT(i32 %23, i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %26 = load %struct.kevent_qos_s**, %struct.kevent_qos_s*** %5, align 8
  %27 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %26, align 8
  store %struct.kevent_qos_s* %27, %struct.kevent_qos_s** %7, align 8
  %28 = load %struct.kevent_qos_s**, %struct.kevent_qos_s*** %5, align 8
  %29 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %28, align 8
  %30 = call i32 @get_reply_port(%struct.kevent_qos_s* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %7, align 8
  %33 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @enable_kevent(i32* %31, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @send_reply(i32 %36)
  %38 = load i32*, i32** %6, align 8
  store i32 0, i32* %38, align 4
  %39 = call i32 @T_LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @T_SKIP(i8*) #1

declare dso_local i32 @T_ASSERT_EQ_INT(i32, i32, i8*) #1

declare dso_local i32 @get_reply_port(%struct.kevent_qos_s*) #1

declare dso_local i32 @enable_kevent(i32*, i32) #1

declare dso_local i32 @send_reply(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
