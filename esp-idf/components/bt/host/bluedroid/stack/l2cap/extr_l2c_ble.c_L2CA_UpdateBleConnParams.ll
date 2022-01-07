; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ble.c_L2CA_UpdateBleConnParams.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_ble.c_L2CA_UpdateBleConnParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i32, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32, i32, i32, i8*, i8* }
%struct.TYPE_8__ = type { i64, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"L2CA_UpdateBleConnParams - unknown BD_ADDR %08x%04x\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"L2CA_UpdateBleConnParams - BD_ADDR %08x%04x not LE\00", align 1
@L2C_BLE_UPDATE_PARAM_FULL = common dso_local global i32 0, align 4
@HCI_ERR_ILLEGAL_COMMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [86 x i8] c"There are two connection parameter requests that are being updated, please try later \00", align 1
@conn_param_update_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@L2C_BLE_NEW_CONN_PARAM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@BTU_TTYPE_L2CAP_UPDA_CONN_PARAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @L2CA_UpdateBleConnParams(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %19 = call i32* @btm_bda_to_acl(i32* %17, i64 %18)
  store i32* %19, i32** %13, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %22 = call %struct.TYPE_8__* @l2cu_find_lcb_by_bd_addr(i32* %20, i64 %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %12, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32*, i32** %13, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %57, label %28

28:                                               ; preds = %25, %5
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 24
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 16
  %37 = add nsw i32 %32, %36
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = add nsw i32 %37, %41
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %54)
  %56 = load i64, i64* @FALSE, align 8
  store i64 %56, i64* %6, align 8
  br label %161

57:                                               ; preds = %25
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %57
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 24
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 16
  %72 = add nsw i32 %67, %71
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 8
  %77 = add nsw i32 %72, %76
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %89)
  %91 = load i64, i64* @FALSE, align 8
  store i64 %91, i64* %6, align 8
  br label %161

92:                                               ; preds = %57
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @L2C_BLE_UPDATE_PARAM_FULL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %129

99:                                               ; preds = %92
  %100 = load i32, i32* @HCI_ERR_ILLEGAL_COMMAND, align 4
  store i32 %100, i32* %14, align 4
  %101 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32 (i32, i32, %struct.TYPE_9__*)*, i32 (i32, i32, %struct.TYPE_9__*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @conn_param_update_cb, i32 0, i32 0), align 8
  %103 = icmp ne i32 (i32, i32, %struct.TYPE_9__*)* %102, null
  br i1 %103, label %104, label %127

104:                                              ; preds = %99
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  store i8* %105, i8** %106, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  store i8* %107, i8** %108, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store i32 %111, i32* %112, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 %119, i32* %120, align 8
  %121 = load i32 (i32, i32, %struct.TYPE_9__*)*, i32 (i32, i32, %struct.TYPE_9__*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @conn_param_update_cb, i32 0, i32 0), align 8
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = call i32 %121(i32 %122, i32 %125, %struct.TYPE_9__* %15)
  br label %127

127:                                              ; preds = %104, %99
  %128 = load i64, i64* @FALSE, align 8
  store i64 %128, i64* %6, align 8
  br label %161

129:                                              ; preds = %92
  %130 = load i8*, i8** %8, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 6
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 5
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* @L2C_BLE_NEW_CONN_PARAM, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %148 = call i64 @l2cble_start_conn_update(%struct.TYPE_8__* %147)
  %149 = load i64, i64* @TRUE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %129
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %153 = call i32 @CalConnectParamTimeout(%struct.TYPE_8__* %152)
  store i32 %153, i32* %16, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i32, i32* @BTU_TTYPE_L2CAP_UPDA_CONN_PARAMS, align 4
  %157 = load i32, i32* %16, align 4
  %158 = call i32 @btu_start_timer(i32* %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %151, %129
  %160 = load i64, i64* @TRUE, align 8
  store i64 %160, i64* %6, align 8
  br label %161

161:                                              ; preds = %159, %127, %63, %28
  %162 = load i64, i64* %6, align 8
  ret i64 %162
}

declare dso_local i32* @btm_bda_to_acl(i32*, i64) #1

declare dso_local %struct.TYPE_8__* @l2cu_find_lcb_by_bd_addr(i32*, i64) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i32, i32) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*) #1

declare dso_local i64 @l2cble_start_conn_update(%struct.TYPE_8__*) #1

declare dso_local i32 @CalConnectParamTimeout(%struct.TYPE_8__*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
