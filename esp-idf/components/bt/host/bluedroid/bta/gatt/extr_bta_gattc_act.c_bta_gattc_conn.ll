; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_conn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__*, i32, i32, i32, i64, i32 }
%struct.TYPE_17__ = type { i64, i64, i8*, i32*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"bta_gattc_conn server cache state=%d\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"bta_gattc_conn conn_id=%d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@GATT_DEF_BLE_MTU_SIZE = common dso_local global i64 0, align 8
@BTA_GATTC_SERV_IDLE = common dso_local global i64 0, align 8
@BTA_GATTC_SERV_LOAD = common dso_local global i64 0, align 8
@BTA_GATT_OK = common dso_local global i32 0, align 4
@BTA_GATTC_SERV_DISC = common dso_local global i64 0, align 8
@BTA_GATTC_DISCOVER_ST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@BTA_GATTC_INT_DISCOVER_EVT = common dso_local global i32 0, align 4
@BTA_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@BTA_ID_GATTC = common dso_local global i32 0, align 4
@BTA_ALL_APP_ID = common dso_local global i32 0, align 4
@BTA_GATT_ALREADY_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_gattc_conn(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = call i32 @GATT_GetConnectionInfor(i64 %31, i32* %5, i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %15, %2
  %39 = load i32, i32* @TRUE, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 4
  store i32 %39, i32* %43, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load i64, i64* @GATT_DEF_BLE_MTU_SIZE, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  store i64 %51, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %38
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %56
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BTA_GATTC_SERV_IDLE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %120

71:                                               ; preds = %63, %56
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BTA_GATTC_SERV_IDLE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %71
  %80 = load i64, i64* @BTA_GATTC_SERV_LOAD, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  store i64 %80, i64* %84, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = call i64 @bta_gattc_cache_load(%struct.TYPE_16__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %79
  %89 = load i64, i64* @BTA_GATTC_SERV_IDLE, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  store i64 %89, i64* %93, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = load i32, i32* @BTA_GATT_OK, align 4
  %98 = call i32 @bta_gattc_reset_discover_st(%struct.TYPE_17__* %96, i32 %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @bta_gattc_register_service_change_notify(i32 %101, i32 %104)
  br label %114

106:                                              ; preds = %79
  %107 = load i64, i64* @BTA_GATTC_SERV_DISC, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  store i64 %107, i64* %111, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = call i32 @bta_gattc_start_discover(%struct.TYPE_16__* %112, i32* null)
  br label %114

114:                                              ; preds = %106, %88
  br label %119

115:                                              ; preds = %71
  %116 = load i32, i32* @BTA_GATTC_DISCOVER_ST, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %114
  br label %137

120:                                              ; preds = %63
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load i8*, i8** @FALSE, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 2
  store i8* %128, i8** %132, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %134 = load i32, i32* @BTA_GATTC_INT_DISCOVER_EVT, align 4
  %135 = call i32 @bta_gattc_sm_execute(%struct.TYPE_16__* %133, i32 %134, i32* null)
  br label %136

136:                                              ; preds = %127, %120
  br label %137

137:                                              ; preds = %136, %119
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %191

142:                                              ; preds = %137
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @BTA_TRANSPORT_BR_EDR, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = load i32, i32* @BTA_ID_GATTC, align 4
  %150 = load i32, i32* @BTA_ALL_APP_ID, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @bta_sys_conn_open(i32 %149, i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %148, %142
  %156 = load i32, i32* @BTA_GATT_OK, align 4
  store i32 %156, i32* %6, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %158 = icmp ne %struct.TYPE_15__* %157, null
  br i1 %158, label %159, label %171

159:                                              ; preds = %155
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load i8*, i8** @FALSE, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  store i8* %166, i8** %169, align 8
  %170 = load i32, i32* @BTA_GATT_ALREADY_OPEN, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %165, %159, %155
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @bta_gattc_send_open_cback(i64 %174, i32 %175, i32 %178, i32 %181, i32 %184, i64 %189)
  br label %191

191:                                              ; preds = %171, %137
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i64) #1

declare dso_local i32 @GATT_GetConnectionInfor(i64, i32*, i32, i32*) #1

declare dso_local i64 @bta_gattc_cache_load(%struct.TYPE_16__*) #1

declare dso_local i32 @bta_gattc_reset_discover_st(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @bta_gattc_register_service_change_notify(i32, i32) #1

declare dso_local i32 @bta_gattc_start_discover(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @bta_gattc_sm_execute(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @bta_sys_conn_open(i32, i32, i32) #1

declare dso_local i32 @bta_gattc_send_open_cback(i64, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
