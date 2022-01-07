; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_read_remote_version_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_read_remote_version_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 (...)*, i32 (...)* }

@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"btm_read_remote_version_complete\0A\00", align 1
@MAX_L2CAP_LINKS = common dso_local global i32 0, align 4
@HCI_SUCCESS = common dso_local global i64 0, align 8
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@HCI_ROLE_MASTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_read_remote_version_complete(i64* %0) #0 {
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
  %11 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* %4, align 8
  %13 = load i64*, i64** %2, align 8
  %14 = call i32 @STREAM_TO_UINT8(i64 %12, i64* %13)
  %15 = load i64, i64* %5, align 8
  %16 = load i64*, i64** %2, align 8
  %17 = call i32 @STREAM_TO_UINT16(i64 %15, i64* %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %99, %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MAX_L2CAP_LINKS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %104

22:                                               ; preds = %18
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %98

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %98

33:                                               ; preds = %27
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @HCI_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %2, align 8
  %42 = call i32 @STREAM_TO_UINT8(i64 %40, i64* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %2, align 8
  %47 = call i32 @STREAM_TO_UINT16(i64 %45, i64* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %2, align 8
  %52 = call i32 @STREAM_TO_UINT16(i64 %50, i64* %51)
  br label %53

53:                                               ; preds = %37, %33
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %97

59:                                               ; preds = %53
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HCI_ROLE_MASTER, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %59
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @HCI_LE_DATA_LEN_EXT_SUPPORTED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = call %struct.TYPE_5__* (...) @controller_get_interface()
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32 (...)*, i32 (...)** %73, align 8
  %75 = call i32 (...) %74()
  store i32 %75, i32* %7, align 4
  %76 = call %struct.TYPE_5__* (...) @controller_get_interface()
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32 (...)*, i32 (...)** %77, align 8
  %79 = call i32 (...) %78()
  store i32 %79, i32* %8, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @btsnd_hcic_ble_set_data_length(i64 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %71, %65
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @l2cble_notify_le_connection(i32 %89)
  br label %96

91:                                               ; preds = %59
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @btsnd_hcic_ble_read_remote_feat(i64 %94)
  br label %96

96:                                               ; preds = %91, %86
  br label %97

97:                                               ; preds = %96, %53
  br label %104

98:                                               ; preds = %27, %22
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 1
  store %struct.TYPE_4__* %103, %struct.TYPE_4__** %3, align 8
  br label %18

104:                                              ; preds = %97, %18
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i32 @STREAM_TO_UINT16(i64, i64*) #1

declare dso_local i64 @HCI_LE_DATA_LEN_EXT_SUPPORTED(i32) #1

declare dso_local %struct.TYPE_5__* @controller_get_interface(...) #1

declare dso_local i32 @btsnd_hcic_ble_set_data_length(i64, i32, i32) #1

declare dso_local i32 @l2cble_notify_le_connection(i32) #1

declare dso_local i32 @btsnd_hcic_ble_read_remote_feat(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
