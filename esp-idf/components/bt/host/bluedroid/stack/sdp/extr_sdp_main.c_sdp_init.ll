; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i32, i8*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32*, i32*, i32, i32*, i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i8*, i8*, i8* }

@sdp_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TRUE = common dso_local global i8* null, align 8
@SDP_MTU_SIZE = common dso_local global i8* null, align 8
@SDP_FLUSH_TO = common dso_local global i32 0, align 4
@SDP_MAX_DISC_SERVER_RECS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@SDP_SERVICE_NAME = common dso_local global i32 0, align 4
@BTM_SEC_SERVICE_SDP_SERVER = common dso_local global i32 0, align 4
@SDP_SECURITY_LEVEL = common dso_local global i32 0, align 4
@SDP_PSM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Security Registration Server failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Security Registration for Client failed\0A\00", align 1
@BT_TRACE_LEVEL_NONE = common dso_local global i32 0, align 4
@sdp_connect_ind = common dso_local global i32 0, align 4
@sdp_connect_cfm = common dso_local global i32 0, align 4
@sdp_config_ind = common dso_local global i32 0, align 4
@sdp_config_cfm = common dso_local global i32 0, align 4
@sdp_disconnect_ind = common dso_local global i32 0, align 4
@sdp_disconnect_cfm = common dso_local global i32 0, align 4
@sdp_data_ind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"SDP Registration failed\0A\00", align 1
@SDP_INITIAL_TRACE_LEVEL = common dso_local global i32 0, align 4
@sdp_cb_ptr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_init() #0 {
  %1 = call i32 @memset(%struct.TYPE_6__* @sdp_cb, i32 0, i32 4)
  %2 = load i8*, i8** @TRUE, align 8
  store i8* %2, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 4, i32 3), align 8
  %3 = load i8*, i8** @SDP_MTU_SIZE, align 8
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 4, i32 2), align 8
  %4 = load i8*, i8** @TRUE, align 8
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 4, i32 1), align 8
  %5 = load i32, i32* @SDP_FLUSH_TO, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 4, i32 0), align 8
  %6 = load i8*, i8** @SDP_MTU_SIZE, align 8
  %7 = getelementptr i8, i8* %6, i64 -16
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 3), align 8
  %8 = load i32, i32* @SDP_MAX_DISC_SERVER_RECS, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 2), align 4
  %9 = load i8*, i8** @FALSE, align 8
  %10 = load i32, i32* @SDP_SERVICE_NAME, align 4
  %11 = load i32, i32* @BTM_SEC_SERVICE_SDP_SERVER, align 4
  %12 = load i32, i32* @SDP_SECURITY_LEVEL, align 4
  %13 = load i32, i32* @SDP_PSM, align 4
  %14 = call i32 @BTM_SetSecurityLevel(i8* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 0, i32 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %0
  %17 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %42

18:                                               ; preds = %0
  %19 = load i8*, i8** @TRUE, align 8
  %20 = load i32, i32* @SDP_SERVICE_NAME, align 4
  %21 = load i32, i32* @BTM_SEC_SERVICE_SDP_SERVER, align 4
  %22 = load i32, i32* @SDP_SECURITY_LEVEL, align 4
  %23 = load i32, i32* @SDP_PSM, align 4
  %24 = call i32 @BTM_SetSecurityLevel(i8* %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 0, i32 0)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %42

28:                                               ; preds = %18
  %29 = load i32, i32* @BT_TRACE_LEVEL_NONE, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 1), align 8
  %30 = load i32, i32* @sdp_connect_ind, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 0, i32 10), align 4
  %31 = load i32, i32* @sdp_connect_cfm, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 0, i32 9), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 0, i32 8), align 8
  %32 = load i32, i32* @sdp_config_ind, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 0, i32 7), align 4
  %33 = load i32, i32* @sdp_config_cfm, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 0, i32 6), align 8
  %34 = load i32, i32* @sdp_disconnect_ind, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 0, i32 5), align 4
  %35 = load i32, i32* @sdp_disconnect_cfm, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 0, i32 3), align 8
  %36 = load i32, i32* @sdp_data_ind, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 0, i32 0), align 8
  %37 = load i32, i32* @SDP_PSM, align 4
  %38 = call i32 @L2CA_Register(i32 %37, %struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdp_cb, i32 0, i32 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %28
  %41 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %16, %26, %40, %28
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @BTM_SetSecurityLevel(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SDP_TRACE_ERROR(i8*) #1

declare dso_local i32 @L2CA_Register(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
