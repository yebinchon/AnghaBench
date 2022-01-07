; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_wifi_scan.c_wifi_prov_scan_cmd_dispatcher.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_wifi_scan.c_wifi_prov_scan_cmd_dispatcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (%struct.TYPE_7__*, %struct.TYPE_7__*, i8*)* }
%struct.TYPE_7__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"In wifi_prov_scan_cmd_dispatcher Cmd=%d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid command handler lookup\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@cmd_table = common dso_local global %struct.TYPE_8__* null, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Error executing command handler\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, %struct.TYPE_7__*, i8*)* @wifi_prov_scan_cmd_dispatcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wifi_prov_scan_cmd_dispatcher(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @TAG, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ESP_LOGD(i32 %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @lookup_cmd_handler(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 @ESP_LOGE(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i64, i64* @ESP_FAIL, align 8
  store i64 %24, i64* %4, align 8
  br label %45

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cmd_table, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64 (%struct.TYPE_7__*, %struct.TYPE_7__*, i8*)*, i64 (%struct.TYPE_7__*, %struct.TYPE_7__*, i8*)** %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 %31(%struct.TYPE_7__* %32, %struct.TYPE_7__* %33, i8* %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @ESP_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load i32, i32* @TAG, align 4
  %41 = call i32 @ESP_LOGE(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i64, i64* @ESP_FAIL, align 8
  store i64 %42, i64* %4, align 8
  br label %45

43:                                               ; preds = %25
  %44 = load i64, i64* @ESP_OK, align 8
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %43, %39, %21
  %46 = load i64, i64* %4, align 8
  ret i64 %46
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @lookup_cmd_handler(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
