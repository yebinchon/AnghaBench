; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_prepare_command0.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_prepare_command0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error allocating memory for request\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@PUBLIC_KEY_LEN = common dso_local global i32 0, align 4
@SEC1_MSG_TYPE__Session_Command0 = common dso_local global i32 0, align 4
@SEC1_PAYLOAD__PAYLOAD_SC0 = common dso_local global i32 0, align 4
@SESSION_DATA__PROTO_SEC1 = common dso_local global i32 0, align 4
@protocomm_security1 = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @prepare_command0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_command0(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %8 = call i64 @malloc(i32 16)
  %9 = inttoptr i64 %8 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %6, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %11 = icmp eq %struct.TYPE_16__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @TAG, align 4
  %14 = call i32 @ESP_LOGE(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %15, i32* %3, align 4
  br label %61

16:                                               ; preds = %2
  %17 = call i64 @malloc(i32 8)
  %18 = inttoptr i64 %17 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %7, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = icmp eq %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 @ESP_LOGE(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = call i32 @free(%struct.TYPE_16__* %24)
  %26 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %26, i32* %3, align 4
  br label %61

27:                                               ; preds = %16
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = call i32 @sec1_payload__init(%struct.TYPE_16__* %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %31 = call i32 @session_cmd0__init(%struct.TYPE_15__* %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @SEC1_MSG_TYPE__Session_Command0, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @SEC1_PAYLOAD__PAYLOAD_SC0, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %50, align 8
  %51 = load i32, i32* @SESSION_DATA__PROTO_SEC1, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @protocomm_security1, i32 0, i32 0), align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %59, align 8
  %60 = load i32, i32* @ESP_OK, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %27, %21, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

declare dso_local i32 @sec1_payload__init(%struct.TYPE_16__*) #1

declare dso_local i32 @session_cmd0__init(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
