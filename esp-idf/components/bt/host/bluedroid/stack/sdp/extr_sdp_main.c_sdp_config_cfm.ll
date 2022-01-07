; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_config_cfm.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_config_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"SDP - Rcvd cfg cfm, CID: 0x%x  Result: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"SDP - Rcvd L2CAP cfg ind, unknown CID: 0x%x\0A\00", align 1
@L2CAP_CFG_OK = common dso_local global i64 0, align 8
@SDP_FLAGS_MY_CFG_DONE = common dso_local global i32 0, align 4
@SDP_FLAGS_HIS_CFG_DONE = common dso_local global i32 0, align 4
@SDP_STATE_CONNECTED = common dso_local global i32 0, align 4
@SDP_FLAGS_IS_ORIG = common dso_local global i32 0, align 4
@BTU_TTYPE_SDP = common dso_local global i32 0, align 4
@SDP_INACT_TIMEOUT = common dso_local global i32 0, align 4
@sdp_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@SDP_CFG_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*)* @sdp_config_cfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_config_cfm(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @SDP_TRACE_EVENT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %7, i64 %10)
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.TYPE_10__* @sdpu_find_ccb_by_cid(i32 %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  %14 = icmp eq %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @SDP_TRACE_WARNING(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %72

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @L2CAP_CFG_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %18
  %25 = load i32, i32* @SDP_FLAGS_MY_CFG_DONE, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SDP_FLAGS_HIS_CFG_DONE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %24
  %37 = load i32, i32* @SDP_STATE_CONNECTED, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SDP_FLAGS_IS_ORIG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = call i32 @sdp_disc_connected(%struct.TYPE_10__* %47)
  br label %55

49:                                               ; preds = %36
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* @BTU_TTYPE_SDP, align 4
  %53 = load i32, i32* @SDP_INACT_TIMEOUT, align 4
  %54 = call i32 @btu_start_timer(i32* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %46
  br label %56

56:                                               ; preds = %55, %24
  br label %72

57:                                               ; preds = %18
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 bitcast (%struct.TYPE_11__* @sdp_cb to i8*), i64 16, i1 false)
  %64 = load i64, i64* @FALSE, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @L2CA_ConfigReq(i32 %66, %struct.TYPE_9__* %6)
  br label %72

68:                                               ; preds = %57
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = load i32, i32* @SDP_CFG_FAILED, align 4
  %71 = call i32 @sdp_disconnect(%struct.TYPE_10__* %69, i32 %70)
  br label %72

72:                                               ; preds = %15, %62, %68, %56
  ret void
}

declare dso_local i32 @SDP_TRACE_EVENT(i8*, i32, i64) #1

declare dso_local %struct.TYPE_10__* @sdpu_find_ccb_by_cid(i32) #1

declare dso_local i32 @SDP_TRACE_WARNING(i8*, i32) #1

declare dso_local i32 @sdp_disc_connected(%struct.TYPE_10__*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @L2CA_ConfigReq(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @sdp_disconnect(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
