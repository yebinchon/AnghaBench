; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_qos_client_send_2sync_msg_and_test_link.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_qos_client_send_2sync_msg_and_test_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@bootstrap_port = common dso_local global i32 0, align 4
@KEVENT_QOS_SERVICE_NAME = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"client bootstrap_look_up\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"mach_sync_ipc_link_monitoring_start\00", align 1
@MACH_PORT_NULL = common dso_local global i32 0, align 4
@g_expected_qos = common dso_local global i32* null, align 8
@ENV_QOS_AFTER_OVERRIDE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"receive\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"mach_sync_ipc_link_monitoring_stop\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Link was broken\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Link correct\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"special reply port link after rcv\00", align 1
@T_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @qos_client_send_2sync_msg_and_test_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qos_client_send_2sync_msg_and_test_link(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* @bootstrap_port, align 4
  %13 = load i32, i32* @KEVENT_QOS_SERVICE_NAME, align 4
  %14 = call i32 @bootstrap_look_up(i32 %12, i32 %13, i32* %4)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @T_QUIET, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @mach_sync_ipc_link_monitoring_start(i32* %5)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @T_QUIET, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MACH_PORT_NULL, align 4
  %25 = load i32*, i32** @g_expected_qos, align 8
  %26 = load i64, i64* @ENV_QOS_AFTER_OVERRIDE, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @_pthread_qos_class_encode(i32 %28, i32 0, i32 0)
  %30 = trunc i64 %29 to i32
  %31 = call i32 @send(i32 %22, i32 %23, i32 %24, i32 %30, i32 0)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @receive(i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @T_QUIET, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @MACH_PORT_NULL, align 4
  %41 = load i32*, i32** @g_expected_qos, align 8
  %42 = load i64, i64* @ENV_QOS_AFTER_OVERRIDE, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @_pthread_qos_class_encode(i32 %44, i32 0, i32 0)
  %46 = trunc i64 %45 to i32
  %47 = call i32 @send(i32 %38, i32 %39, i32 %40, i32 %46, i32 0)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @receive(i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @T_QUIET, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @mach_sync_ipc_link_monitoring_stop(i32 %54, i32* %6)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @T_QUIET, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %1
  %62 = call i32 @T_LOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %65

63:                                               ; preds = %1
  %64 = call i32 @T_LOG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %61
  %66 = load i64, i64* %8, align 8
  %67 = icmp eq i64 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @T_ASSERT_TRUE(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @T_ASSERT_FALSE(i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* @T_END, align 4
  %76 = load i8*, i8** %2, align 8
  ret i8* %76
}

declare dso_local i32 @bootstrap_look_up(i32, i32, i32*) #1

declare dso_local i32 @T_ASSERT_MACH_SUCCESS(i32, i8*) #1

declare dso_local i32 @mach_sync_ipc_link_monitoring_start(i32*) #1

declare dso_local i32 @send(i32, i32, i32, i32, i32) #1

declare dso_local i64 @_pthread_qos_class_encode(i32, i32, i32) #1

declare dso_local i32 @receive(i32, i32) #1

declare dso_local i32 @mach_sync_ipc_link_monitoring_stop(i32, i32*) #1

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i32 @T_ASSERT_TRUE(i32, i8*) #1

declare dso_local i32 @T_ASSERT_FALSE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
