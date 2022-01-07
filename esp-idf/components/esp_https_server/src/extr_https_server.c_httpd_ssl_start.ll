; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_https_server/src/extr_https_server.c_httpd_ssl_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_https_server/src/extr_https_server.c_httpd_ssl_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_ssl_config = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Starting server\00", align 1
@HTTPD_SSL_TRANSPORT_SECURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"SSL context ready\00", align 1
@free_secure_context = common dso_local global i32 0, align 4
@httpd_ssl_open = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"SSL disabled, using plain HTTP\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Server listening on port %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpd_ssl_start(i32** %0, %struct.httpd_ssl_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.httpd_ssl_config*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store %struct.httpd_ssl_config* %1, %struct.httpd_ssl_config** %5, align 8
  %9 = load %struct.httpd_ssl_config*, %struct.httpd_ssl_config** %5, align 8
  %10 = icmp ne %struct.httpd_ssl_config* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32**, i32*** %4, align 8
  %14 = icmp ne i32** %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @HTTPD_SSL_TRANSPORT_SECURE, align 8
  %20 = load %struct.httpd_ssl_config*, %struct.httpd_ssl_config** %5, align 8
  %21 = getelementptr inbounds %struct.httpd_ssl_config, %struct.httpd_ssl_config* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %2
  %25 = load %struct.httpd_ssl_config*, %struct.httpd_ssl_config** %5, align 8
  %26 = call i32* @create_secure_context(%struct.httpd_ssl_config* %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %79

30:                                               ; preds = %24
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 @ESP_LOGD(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.httpd_ssl_config*, %struct.httpd_ssl_config** %5, align 8
  %35 = getelementptr inbounds %struct.httpd_ssl_config, %struct.httpd_ssl_config* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i32* %33, i32** %36, align 8
  %37 = load i32, i32* @free_secure_context, align 4
  %38 = load %struct.httpd_ssl_config*, %struct.httpd_ssl_config** %5, align 8
  %39 = getelementptr inbounds %struct.httpd_ssl_config, %struct.httpd_ssl_config* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @httpd_ssl_open, align 4
  %42 = load %struct.httpd_ssl_config*, %struct.httpd_ssl_config** %5, align 8
  %43 = getelementptr inbounds %struct.httpd_ssl_config, %struct.httpd_ssl_config* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.httpd_ssl_config*, %struct.httpd_ssl_config** %5, align 8
  %46 = getelementptr inbounds %struct.httpd_ssl_config, %struct.httpd_ssl_config* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.httpd_ssl_config*, %struct.httpd_ssl_config** %5, align 8
  %49 = getelementptr inbounds %struct.httpd_ssl_config, %struct.httpd_ssl_config* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  br label %60

51:                                               ; preds = %2
  %52 = load i32, i32* @TAG, align 4
  %53 = call i32 @ESP_LOGD(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.httpd_ssl_config*, %struct.httpd_ssl_config** %5, align 8
  %55 = getelementptr inbounds %struct.httpd_ssl_config, %struct.httpd_ssl_config* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.httpd_ssl_config*, %struct.httpd_ssl_config** %5, align 8
  %58 = getelementptr inbounds %struct.httpd_ssl_config, %struct.httpd_ssl_config* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  br label %60

60:                                               ; preds = %51, %30
  store i32* null, i32** %7, align 8
  %61 = load %struct.httpd_ssl_config*, %struct.httpd_ssl_config** %5, align 8
  %62 = getelementptr inbounds %struct.httpd_ssl_config, %struct.httpd_ssl_config* %61, i32 0, i32 1
  %63 = call i32 @httpd_start(i32** %7, %struct.TYPE_2__* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @ESP_OK, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %79

69:                                               ; preds = %60
  %70 = load i32*, i32** %7, align 8
  %71 = load i32**, i32*** %4, align 8
  store i32* %70, i32** %71, align 8
  %72 = load i32, i32* @TAG, align 4
  %73 = load %struct.httpd_ssl_config*, %struct.httpd_ssl_config** %5, align 8
  %74 = getelementptr inbounds %struct.httpd_ssl_config, %struct.httpd_ssl_config* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ESP_OK, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %69, %67, %29
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32* @create_secure_context(%struct.httpd_ssl_config*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i32 @httpd_start(i32**, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
