; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_le_connect_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_le_connect_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }

@FALSE = common dso_local global i64 0, align 8
@BT_TRANSPORT_BR_EDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"GATT   ATT protocol channel with BDA: %08x%04x is %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@TRUE = common dso_local global i64 0, align 8
@GATT_CH_CONN = common dso_local global i64 0, align 8
@GATT_CH_OPEN = common dso_local global i32 0, align 4
@GATT_DEF_BLE_MTU_SIZE = common dso_local global i8* null, align 8
@BT_TRANSPORT_LE = common dso_local global i32 0, align 4
@L2CAP_ATT_CID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"CCB max out, no rsources\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ATT disconnected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, i32, i64)* @gatt_le_connect_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gatt_le_connect_cback(i32 %0, i32* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call %struct.TYPE_7__* @gatt_find_tcb_by_addr(i32* %14, i64 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %11, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @BT_TRANSPORT_BR_EDR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %127

22:                                               ; preds = %5
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 24
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 16
  %31 = add nsw i32 %26, %30
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = add nsw i32 %31, %35
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %48, i8* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = call i32* @gatt_is_bda_in_the_srv_chg_clt_list(i32* %54)
  store i32* %55, i32** %13, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %22
  %58 = load i64, i64* @TRUE, align 8
  store i64 %58, i64* %12, align 8
  br label %67

59:                                               ; preds = %22
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @btm_sec_is_a_bonded_dev(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @gatt_add_a_bonded_dev_for_srv_chg(i32* %64)
  br label %66

66:                                               ; preds = %63, %59
  br label %67

67:                                               ; preds = %66, %57
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %121

70:                                               ; preds = %67
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %72 = icmp ne %struct.TYPE_7__* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %75 = call i64 @gatt_get_ch_state(%struct.TYPE_7__* %74)
  %76 = load i64, i64* @GATT_CH_CONN, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %80 = load i32, i32* @GATT_CH_OPEN, align 4
  %81 = call i32 @gatt_set_ch_state(%struct.TYPE_7__* %79, i32 %80)
  %82 = load i8*, i8** @GATT_DEF_BLE_MTU_SIZE, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %86 = call i32 @gatt_send_conn_cback(%struct.TYPE_7__* %85)
  br label %87

87:                                               ; preds = %78, %73
  %88 = load i64, i64* %12, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @gatt_chk_srv_chg(i32* %91)
  br label %93

93:                                               ; preds = %90, %87
  br label %120

94:                                               ; preds = %70
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %97 = call %struct.TYPE_7__* @gatt_allocate_tcb_by_bdaddr(i32* %95, i32 %96)
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %11, align 8
  %98 = icmp ne %struct.TYPE_7__* %97, null
  br i1 %98, label %99, label %117

99:                                               ; preds = %94
  %100 = load i32, i32* @L2CAP_ATT_CID, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %104 = load i32, i32* @GATT_CH_OPEN, align 4
  %105 = call i32 @gatt_set_ch_state(%struct.TYPE_7__* %103, i32 %104)
  %106 = load i8*, i8** @GATT_DEF_BLE_MTU_SIZE, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %110 = call i32 @gatt_send_conn_cback(%struct.TYPE_7__* %109)
  %111 = load i64, i64* %12, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %99
  %114 = load i32*, i32** %13, align 8
  %115 = call i32 @gatt_chk_srv_chg(i32* %114)
  br label %116

116:                                              ; preds = %113, %99
  br label %119

117:                                              ; preds = %94
  %118 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %116
  br label %120

120:                                              ; preds = %119, %93
  br label %127

121:                                              ; preds = %67
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i64, i64* %10, align 8
  %125 = call i32 @gatt_cleanup_upon_disc(i32* %122, i32 %123, i64 %124)
  %126 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %127

127:                                              ; preds = %21, %121, %120
  ret void
}

declare dso_local %struct.TYPE_7__* @gatt_find_tcb_by_addr(i32*, i64) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32* @gatt_is_bda_in_the_srv_chg_clt_list(i32*) #1

declare dso_local i64 @btm_sec_is_a_bonded_dev(i32*) #1

declare dso_local i32 @gatt_add_a_bonded_dev_for_srv_chg(i32*) #1

declare dso_local i64 @gatt_get_ch_state(%struct.TYPE_7__*) #1

declare dso_local i32 @gatt_set_ch_state(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @gatt_send_conn_cback(%struct.TYPE_7__*) #1

declare dso_local i32 @gatt_chk_srv_chg(i32*) #1

declare dso_local %struct.TYPE_7__* @gatt_allocate_tcb_by_bdaddr(i32*, i32) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

declare dso_local i32 @gatt_cleanup_upon_disc(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
