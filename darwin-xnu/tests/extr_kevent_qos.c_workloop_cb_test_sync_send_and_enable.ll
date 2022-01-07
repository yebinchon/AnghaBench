; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_workloop_cb_test_sync_send_and_enable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_workloop_cb_test_sync_send_and_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent_qos_s = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Workloop handler workloop_cb_test_sync_send_and_enable called\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"kevent_qos test requires root privileges to run.\00", align 1
@g_expected_qos = common dso_local global i32* null, align 8
@ENV_QOS_AFTER_OVERRIDE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"dispatch_source event handler QoS should be %s\00", align 1
@g_expected_qos_name = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [103 x i8] c"thread's current override priority %d should be less than override priority prior to enabling knote %d\00", align 1
@T_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.kevent_qos_s**, i32*)* @workloop_cb_test_sync_send_and_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workloop_cb_test_sync_send_and_enable(i32* %0, %struct.kevent_qos_s** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kevent_qos_s**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kevent_qos_s*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.kevent_qos_s** %1, %struct.kevent_qos_s*** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = call i32 @T_LOG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.kevent_qos_s**, %struct.kevent_qos_s*** %5, align 8
  %12 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %11, align 8
  %13 = call i32 @EXPECT_TEST_MSG(%struct.kevent_qos_s* %12)
  %14 = call i64 (...) @geteuid()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @T_SKIP(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i32*, i32** @g_expected_qos, align 8
  %20 = load i64, i64* @ENV_QOS_AFTER_OVERRIDE, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @g_expected_qos_name, align 8
  %24 = load i64, i64* @ENV_QOS_AFTER_OVERRIDE, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @EXPECT_QOS_EQ(i32 %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = call i32 (...) @get_user_promotion_basepri()
  store i32 %28, i32* %7, align 4
  %29 = load %struct.kevent_qos_s**, %struct.kevent_qos_s*** %5, align 8
  %30 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %29, align 8
  store %struct.kevent_qos_s* %30, %struct.kevent_qos_s** %9, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.kevent_qos_s*, %struct.kevent_qos_s** %9, align 8
  %33 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @enable_kevent(i32* %31, i32 %34)
  %36 = call i32 (...) @get_user_promotion_basepri()
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @T_EXPECT_LT(i32 %37, i32 %38, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32*, i32** %6, align 8
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* @T_END, align 4
  ret void
}

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i32 @EXPECT_TEST_MSG(%struct.kevent_qos_s*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @T_SKIP(i8*) #1

declare dso_local i32 @EXPECT_QOS_EQ(i32, i8*, i32) #1

declare dso_local i32 @get_user_promotion_basepri(...) #1

declare dso_local i32 @enable_kevent(i32*, i32) #1

declare dso_local i32 @T_EXPECT_LT(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
