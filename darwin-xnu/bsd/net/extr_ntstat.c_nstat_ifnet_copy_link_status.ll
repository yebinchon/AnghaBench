; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_ifnet_copy_link_status.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_ifnet_copy_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, i64, i32, %struct.if_link_status* }
%struct.if_link_status = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_11__, %struct.TYPE_14__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.if_wifi_status_v1 }
%struct.if_wifi_status_v1 = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.if_cellular_status_v1 }
%struct.if_cellular_status_v1 = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nstat_ifnet_descriptor = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_16__, %struct.TYPE_18__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NSTAT_IFNET_DESC_LINK_STATUS_TYPE_NONE = common dso_local global i32 0, align 4
@IFT_CELLULAR = common dso_local global i64 0, align 8
@IF_CELLULAR_STATUS_REPORT_VERSION_1 = common dso_local global i64 0, align 8
@NSTAT_IFNET_DESC_LINK_STATUS_TYPE_CELLULAR = common dso_local global i32 0, align 4
@IF_CELL_LINK_QUALITY_METRIC_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_LINK_QUALITY_METRIC_VALID = common dso_local global i32 0, align 4
@IF_CELL_UL_EFFECTIVE_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_UL_EFFECTIVE_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@IF_CELL_UL_MAX_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_UL_MAX_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@IF_CELL_UL_MIN_LATENCY_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_UL_MIN_LATENCY_VALID = common dso_local global i32 0, align 4
@IF_CELL_UL_EFFECTIVE_LATENCY_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_UL_EFFECTIVE_LATENCY_VALID = common dso_local global i32 0, align 4
@IF_CELL_UL_MAX_LATENCY_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_UL_MAX_LATENCY_VALID = common dso_local global i32 0, align 4
@IF_CELL_UL_RETXT_LEVEL_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_UL_RETXT_LEVEL_VALID = common dso_local global i32 0, align 4
@IF_CELL_UL_RETXT_LEVEL_NONE = common dso_local global i64 0, align 8
@NSTAT_IFNET_DESC_CELL_UL_RETXT_LEVEL_NONE = common dso_local global i32 0, align 4
@IF_CELL_UL_RETXT_LEVEL_LOW = common dso_local global i64 0, align 8
@NSTAT_IFNET_DESC_CELL_UL_RETXT_LEVEL_LOW = common dso_local global i32 0, align 4
@IF_CELL_UL_RETXT_LEVEL_MEDIUM = common dso_local global i64 0, align 8
@NSTAT_IFNET_DESC_CELL_UL_RETXT_LEVEL_MEDIUM = common dso_local global i32 0, align 4
@IF_CELL_UL_RETXT_LEVEL_HIGH = common dso_local global i64 0, align 8
@NSTAT_IFNET_DESC_CELL_UL_RETXT_LEVEL_HIGH = common dso_local global i32 0, align 4
@IF_CELL_UL_BYTES_LOST_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_UL_BYTES_LOST_VALID = common dso_local global i32 0, align 4
@IF_CELL_UL_MIN_QUEUE_SIZE_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_UL_MIN_QUEUE_SIZE_VALID = common dso_local global i32 0, align 4
@IF_CELL_UL_AVG_QUEUE_SIZE_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_UL_AVG_QUEUE_SIZE_VALID = common dso_local global i32 0, align 4
@IF_CELL_UL_MAX_QUEUE_SIZE_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_UL_MAX_QUEUE_SIZE_VALID = common dso_local global i32 0, align 4
@IF_CELL_DL_EFFECTIVE_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_DL_EFFECTIVE_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@IF_CELL_DL_MAX_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_DL_MAX_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@IF_CELL_CONFIG_INACTIVITY_TIME_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_CONFIG_INACTIVITY_TIME_VALID = common dso_local global i32 0, align 4
@IF_CELL_CONFIG_BACKOFF_TIME_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_CONFIG_BACKOFF_TIME_VALID = common dso_local global i32 0, align 4
@IF_CELL_UL_MSS_RECOMMENDED_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_CELL_MSS_RECOMMENDED_VALID = common dso_local global i32 0, align 4
@IFNET_SUBFAMILY_WIFI = common dso_local global i64 0, align 8
@IF_WIFI_STATUS_REPORT_VERSION_1 = common dso_local global i64 0, align 8
@NSTAT_IFNET_DESC_LINK_STATUS_TYPE_WIFI = common dso_local global i32 0, align 4
@IF_WIFI_LINK_QUALITY_METRIC_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_LINK_QUALITY_METRIC_VALID = common dso_local global i32 0, align 4
@IF_WIFI_UL_EFFECTIVE_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_UL_EFFECTIVE_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@IF_WIFI_UL_MAX_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_UL_MAX_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@IF_WIFI_UL_MIN_LATENCY_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_UL_MIN_LATENCY_VALID = common dso_local global i32 0, align 4
@IF_WIFI_UL_EFFECTIVE_LATENCY_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_UL_EFFECTIVE_LATENCY_VALID = common dso_local global i32 0, align 4
@IF_WIFI_UL_MAX_LATENCY_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_UL_MAX_LATENCY_VALID = common dso_local global i32 0, align 4
@IF_WIFI_UL_RETXT_LEVEL_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_UL_RETXT_LEVEL_VALID = common dso_local global i32 0, align 4
@IF_WIFI_UL_RETXT_LEVEL_NONE = common dso_local global i64 0, align 8
@NSTAT_IFNET_DESC_WIFI_UL_RETXT_LEVEL_NONE = common dso_local global i32 0, align 4
@IF_WIFI_UL_RETXT_LEVEL_LOW = common dso_local global i64 0, align 8
@NSTAT_IFNET_DESC_WIFI_UL_RETXT_LEVEL_LOW = common dso_local global i32 0, align 4
@IF_WIFI_UL_RETXT_LEVEL_MEDIUM = common dso_local global i64 0, align 8
@NSTAT_IFNET_DESC_WIFI_UL_RETXT_LEVEL_MEDIUM = common dso_local global i32 0, align 4
@IF_WIFI_UL_RETXT_LEVEL_HIGH = common dso_local global i64 0, align 8
@NSTAT_IFNET_DESC_WIFI_UL_RETXT_LEVEL_HIGH = common dso_local global i32 0, align 4
@IF_WIFI_UL_BYTES_LOST_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_UL_BYTES_LOST_VALID = common dso_local global i32 0, align 4
@IF_WIFI_UL_ERROR_RATE_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_UL_ERROR_RATE_VALID = common dso_local global i32 0, align 4
@IF_WIFI_DL_EFFECTIVE_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_DL_EFFECTIVE_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@IF_WIFI_DL_MAX_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_DL_MAX_BANDWIDTH_VALID = common dso_local global i32 0, align 4
@IF_WIFI_DL_MIN_LATENCY_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_DL_MIN_LATENCY_VALID = common dso_local global i32 0, align 4
@IF_WIFI_DL_EFFECTIVE_LATENCY_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_DL_EFFECTIVE_LATENCY_VALID = common dso_local global i32 0, align 4
@IF_WIFI_DL_MAX_LATENCY_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_DL_MAX_LATENCY_VALID = common dso_local global i32 0, align 4
@IF_WIFI_DL_ERROR_RATE_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_DL_ERROR_RATE_VALID = common dso_local global i32 0, align 4
@IF_WIFI_CONFIG_FREQUENCY_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_CONFIG_FREQUENCY_VALID = common dso_local global i32 0, align 4
@IF_WIFI_CONFIG_FREQUENCY_2_4_GHZ = common dso_local global i64 0, align 8
@NSTAT_IFNET_DESC_WIFI_CONFIG_FREQUENCY_2_4_GHZ = common dso_local global i32 0, align 4
@IF_WIFI_CONFIG_FREQUENCY_5_0_GHZ = common dso_local global i64 0, align 8
@NSTAT_IFNET_DESC_WIFI_CONFIG_FREQUENCY_5_0_GHZ = common dso_local global i32 0, align 4
@IF_WIFI_CONFIG_MULTICAST_RATE_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_CONFIG_MULTICAST_RATE_VALID = common dso_local global i32 0, align 4
@IF_WIFI_CONFIG_SCAN_COUNT_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_CONFIG_SCAN_COUNT_VALID = common dso_local global i32 0, align 4
@IF_WIFI_CONFIG_SCAN_DURATION_VALID = common dso_local global i32 0, align 4
@NSTAT_IFNET_DESC_WIFI_CONFIG_SCAN_DURATION_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.nstat_ifnet_descriptor*)* @nstat_ifnet_copy_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nstat_ifnet_copy_link_status(%struct.ifnet* %0, %struct.nstat_ifnet_descriptor* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.nstat_ifnet_descriptor*, align 8
  %5 = alloca %struct.if_link_status*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.if_cellular_status_v1*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.if_wifi_status_v1*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.nstat_ifnet_descriptor* %1, %struct.nstat_ifnet_descriptor** %4, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 3
  %13 = load %struct.if_link_status*, %struct.if_link_status** %12, align 8
  store %struct.if_link_status* %13, %struct.if_link_status** %5, align 8
  %14 = load %struct.nstat_ifnet_descriptor*, %struct.nstat_ifnet_descriptor** %4, align 8
  %15 = getelementptr inbounds %struct.nstat_ifnet_descriptor, %struct.nstat_ifnet_descriptor* %14, i32 0, i32 0
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %6, align 8
  %16 = load i32, i32* @NSTAT_IFNET_DESC_LINK_STATUS_TYPE_NONE, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.if_link_status*, %struct.if_link_status** %5, align 8
  %20 = icmp eq %struct.if_link_status* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %824

22:                                               ; preds = %2
  %23 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 2
  %25 = call i32 @lck_rw_lock_shared(i32* %24)
  %26 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IFT_CELLULAR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %383

31:                                               ; preds = %22
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %7, align 8
  %35 = load %struct.if_link_status*, %struct.if_link_status** %5, align 8
  %36 = getelementptr inbounds %struct.if_link_status, %struct.if_link_status* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  store %struct.if_cellular_status_v1* %39, %struct.if_cellular_status_v1** %8, align 8
  %40 = load %struct.if_link_status*, %struct.if_link_status** %5, align 8
  %41 = getelementptr inbounds %struct.if_link_status, %struct.if_link_status* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IF_CELLULAR_STATUS_REPORT_VERSION_1, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %820

46:                                               ; preds = %31
  %47 = load i32, i32* @NSTAT_IFNET_DESC_LINK_STATUS_TYPE_CELLULAR, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %51 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IF_CELL_LINK_QUALITY_METRIC_VALID, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %46
  %57 = load i32, i32* @NSTAT_IFNET_DESC_CELL_LINK_QUALITY_METRIC_VALID, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %63 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %62, i32 0, i32 16
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 16
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %56, %46
  %68 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %69 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IF_CELL_UL_EFFECTIVE_BANDWIDTH_VALID, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_EFFECTIVE_BANDWIDTH_VALID, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %81 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %80, i32 0, i32 15
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 15
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %74, %67
  %86 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %87 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IF_CELL_UL_MAX_BANDWIDTH_VALID, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %85
  %93 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_MAX_BANDWIDTH_VALID, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %99 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %98, i32 0, i32 14
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 14
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %92, %85
  %104 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %105 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @IF_CELL_UL_MIN_LATENCY_VALID, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %103
  %111 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_MIN_LATENCY_VALID, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %117 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %116, i32 0, i32 13
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 13
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %110, %103
  %122 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %123 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @IF_CELL_UL_EFFECTIVE_LATENCY_VALID, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %121
  %129 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_EFFECTIVE_LATENCY_VALID, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %135 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %134, i32 0, i32 12
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 12
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %128, %121
  %140 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %141 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @IF_CELL_UL_MAX_LATENCY_VALID, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %139
  %147 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_MAX_LATENCY_VALID, align 4
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %153 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %152, i32 0, i32 11
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 11
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %146, %139
  %158 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %159 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @IF_CELL_UL_RETXT_LEVEL_VALID, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %220

164:                                              ; preds = %157
  %165 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_RETXT_LEVEL_VALID, align 4
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %171 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @IF_CELL_UL_RETXT_LEVEL_NONE, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %164
  %176 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_RETXT_LEVEL_NONE, align 4
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 10
  store i32 %176, i32* %178, align 4
  br label %219

179:                                              ; preds = %164
  %180 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %181 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @IF_CELL_UL_RETXT_LEVEL_LOW, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  %186 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_RETXT_LEVEL_LOW, align 4
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 10
  store i32 %186, i32* %188, align 4
  br label %218

189:                                              ; preds = %179
  %190 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %191 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @IF_CELL_UL_RETXT_LEVEL_MEDIUM, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_RETXT_LEVEL_MEDIUM, align 4
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 10
  store i32 %196, i32* %198, align 4
  br label %217

199:                                              ; preds = %189
  %200 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %201 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @IF_CELL_UL_RETXT_LEVEL_HIGH, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_RETXT_LEVEL_HIGH, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 10
  store i32 %206, i32* %208, align 4
  br label %216

209:                                              ; preds = %199
  %210 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_RETXT_LEVEL_VALID, align 4
  %211 = xor i32 %210, -1
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, %211
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %209, %205
  br label %217

217:                                              ; preds = %216, %195
  br label %218

218:                                              ; preds = %217, %185
  br label %219

219:                                              ; preds = %218, %175
  br label %220

220:                                              ; preds = %219, %157
  %221 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %222 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @IF_CELL_UL_BYTES_LOST_VALID, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %220
  %228 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_BYTES_LOST_VALID, align 4
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 4
  %233 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %234 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %233, i32 0, i32 10
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 9
  store i32 %235, i32* %237, align 4
  br label %238

238:                                              ; preds = %227, %220
  %239 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %240 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @IF_CELL_UL_MIN_QUEUE_SIZE_VALID, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %256

245:                                              ; preds = %238
  %246 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_MIN_QUEUE_SIZE_VALID, align 4
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 4
  %251 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %252 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %251, i32 0, i32 9
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 8
  store i32 %253, i32* %255, align 4
  br label %256

256:                                              ; preds = %245, %238
  %257 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %258 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @IF_CELL_UL_AVG_QUEUE_SIZE_VALID, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %274

263:                                              ; preds = %256
  %264 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_AVG_QUEUE_SIZE_VALID, align 4
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 4
  %269 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %270 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %269, i32 0, i32 8
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 7
  store i32 %271, i32* %273, align 4
  br label %274

274:                                              ; preds = %263, %256
  %275 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %276 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @IF_CELL_UL_MAX_QUEUE_SIZE_VALID, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %292

281:                                              ; preds = %274
  %282 = load i32, i32* @NSTAT_IFNET_DESC_CELL_UL_MAX_QUEUE_SIZE_VALID, align 4
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 4
  %287 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %288 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 6
  store i32 %289, i32* %291, align 4
  br label %292

292:                                              ; preds = %281, %274
  %293 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %294 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @IF_CELL_DL_EFFECTIVE_BANDWIDTH_VALID, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %310

299:                                              ; preds = %292
  %300 = load i32, i32* @NSTAT_IFNET_DESC_CELL_DL_EFFECTIVE_BANDWIDTH_VALID, align 4
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = or i32 %303, %300
  store i32 %304, i32* %302, align 4
  %305 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %306 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %305, i32 0, i32 6
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 5
  store i32 %307, i32* %309, align 4
  br label %310

310:                                              ; preds = %299, %292
  %311 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %312 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @IF_CELL_DL_MAX_BANDWIDTH_VALID, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %328

317:                                              ; preds = %310
  %318 = load i32, i32* @NSTAT_IFNET_DESC_CELL_DL_MAX_BANDWIDTH_VALID, align 4
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 4
  %323 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %324 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 4
  store i32 %325, i32* %327, align 4
  br label %328

328:                                              ; preds = %317, %310
  %329 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %330 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @IF_CELL_CONFIG_INACTIVITY_TIME_VALID, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %346

335:                                              ; preds = %328
  %336 = load i32, i32* @NSTAT_IFNET_DESC_CELL_CONFIG_INACTIVITY_TIME_VALID, align 4
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = or i32 %339, %336
  store i32 %340, i32* %338, align 4
  %341 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %342 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 3
  store i32 %343, i32* %345, align 4
  br label %346

346:                                              ; preds = %335, %328
  %347 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %348 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @IF_CELL_CONFIG_BACKOFF_TIME_VALID, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %364

353:                                              ; preds = %346
  %354 = load i32, i32* @NSTAT_IFNET_DESC_CELL_CONFIG_BACKOFF_TIME_VALID, align 4
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = or i32 %357, %354
  store i32 %358, i32* %356, align 4
  %359 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %360 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 2
  store i32 %361, i32* %363, align 4
  br label %364

364:                                              ; preds = %353, %346
  %365 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %366 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @IF_CELL_UL_MSS_RECOMMENDED_VALID, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %382

371:                                              ; preds = %364
  %372 = load i32, i32* @NSTAT_IFNET_DESC_CELL_MSS_RECOMMENDED_VALID, align 4
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = or i32 %375, %372
  store i32 %376, i32* %374, align 4
  %377 = load %struct.if_cellular_status_v1*, %struct.if_cellular_status_v1** %8, align 8
  %378 = getelementptr inbounds %struct.if_cellular_status_v1, %struct.if_cellular_status_v1* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i32 0, i32 0
  store i32 %379, i32* %381, align 4
  br label %382

382:                                              ; preds = %371, %364
  br label %819

383:                                              ; preds = %22
  %384 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %385 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @IFNET_SUBFAMILY_WIFI, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %818

389:                                              ; preds = %383
  %390 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 0
  store %struct.TYPE_16__* %392, %struct.TYPE_16__** %9, align 8
  %393 = load %struct.if_link_status*, %struct.if_link_status** %5, align 8
  %394 = getelementptr inbounds %struct.if_link_status, %struct.if_link_status* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i32 0, i32 0
  store %struct.if_wifi_status_v1* %397, %struct.if_wifi_status_v1** %10, align 8
  %398 = load %struct.if_link_status*, %struct.if_link_status** %5, align 8
  %399 = getelementptr inbounds %struct.if_link_status, %struct.if_link_status* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @IF_WIFI_STATUS_REPORT_VERSION_1, align 8
  %402 = icmp ne i64 %400, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %389
  br label %820

404:                                              ; preds = %389
  %405 = load i32, i32* @NSTAT_IFNET_DESC_LINK_STATUS_TYPE_WIFI, align 4
  %406 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %406, i32 0, i32 0
  store i32 %405, i32* %407, align 4
  %408 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %409 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @IF_WIFI_LINK_QUALITY_METRIC_VALID, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %425

414:                                              ; preds = %404
  %415 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_LINK_QUALITY_METRIC_VALID, align 4
  %416 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %417 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = or i32 %418, %415
  store i32 %419, i32* %417, align 4
  %420 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %421 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %420, i32 0, i32 19
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %424 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %423, i32 0, i32 19
  store i32 %422, i32* %424, align 4
  br label %425

425:                                              ; preds = %414, %404
  %426 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %427 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* @IF_WIFI_UL_EFFECTIVE_BANDWIDTH_VALID, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %443

432:                                              ; preds = %425
  %433 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_UL_EFFECTIVE_BANDWIDTH_VALID, align 4
  %434 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %435 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = or i32 %436, %433
  store i32 %437, i32* %435, align 4
  %438 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %439 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %438, i32 0, i32 18
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %441, i32 0, i32 18
  store i32 %440, i32* %442, align 4
  br label %443

443:                                              ; preds = %432, %425
  %444 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %445 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @IF_WIFI_UL_MAX_BANDWIDTH_VALID, align 4
  %448 = and i32 %446, %447
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %461

450:                                              ; preds = %443
  %451 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_UL_MAX_BANDWIDTH_VALID, align 4
  %452 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %453 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = or i32 %454, %451
  store i32 %455, i32* %453, align 4
  %456 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %457 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %456, i32 0, i32 17
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %460 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %459, i32 0, i32 17
  store i32 %458, i32* %460, align 4
  br label %461

461:                                              ; preds = %450, %443
  %462 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %463 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* @IF_WIFI_UL_MIN_LATENCY_VALID, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %479

468:                                              ; preds = %461
  %469 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_UL_MIN_LATENCY_VALID, align 4
  %470 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %471 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 4
  %473 = or i32 %472, %469
  store i32 %473, i32* %471, align 4
  %474 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %475 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %474, i32 0, i32 16
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %478 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %477, i32 0, i32 16
  store i32 %476, i32* %478, align 4
  br label %479

479:                                              ; preds = %468, %461
  %480 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %481 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = load i32, i32* @IF_WIFI_UL_EFFECTIVE_LATENCY_VALID, align 4
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %497

486:                                              ; preds = %479
  %487 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_UL_EFFECTIVE_LATENCY_VALID, align 4
  %488 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %489 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = or i32 %490, %487
  store i32 %491, i32* %489, align 4
  %492 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %493 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %492, i32 0, i32 15
  %494 = load i32, i32* %493, align 8
  %495 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %496 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %495, i32 0, i32 15
  store i32 %494, i32* %496, align 4
  br label %497

497:                                              ; preds = %486, %479
  %498 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %499 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = load i32, i32* @IF_WIFI_UL_MAX_LATENCY_VALID, align 4
  %502 = and i32 %500, %501
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %515

504:                                              ; preds = %497
  %505 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_UL_MAX_LATENCY_VALID, align 4
  %506 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %507 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = or i32 %508, %505
  store i32 %509, i32* %507, align 4
  %510 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %511 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %510, i32 0, i32 14
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %514 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %513, i32 0, i32 14
  store i32 %512, i32* %514, align 4
  br label %515

515:                                              ; preds = %504, %497
  %516 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %517 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = load i32, i32* @IF_WIFI_UL_RETXT_LEVEL_VALID, align 4
  %520 = and i32 %518, %519
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %578

522:                                              ; preds = %515
  %523 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_UL_RETXT_LEVEL_VALID, align 4
  %524 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %525 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 4
  %527 = or i32 %526, %523
  store i32 %527, i32* %525, align 4
  %528 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %529 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %528, i32 0, i32 1
  %530 = load i64, i64* %529, align 8
  %531 = load i64, i64* @IF_WIFI_UL_RETXT_LEVEL_NONE, align 8
  %532 = icmp eq i64 %530, %531
  br i1 %532, label %533, label %537

533:                                              ; preds = %522
  %534 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_UL_RETXT_LEVEL_NONE, align 4
  %535 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %536 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %535, i32 0, i32 13
  store i32 %534, i32* %536, align 4
  br label %577

537:                                              ; preds = %522
  %538 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %539 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %538, i32 0, i32 1
  %540 = load i64, i64* %539, align 8
  %541 = load i64, i64* @IF_WIFI_UL_RETXT_LEVEL_LOW, align 8
  %542 = icmp eq i64 %540, %541
  br i1 %542, label %543, label %547

543:                                              ; preds = %537
  %544 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_UL_RETXT_LEVEL_LOW, align 4
  %545 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %546 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %545, i32 0, i32 13
  store i32 %544, i32* %546, align 4
  br label %576

547:                                              ; preds = %537
  %548 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %549 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %548, i32 0, i32 1
  %550 = load i64, i64* %549, align 8
  %551 = load i64, i64* @IF_WIFI_UL_RETXT_LEVEL_MEDIUM, align 8
  %552 = icmp eq i64 %550, %551
  br i1 %552, label %553, label %557

553:                                              ; preds = %547
  %554 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_UL_RETXT_LEVEL_MEDIUM, align 4
  %555 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %556 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %555, i32 0, i32 13
  store i32 %554, i32* %556, align 4
  br label %575

557:                                              ; preds = %547
  %558 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %559 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %558, i32 0, i32 1
  %560 = load i64, i64* %559, align 8
  %561 = load i64, i64* @IF_WIFI_UL_RETXT_LEVEL_HIGH, align 8
  %562 = icmp eq i64 %560, %561
  br i1 %562, label %563, label %567

563:                                              ; preds = %557
  %564 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_UL_RETXT_LEVEL_HIGH, align 4
  %565 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %566 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %565, i32 0, i32 13
  store i32 %564, i32* %566, align 4
  br label %574

567:                                              ; preds = %557
  %568 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_UL_RETXT_LEVEL_VALID, align 4
  %569 = xor i32 %568, -1
  %570 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %571 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 4
  %573 = and i32 %572, %569
  store i32 %573, i32* %571, align 4
  br label %574

574:                                              ; preds = %567, %563
  br label %575

575:                                              ; preds = %574, %553
  br label %576

576:                                              ; preds = %575, %543
  br label %577

577:                                              ; preds = %576, %533
  br label %578

578:                                              ; preds = %577, %515
  %579 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %580 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 8
  %582 = load i32, i32* @IF_WIFI_UL_BYTES_LOST_VALID, align 4
  %583 = and i32 %581, %582
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %596

585:                                              ; preds = %578
  %586 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_UL_BYTES_LOST_VALID, align 4
  %587 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %588 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 4
  %590 = or i32 %589, %586
  store i32 %590, i32* %588, align 4
  %591 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %592 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %591, i32 0, i32 13
  %593 = load i32, i32* %592, align 8
  %594 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %595 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %594, i32 0, i32 12
  store i32 %593, i32* %595, align 4
  br label %596

596:                                              ; preds = %585, %578
  %597 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %598 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  %600 = load i32, i32* @IF_WIFI_UL_ERROR_RATE_VALID, align 4
  %601 = and i32 %599, %600
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %614

603:                                              ; preds = %596
  %604 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_UL_ERROR_RATE_VALID, align 4
  %605 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %606 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %605, i32 0, i32 1
  %607 = load i32, i32* %606, align 4
  %608 = or i32 %607, %604
  store i32 %608, i32* %606, align 4
  %609 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %610 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %609, i32 0, i32 12
  %611 = load i32, i32* %610, align 4
  %612 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %613 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %612, i32 0, i32 11
  store i32 %611, i32* %613, align 4
  br label %614

614:                                              ; preds = %603, %596
  %615 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %616 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 8
  %618 = load i32, i32* @IF_WIFI_DL_EFFECTIVE_BANDWIDTH_VALID, align 4
  %619 = and i32 %617, %618
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %632

621:                                              ; preds = %614
  %622 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_DL_EFFECTIVE_BANDWIDTH_VALID, align 4
  %623 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %624 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %623, i32 0, i32 1
  %625 = load i32, i32* %624, align 4
  %626 = or i32 %625, %622
  store i32 %626, i32* %624, align 4
  %627 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %628 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %627, i32 0, i32 11
  %629 = load i32, i32* %628, align 8
  %630 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %631 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %630, i32 0, i32 10
  store i32 %629, i32* %631, align 4
  br label %632

632:                                              ; preds = %621, %614
  %633 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %634 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 8
  %636 = load i32, i32* @IF_WIFI_DL_MAX_BANDWIDTH_VALID, align 4
  %637 = and i32 %635, %636
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %650

639:                                              ; preds = %632
  %640 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_DL_MAX_BANDWIDTH_VALID, align 4
  %641 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %642 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %641, i32 0, i32 1
  %643 = load i32, i32* %642, align 4
  %644 = or i32 %643, %640
  store i32 %644, i32* %642, align 4
  %645 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %646 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %645, i32 0, i32 10
  %647 = load i32, i32* %646, align 4
  %648 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %649 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %648, i32 0, i32 9
  store i32 %647, i32* %649, align 4
  br label %650

650:                                              ; preds = %639, %632
  %651 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %652 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %651, i32 0, i32 0
  %653 = load i32, i32* %652, align 8
  %654 = load i32, i32* @IF_WIFI_DL_MIN_LATENCY_VALID, align 4
  %655 = and i32 %653, %654
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %668

657:                                              ; preds = %650
  %658 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_DL_MIN_LATENCY_VALID, align 4
  %659 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %660 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %659, i32 0, i32 1
  %661 = load i32, i32* %660, align 4
  %662 = or i32 %661, %658
  store i32 %662, i32* %660, align 4
  %663 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %664 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %663, i32 0, i32 9
  %665 = load i32, i32* %664, align 8
  %666 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %667 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %666, i32 0, i32 8
  store i32 %665, i32* %667, align 4
  br label %668

668:                                              ; preds = %657, %650
  %669 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %670 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %669, i32 0, i32 0
  %671 = load i32, i32* %670, align 8
  %672 = load i32, i32* @IF_WIFI_DL_EFFECTIVE_LATENCY_VALID, align 4
  %673 = and i32 %671, %672
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %686

675:                                              ; preds = %668
  %676 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_DL_EFFECTIVE_LATENCY_VALID, align 4
  %677 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %678 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %677, i32 0, i32 1
  %679 = load i32, i32* %678, align 4
  %680 = or i32 %679, %676
  store i32 %680, i32* %678, align 4
  %681 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %682 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %681, i32 0, i32 8
  %683 = load i32, i32* %682, align 4
  %684 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %685 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %684, i32 0, i32 7
  store i32 %683, i32* %685, align 4
  br label %686

686:                                              ; preds = %675, %668
  %687 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %688 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %687, i32 0, i32 0
  %689 = load i32, i32* %688, align 8
  %690 = load i32, i32* @IF_WIFI_DL_MAX_LATENCY_VALID, align 4
  %691 = and i32 %689, %690
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %704

693:                                              ; preds = %686
  %694 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_DL_MAX_LATENCY_VALID, align 4
  %695 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %696 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %695, i32 0, i32 1
  %697 = load i32, i32* %696, align 4
  %698 = or i32 %697, %694
  store i32 %698, i32* %696, align 4
  %699 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %700 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %699, i32 0, i32 7
  %701 = load i32, i32* %700, align 8
  %702 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %703 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %702, i32 0, i32 6
  store i32 %701, i32* %703, align 4
  br label %704

704:                                              ; preds = %693, %686
  %705 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %706 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %705, i32 0, i32 0
  %707 = load i32, i32* %706, align 8
  %708 = load i32, i32* @IF_WIFI_DL_ERROR_RATE_VALID, align 4
  %709 = and i32 %707, %708
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %711, label %722

711:                                              ; preds = %704
  %712 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_DL_ERROR_RATE_VALID, align 4
  %713 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %714 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %713, i32 0, i32 1
  %715 = load i32, i32* %714, align 4
  %716 = or i32 %715, %712
  store i32 %716, i32* %714, align 4
  %717 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %718 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %717, i32 0, i32 6
  %719 = load i32, i32* %718, align 4
  %720 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %721 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %720, i32 0, i32 5
  store i32 %719, i32* %721, align 4
  br label %722

722:                                              ; preds = %711, %704
  %723 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %724 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %723, i32 0, i32 0
  %725 = load i32, i32* %724, align 8
  %726 = load i32, i32* @IF_WIFI_CONFIG_FREQUENCY_VALID, align 4
  %727 = and i32 %725, %726
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %729, label %763

729:                                              ; preds = %722
  %730 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_CONFIG_FREQUENCY_VALID, align 4
  %731 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %732 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %731, i32 0, i32 1
  %733 = load i32, i32* %732, align 4
  %734 = or i32 %733, %730
  store i32 %734, i32* %732, align 4
  %735 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %736 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %735, i32 0, i32 2
  %737 = load i64, i64* %736, align 8
  %738 = load i64, i64* @IF_WIFI_CONFIG_FREQUENCY_2_4_GHZ, align 8
  %739 = icmp eq i64 %737, %738
  br i1 %739, label %740, label %744

740:                                              ; preds = %729
  %741 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_CONFIG_FREQUENCY_2_4_GHZ, align 4
  %742 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %743 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %742, i32 0, i32 4
  store i32 %741, i32* %743, align 4
  br label %762

744:                                              ; preds = %729
  %745 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %746 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %745, i32 0, i32 2
  %747 = load i64, i64* %746, align 8
  %748 = load i64, i64* @IF_WIFI_CONFIG_FREQUENCY_5_0_GHZ, align 8
  %749 = icmp eq i64 %747, %748
  br i1 %749, label %750, label %754

750:                                              ; preds = %744
  %751 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_CONFIG_FREQUENCY_5_0_GHZ, align 4
  %752 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %753 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %752, i32 0, i32 4
  store i32 %751, i32* %753, align 4
  br label %761

754:                                              ; preds = %744
  %755 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_CONFIG_FREQUENCY_VALID, align 4
  %756 = xor i32 %755, -1
  %757 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %758 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %757, i32 0, i32 1
  %759 = load i32, i32* %758, align 4
  %760 = and i32 %759, %756
  store i32 %760, i32* %758, align 4
  br label %761

761:                                              ; preds = %754, %750
  br label %762

762:                                              ; preds = %761, %740
  br label %763

763:                                              ; preds = %762, %722
  %764 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %765 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %764, i32 0, i32 0
  %766 = load i32, i32* %765, align 8
  %767 = load i32, i32* @IF_WIFI_CONFIG_MULTICAST_RATE_VALID, align 4
  %768 = and i32 %766, %767
  %769 = icmp ne i32 %768, 0
  br i1 %769, label %770, label %781

770:                                              ; preds = %763
  %771 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_CONFIG_MULTICAST_RATE_VALID, align 4
  %772 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %773 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %772, i32 0, i32 1
  %774 = load i32, i32* %773, align 4
  %775 = or i32 %774, %771
  store i32 %775, i32* %773, align 4
  %776 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %777 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %776, i32 0, i32 5
  %778 = load i32, i32* %777, align 8
  %779 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %780 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %779, i32 0, i32 3
  store i32 %778, i32* %780, align 4
  br label %781

781:                                              ; preds = %770, %763
  %782 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %783 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %782, i32 0, i32 0
  %784 = load i32, i32* %783, align 8
  %785 = load i32, i32* @IF_WIFI_CONFIG_SCAN_COUNT_VALID, align 4
  %786 = and i32 %784, %785
  %787 = icmp ne i32 %786, 0
  br i1 %787, label %788, label %799

788:                                              ; preds = %781
  %789 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_CONFIG_SCAN_COUNT_VALID, align 4
  %790 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %791 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %790, i32 0, i32 1
  %792 = load i32, i32* %791, align 4
  %793 = or i32 %792, %789
  store i32 %793, i32* %791, align 4
  %794 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %795 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %794, i32 0, i32 4
  %796 = load i32, i32* %795, align 4
  %797 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %798 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %797, i32 0, i32 2
  store i32 %796, i32* %798, align 4
  br label %799

799:                                              ; preds = %788, %781
  %800 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %801 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %800, i32 0, i32 0
  %802 = load i32, i32* %801, align 8
  %803 = load i32, i32* @IF_WIFI_CONFIG_SCAN_DURATION_VALID, align 4
  %804 = and i32 %802, %803
  %805 = icmp ne i32 %804, 0
  br i1 %805, label %806, label %817

806:                                              ; preds = %799
  %807 = load i32, i32* @NSTAT_IFNET_DESC_WIFI_CONFIG_SCAN_DURATION_VALID, align 4
  %808 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %809 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %808, i32 0, i32 1
  %810 = load i32, i32* %809, align 4
  %811 = or i32 %810, %807
  store i32 %811, i32* %809, align 4
  %812 = load %struct.if_wifi_status_v1*, %struct.if_wifi_status_v1** %10, align 8
  %813 = getelementptr inbounds %struct.if_wifi_status_v1, %struct.if_wifi_status_v1* %812, i32 0, i32 3
  %814 = load i32, i32* %813, align 8
  %815 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %816 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %815, i32 0, i32 0
  store i32 %814, i32* %816, align 4
  br label %817

817:                                              ; preds = %806, %799
  br label %818

818:                                              ; preds = %817, %383
  br label %819

819:                                              ; preds = %818, %382
  br label %820

820:                                              ; preds = %819, %403, %45
  %821 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %822 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %821, i32 0, i32 2
  %823 = call i32 @lck_rw_done(i32* %822)
  br label %824

824:                                              ; preds = %820, %21
  ret void
}

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
