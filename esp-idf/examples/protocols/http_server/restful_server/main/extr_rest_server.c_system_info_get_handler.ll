; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/restful_server/main/extr_rest_server.c_system_info_get_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/restful_server/main/extr_rest_server.c_system_info_get_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"application/json\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@IDF_VER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"cores\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @system_info_get_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @system_info_get_handler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @httpd_resp_set_type(i32* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = call i32* (...) @cJSON_CreateObject()
  store i32* %8, i32** %3, align 8
  %9 = call i32 @esp_chip_info(%struct.TYPE_3__* %4)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @IDF_VER, align 4
  %12 = call i32 @cJSON_AddStringToObject(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cJSON_AddNumberToObject(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @cJSON_Print(i32* %17)
  store i8* %18, i8** %5, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @httpd_resp_sendstr(i32* %19, i8* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @free(i8* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @cJSON_Delete(i32* %24)
  %26 = load i32, i32* @ESP_OK, align 4
  ret i32 %26
}

declare dso_local i32 @httpd_resp_set_type(i32*, i8*) #1

declare dso_local i32* @cJSON_CreateObject(...) #1

declare dso_local i32 @esp_chip_info(%struct.TYPE_3__*) #1

declare dso_local i32 @cJSON_AddStringToObject(i32*, i8*, i32) #1

declare dso_local i32 @cJSON_AddNumberToObject(i32*, i8*, i32) #1

declare dso_local i8* @cJSON_Print(i32*) #1

declare dso_local i32 @httpd_resp_sendstr(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cJSON_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
