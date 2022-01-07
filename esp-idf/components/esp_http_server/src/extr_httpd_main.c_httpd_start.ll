; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.httpd_data = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@CONFIG_LWIP_MAX_SOCKETS = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [138 x i8] c"Configuration option max_open_sockets is too large (max allowed %d)\0A\09Either decrease this or configure LWIP_MAX_SOCKETS to a larger value\00", align 1
@ESP_ERR_HTTPD_ALLOC_MEM = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"httpd\00", align 1
@httpd_thread = common dso_local global i32 0, align 4
@ESP_ERR_HTTPD_TASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @httpd_start(i32***** %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*****, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.httpd_data*, align 8
  store i32***** %0, i32****** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = load i32*****, i32****** %4, align 8
  %8 = icmp eq i32***** %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %2
  %13 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %13, i64* %3, align 8
  br label %76

14:                                               ; preds = %9
  %15 = load i64, i64* @CONFIG_LWIP_MAX_SOCKETS, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 3
  %20 = icmp slt i64 %15, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i32, i32* @TAG, align 4
  %23 = load i64, i64* @CONFIG_LWIP_MAX_SOCKETS, align 8
  %24 = sub nsw i64 %23, 3
  %25 = call i32 @ESP_LOGE(i32 %22, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %26, i64* %3, align 8
  br label %76

27:                                               ; preds = %14
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = call %struct.httpd_data* @httpd_create(%struct.TYPE_8__* %28)
  store %struct.httpd_data* %29, %struct.httpd_data** %6, align 8
  %30 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %31 = icmp eq %struct.httpd_data* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i64, i64* @ESP_ERR_HTTPD_ALLOC_MEM, align 8
  store i64 %33, i64* %3, align 8
  br label %76

34:                                               ; preds = %27
  %35 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %36 = call i64 @httpd_server_init(%struct.httpd_data* %35)
  %37 = load i64, i64* @ESP_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %41 = call i32 @httpd_delete(%struct.httpd_data* %40)
  %42 = load i64, i64* @ESP_FAIL, align 8
  store i64 %42, i64* %3, align 8
  br label %76

43:                                               ; preds = %34
  %44 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %45 = call i32 @httpd_sess_init(%struct.httpd_data* %44)
  %46 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %47 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %50 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %54 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @httpd_thread, align 4
  %58 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %59 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %60 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @httpd_os_thread_create(i32* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %56, i32 %57, %struct.httpd_data* %58, i32 %62)
  %64 = load i64, i64* @ESP_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %43
  %67 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %68 = call i32 @httpd_delete(%struct.httpd_data* %67)
  %69 = load i64, i64* @ESP_ERR_HTTPD_TASK, align 8
  store i64 %69, i64* %3, align 8
  br label %76

70:                                               ; preds = %43
  %71 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %72 = bitcast %struct.httpd_data* %71 to i32*****
  %73 = bitcast i32***** %72 to i32****
  %74 = load i32*****, i32****** %4, align 8
  store i32**** %73, i32***** %74, align 8
  %75 = load i64, i64* @ESP_OK, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %70, %66, %39, %32, %21, %12
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

declare dso_local %struct.httpd_data* @httpd_create(%struct.TYPE_8__*) #1

declare dso_local i64 @httpd_server_init(%struct.httpd_data*) #1

declare dso_local i32 @httpd_delete(%struct.httpd_data*) #1

declare dso_local i32 @httpd_sess_init(%struct.httpd_data*) #1

declare dso_local i64 @httpd_os_thread_create(i32*, i8*, i32, i32, i32, %struct.httpd_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
