; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatt_server_handle_client_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatt_server_handle_client_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"server receive invalid PDU size:%d pdu size:%d\00", align 1
@GATT_INVALID_PDU = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_server_handle_client_req(%struct.TYPE_13__* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %10 = call i32 @gatt_sr_cmd_empty(%struct.TYPE_13__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 140
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %93

16:                                               ; preds = %12, %4
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %23, 1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 141
  br i1 %30, label %31, label %43

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 128
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 140
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = load i32, i32* @GATT_INVALID_PDU, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @gatt_send_error_rsp(%struct.TYPE_13__* %38, i32 %39, i32 %40, i32 0, i32 %41)
  br label %43

43:                                               ; preds = %37, %34, %31, %22
  br label %93

44:                                               ; preds = %16
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %91 [
    i32 132, label %46
    i32 137, label %46
    i32 138, label %52
    i32 131, label %58
    i32 134, label %64
    i32 133, label %64
    i32 129, label %64
    i32 141, label %64
    i32 128, label %64
    i32 135, label %64
    i32 140, label %70
    i32 136, label %74
    i32 139, label %79
    i32 130, label %85
  ]

46:                                               ; preds = %44, %44
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i64, i64* %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @gatts_process_primary_service_req(%struct.TYPE_13__* %47, i32 %48, i64 %49, i32* %50)
  br label %92

52:                                               ; preds = %44
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i64, i64* %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @gatts_process_find_info(%struct.TYPE_13__* %53, i32 %54, i64 %55, i32* %56)
  br label %92

58:                                               ; preds = %44
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @gatts_process_read_by_type_req(%struct.TYPE_13__* %59, i32 %60, i64 %61, i32* %62)
  br label %92

64:                                               ; preds = %44, %44, %44, %44, %44, %44
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i64, i64* %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @gatts_process_attribute_req(%struct.TYPE_13__* %65, i32 %66, i64 %67, i32* %68)
  br label %92

70:                                               ; preds = %44
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @gatts_process_value_conf(%struct.TYPE_13__* %71, i32 %72)
  br label %92

74:                                               ; preds = %44
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @gatts_process_mtu_req(%struct.TYPE_13__* %75, i64 %76, i32* %77)
  br label %92

79:                                               ; preds = %44
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i64, i64* %7, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @gatt_process_exec_write_req(%struct.TYPE_13__* %80, i32 %81, i64 %82, i32* %83)
  br label %92

85:                                               ; preds = %44
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i64, i64* %7, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @gatt_process_read_multi_req(%struct.TYPE_13__* %86, i32 %87, i64 %88, i32* %89)
  br label %92

91:                                               ; preds = %44
  br label %92

92:                                               ; preds = %91, %85, %79, %74, %70, %64, %58, %52, %46
  br label %93

93:                                               ; preds = %15, %92, %43
  ret void
}

declare dso_local i32 @gatt_sr_cmd_empty(%struct.TYPE_13__*) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*, i64, i64) #1

declare dso_local i32 @gatt_send_error_rsp(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @gatts_process_primary_service_req(%struct.TYPE_13__*, i32, i64, i32*) #1

declare dso_local i32 @gatts_process_find_info(%struct.TYPE_13__*, i32, i64, i32*) #1

declare dso_local i32 @gatts_process_read_by_type_req(%struct.TYPE_13__*, i32, i64, i32*) #1

declare dso_local i32 @gatts_process_attribute_req(%struct.TYPE_13__*, i32, i64, i32*) #1

declare dso_local i32 @gatts_process_value_conf(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @gatts_process_mtu_req(%struct.TYPE_13__*, i64, i32*) #1

declare dso_local i32 @gatt_process_exec_write_req(%struct.TYPE_13__*, i32, i64, i32*) #1

declare dso_local i32 @gatt_process_read_multi_req(%struct.TYPE_13__*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
