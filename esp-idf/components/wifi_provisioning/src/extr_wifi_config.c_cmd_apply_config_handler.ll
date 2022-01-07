; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_wifi_config.c_cmd_apply_config_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_wifi_config.c_cmd_apply_config_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64 (i32*)*, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Enter cmd_apply_config_handler\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Command invoked without handlers\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Error allocating memory\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@STATUS__Success = common dso_local global i32 0, align 4
@STATUS__InternalError = common dso_local global i32 0, align 4
@WI_FI_CONFIG_PAYLOAD__PAYLOAD_RESP_APPLY_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, %struct.TYPE_8__*, i8*)* @cmd_apply_config_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cmd_apply_config_handler(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 @ESP_LOGD(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 @ESP_LOGE(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %19, i64* %4, align 8
  br label %56

20:                                               ; preds = %3
  %21 = call i64 @malloc(i32 4)
  %22 = inttoptr i64 %21 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %9, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @TAG, align 4
  %27 = call i32 @ESP_LOGE(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %28, i64* %4, align 8
  br label %56

29:                                               ; preds = %20
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = call i32 @resp_apply_config__init(%struct.TYPE_9__* %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64 (i32*)*, i64 (i32*)** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = call i64 %34(i32* %36)
  %38 = load i64, i64* @ESP_OK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i32, i32* @STATUS__Success, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %48

44:                                               ; preds = %29
  %45 = load i32, i32* @STATUS__InternalError, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @WI_FI_CONFIG_PAYLOAD__PAYLOAD_RESP_APPLY_CONFIG, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %54, align 8
  %55 = load i64, i64* @ESP_OK, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %48, %25, %16
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @resp_apply_config__init(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
