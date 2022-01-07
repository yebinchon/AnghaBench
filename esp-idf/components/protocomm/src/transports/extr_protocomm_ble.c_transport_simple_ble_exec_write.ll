; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_ble.c_transport_simple_ble_exec_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_ble.c_transport_simple_ble_exec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Inside exec_write w/ session - %d\00", align 1
@ESP_GATT_PREP_WRITE_EXEC = common dso_local global i64 0, align 8
@prepare_write_env = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@protoble_internal = common dso_local global %struct.TYPE_8__* null, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid content received, killing connection\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Response from exec write\00", align 1
@ESP_GATT_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Send response error in exec write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_7__*)* @transport_simple_ble_exec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transport_simple_ble_exec_write(i32 %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @TAG, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ESP_LOGD(i32 %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ESP_GATT_PREP_WRITE_EXEC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %3
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @prepare_write_env, i32 0, i32 1), align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %22
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @protoble_internal, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @prepare_write_env, i32 0, i32 2), align 8
  %30 = call i32 @handle_to_handler(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @prepare_write_env, i32 0, i32 1), align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @prepare_write_env, i32 0, i32 0), align 8
  %37 = call i64 @protocomm_req_handle(i32 %28, i32 %30, i32 %34, i32* %35, i64 %36, i32** %8, i32* %9)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @ESP_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %25
  %42 = load i32, i32* @TAG, align 4
  %43 = call i32 @ESP_LOGE(i32 %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @esp_ble_gatts_close(i32 %44, i32 %48)
  br label %58

50:                                               ; preds = %25
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @hexdump(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %51, i32 %52)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @prepare_write_env, i32 0, i32 2), align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @esp_ble_gatts_set_attr_value(i32 %54, i32 %55, i32* %56)
  br label %58

58:                                               ; preds = %50, %41
  br label %59

59:                                               ; preds = %58, %22, %3
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @prepare_write_env, i32 0, i32 1), align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @prepare_write_env, i32 0, i32 1), align 8
  %64 = call i32 @free(i32* %63)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @prepare_write_env, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @prepare_write_env, i32 0, i32 0), align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ESP_GATT_OK, align 4
  %76 = call i64 @esp_ble_gatts_send_response(i32 %66, i32 %70, i32 %74, i32 %75, i32* null)
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @ESP_OK, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %65
  %81 = load i32, i32* @TAG, align 4
  %82 = call i32 @ESP_LOGE(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %65
  %84 = load i32*, i32** %8, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @free(i32* %87)
  br label %89

89:                                               ; preds = %86, %83
  ret void
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i64 @protocomm_req_handle(i32, i32, i32, i32*, i64, i32**, i32*) #1

declare dso_local i32 @handle_to_handler(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_ble_gatts_close(i32, i32) #1

declare dso_local i32 @hexdump(i8*, i32*, i32) #1

declare dso_local i32 @esp_ble_gatts_set_attr_value(i32, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @esp_ble_gatts_send_response(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
