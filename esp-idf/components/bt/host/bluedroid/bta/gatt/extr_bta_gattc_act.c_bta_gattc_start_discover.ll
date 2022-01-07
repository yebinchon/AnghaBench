; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_start_discover.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_start_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i32, %struct.TYPE_15__*, i32, i32, %struct.TYPE_12__*, i32, i32* }
%struct.TYPE_15__ = type { i64, i32, i64, i32 }
%struct.TYPE_12__ = type { i32 (i32, %struct.TYPE_14__*)* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }

@.str = private unnamed_addr constant [64 x i8] c"bta_gattc_start_discover conn_id=%d p_clcb->p_srcb->state = %d \00", align 1
@BTA_GATTC_REQ_WAITING = common dso_local global i64 0, align 8
@BTA_GATTC_SERV_IDLE = common dso_local global i64 0, align 8
@BTA_GATTC_SERV_DISC = common dso_local global i64 0, align 8
@BTA_GATTC_NO_SCHEDULE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@BTA_GATTC_SERV_DISC_ACT = common dso_local global i64 0, align 8
@BTA_TRANSPORT_LE = common dso_local global i64 0, align 8
@BTA_GATT_OK = common dso_local global i64 0, align 8
@GATT_DISC_SRVC_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"discovery on server failed\00", align 1
@BTA_GATTC_DIS_SRVC_CMPL_EVT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BTA_GATTC_SERVICE_INFO_FROM_REMOTE_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"unknown device, can not start discovery\00", align 1
@BTA_GATTC_DISC_WAITING = common dso_local global i64 0, align 8
@BTA_GATTC_CONN_ST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_gattc_start_discover(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @UNUSED(i32* %6)
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 9
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BTA_GATTC_REQ_WAITING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21, %2
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BTA_GATTC_SERV_IDLE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %27, %21
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BTA_GATTC_SERV_DISC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %146

43:                                               ; preds = %35, %27
  %44 = load i64, i64* @BTA_GATTC_NO_SCHEDULE, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = icmp ne %struct.TYPE_15__* %49, null
  br i1 %50, label %51, label %143

51:                                               ; preds = %43
  %52 = load i32, i32* @FALSE, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 3
  store i32 %52, i32* %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* @BTA_GATTC_SERV_DISC_ACT, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  store i64 %61, i64* %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BTA_TRANSPORT_LE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %51
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FALSE, align 4
  %78 = call i32 @L2CA_EnableUpdateBleConnParams(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %71, %51
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = call i32 @bta_gattc_set_discover_st(%struct.TYPE_15__* %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = call i64 @bta_gattc_init_cache(%struct.TYPE_15__* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* @BTA_GATT_OK, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %79
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = load i32, i32* @GATT_DISC_SRVC_ALL, align 4
  %100 = call i64 @bta_gattc_discover_pri_service(i32 %95, %struct.TYPE_15__* %98, i32 %99)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %92, %79
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BTA_GATT_OK, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %135

109:                                              ; preds = %103
  %110 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @bta_gattc_reset_discover_st(%struct.TYPE_15__* %113, i64 %116)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 7
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %131, align 8
  %133 = load i32, i32* @BTA_GATTC_DIS_SRVC_CMPL_EVT, align 4
  %134 = call i32 %132(i32 %133, %struct.TYPE_14__* %5)
  br label %139

135:                                              ; preds = %103
  %136 = load i32, i32* @TRUE, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %135, %109
  %140 = load i32, i32* @BTA_GATTC_SERVICE_INFO_FROM_REMOTE_DEVICE, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 8
  br label %145

143:                                              ; preds = %43
  %144 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %139
  br label %162

146:                                              ; preds = %35
  %147 = load i64, i64* @BTA_GATTC_DISC_WAITING, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @BTA_GATTC_SERV_IDLE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %146
  %158 = load i32, i32* @BTA_GATTC_CONN_ST, align 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  br label %161

161:                                              ; preds = %157, %146
  br label %162

162:                                              ; preds = %161, %145
  ret void
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32, i64) #1

declare dso_local i32 @L2CA_EnableUpdateBleConnParams(i32, i32) #1

declare dso_local i32 @bta_gattc_set_discover_st(%struct.TYPE_15__*) #1

declare dso_local i64 @bta_gattc_init_cache(%struct.TYPE_15__*) #1

declare dso_local i64 @bta_gattc_discover_pri_service(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*) #1

declare dso_local i32 @bta_gattc_reset_discover_st(%struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
