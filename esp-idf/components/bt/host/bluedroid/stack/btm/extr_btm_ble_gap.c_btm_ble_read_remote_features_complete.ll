; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_read_remote_features_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_read_remote_features_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 (...)*, i32 (...)* }

@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"btm_ble_read_remote_features_complete \00", align 1
@HCI_ERR_CONN_FAILED_ESTABLISHMENT = common dso_local global i64 0, align 8
@MAX_L2CAP_LINKS = common dso_local global i32 0, align 4
@BD_FEATURES_LEN = common dso_local global i32 0, align 4
@HCI_ROLE_MASTER = common dso_local global i64 0, align 8
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_read_remote_features_complete(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 0
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %3, align 8
  %11 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* %5, align 8
  %13 = load i64*, i64** %2, align 8
  %14 = call i32 @STREAM_TO_UINT8(i64 %12, i64* %13)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @HCI_ERR_CONN_FAILED_ESTABLISHMENT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %95

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = load i64*, i64** %2, align 8
  %21 = call i32 @STREAM_TO_UINT16(i64 %19, i64* %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %89, %18
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %94

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %88

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %88

37:                                               ; preds = %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i64*, i64** %2, align 8
  %42 = load i32, i32* @BD_FEATURES_LEN, align 4
  %43 = call i32 @STREAM_TO_ARRAY(i32 %40, i64* %41, i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HCI_ROLE_MASTER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @btsnd_hcic_rmt_ver_req(i64 %52)
  br label %87

54:                                               ; preds = %37
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %54
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @HCI_LE_DATA_LEN_EXT_SUPPORTED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = call %struct.TYPE_5__* (...) @controller_get_interface()
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32 (...)*, i32 (...)** %68, align 8
  %70 = call i32 (...) %69()
  store i32 %70, i32* %7, align 4
  %71 = call %struct.TYPE_5__* (...) @controller_get_interface()
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32 (...)*, i32 (...)** %72, align 8
  %74 = call i32 (...) %73()
  store i32 %74, i32* %8, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @btsnd_hcic_ble_set_data_length(i64 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %66, %60
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @l2cble_notify_le_connection(i32 %84)
  br label %86

86:                                               ; preds = %81, %54
  br label %87

87:                                               ; preds = %86, %49
  br label %94

88:                                               ; preds = %31, %26
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 1
  store %struct.TYPE_4__* %93, %struct.TYPE_4__** %3, align 8
  br label %22

94:                                               ; preds = %87, %22
  br label %95

95:                                               ; preds = %94, %1
  ret void
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*) #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i32 @STREAM_TO_UINT16(i64, i64*) #1

declare dso_local i32 @STREAM_TO_ARRAY(i32, i64*, i32) #1

declare dso_local i32 @btsnd_hcic_rmt_ver_req(i64) #1

declare dso_local i64 @HCI_LE_DATA_LEN_EXT_SUPPORTED(i32) #1

declare dso_local %struct.TYPE_5__* @controller_get_interface(...) #1

declare dso_local i32 @btsnd_hcic_ble_set_data_length(i64, i32, i32) #1

declare dso_local i32 @l2cble_notify_le_connection(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
