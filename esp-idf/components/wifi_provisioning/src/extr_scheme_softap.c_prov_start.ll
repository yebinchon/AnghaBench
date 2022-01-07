; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_scheme_softap.c_prov_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_scheme_softap.c_prov_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Protocomm handle cannot be null\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Cannot start with null configuration\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to start protocomm HTTP server\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to start Wi-Fi AP\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Wi-Fi Provisioning Service\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"_esp_wifi_prov\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"_tcp\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Error adding mDNS service! Check if mDNS is running\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"version_endpoint\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"/proto-ver\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"session_endpoint\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"/prov-session\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"config_endpoint\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"/prov-config\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Error adding mDNS service text item\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @prov_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prov_start(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 @ESP_LOGE(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %14, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @TAG, align 4
  %20 = call i32 @ESP_LOGE(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %21, i32* %3, align 4
  br label %87

22:                                               ; preds = %15
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %6, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %7, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = call i32 @protocomm_httpd_start(i32* %27, %struct.TYPE_9__* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @ESP_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i32, i32* @TAG, align 4
  %35 = call i32 @ESP_LOGE(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %87

37:                                               ; preds = %22
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @start_wifi_ap(i32 %40, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ESP_OK, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load i32, i32* @TAG, align 4
  %50 = call i32 @ESP_LOGE(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @protocomm_httpd_stop(i32* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %87

54:                                               ; preds = %37
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mdns_service_add(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %60, i32* null, i32 0)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @ESP_OK, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @TAG, align 4
  %67 = call i32 @ESP_LOGW(i32 %66, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %85

68:                                               ; preds = %54
  %69 = call i32 @mdns_service_txt_item_set(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = call i32 @mdns_service_txt_item_set(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = call i32 @mdns_service_txt_item_set(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @ESP_OK, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %68
  %82 = load i32, i32* @TAG, align 4
  %83 = call i32 @ESP_LOGE(i32 %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %68
  br label %85

85:                                               ; preds = %84, %65
  %86 = load i32, i32* @ESP_OK, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %48, %33, %18, %11
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @protocomm_httpd_start(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @start_wifi_ap(i32, i32) #1

declare dso_local i32 @protocomm_httpd_stop(i32*) #1

declare dso_local i32 @mdns_service_add(i8*, i8*, i8*, i32, i32*, i32) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i32 @mdns_service_txt_item_set(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
