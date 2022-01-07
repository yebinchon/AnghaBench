; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_create.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { %struct.TYPE_3__, %struct.httpd_data*, %struct.httpd_data*, i8*, %struct.httpd_req_aux }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.httpd_req_aux = type { %struct.httpd_data* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Failed to allocate memory for HTTP server instance\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to allocate memory for HTTP URI handlers\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Failed to allocate memory for HTTP session data\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Failed to allocate memory for HTTP response headers\00", align 1
@HTTPD_ERR_CODE_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Failed to allocate memory for HTTP error handlers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.httpd_data* (%struct.TYPE_3__*)* @httpd_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.httpd_data* @httpd_create(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.httpd_data*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.httpd_data*, align 8
  %5 = alloca %struct.httpd_req_aux*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = call i8* @calloc(i32 1, i32 48)
  %7 = bitcast i8* %6 to %struct.httpd_data*
  store %struct.httpd_data* %7, %struct.httpd_data** %4, align 8
  %8 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %9 = icmp ne %struct.httpd_data* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @TAG, align 4
  %12 = call i32 @LOG_FMT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @ESP_LOGE(i32 %11, i32 %12)
  store %struct.httpd_data* null, %struct.httpd_data** %2, align 8
  br label %116

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @calloc(i32 %17, i32 8)
  %19 = bitcast i8* %18 to %struct.httpd_data*
  %20 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %21 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %20, i32 0, i32 1
  store %struct.httpd_data* %19, %struct.httpd_data** %21, align 8
  %22 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %23 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %22, i32 0, i32 1
  %24 = load %struct.httpd_data*, %struct.httpd_data** %23, align 8
  %25 = icmp ne %struct.httpd_data* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %14
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 @LOG_FMT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @ESP_LOGE(i32 %27, i32 %28)
  %30 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %31 = call i32 @free(%struct.httpd_data* %30)
  store %struct.httpd_data* null, %struct.httpd_data** %2, align 8
  br label %116

32:                                               ; preds = %14
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @calloc(i32 %35, i32 4)
  %37 = bitcast i8* %36 to %struct.httpd_data*
  %38 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %39 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %38, i32 0, i32 2
  store %struct.httpd_data* %37, %struct.httpd_data** %39, align 8
  %40 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %41 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %40, i32 0, i32 2
  %42 = load %struct.httpd_data*, %struct.httpd_data** %41, align 8
  %43 = icmp ne %struct.httpd_data* %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @TAG, align 4
  %46 = call i32 @LOG_FMT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @ESP_LOGE(i32 %45, i32 %46)
  %48 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %49 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %48, i32 0, i32 1
  %50 = load %struct.httpd_data*, %struct.httpd_data** %49, align 8
  %51 = call i32 @free(%struct.httpd_data* %50)
  %52 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %53 = call i32 @free(%struct.httpd_data* %52)
  store %struct.httpd_data* null, %struct.httpd_data** %2, align 8
  br label %116

54:                                               ; preds = %32
  %55 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %56 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %55, i32 0, i32 4
  store %struct.httpd_req_aux* %56, %struct.httpd_req_aux** %5, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @calloc(i32 %59, i32 4)
  %61 = bitcast i8* %60 to %struct.httpd_data*
  %62 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %5, align 8
  %63 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %62, i32 0, i32 0
  store %struct.httpd_data* %61, %struct.httpd_data** %63, align 8
  %64 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %5, align 8
  %65 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %64, i32 0, i32 0
  %66 = load %struct.httpd_data*, %struct.httpd_data** %65, align 8
  %67 = icmp ne %struct.httpd_data* %66, null
  br i1 %67, label %82, label %68

68:                                               ; preds = %54
  %69 = load i32, i32* @TAG, align 4
  %70 = call i32 @LOG_FMT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %71 = call i32 @ESP_LOGE(i32 %69, i32 %70)
  %72 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %73 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %72, i32 0, i32 2
  %74 = load %struct.httpd_data*, %struct.httpd_data** %73, align 8
  %75 = call i32 @free(%struct.httpd_data* %74)
  %76 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %77 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %76, i32 0, i32 1
  %78 = load %struct.httpd_data*, %struct.httpd_data** %77, align 8
  %79 = call i32 @free(%struct.httpd_data* %78)
  %80 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %81 = call i32 @free(%struct.httpd_data* %80)
  store %struct.httpd_data* null, %struct.httpd_data** %2, align 8
  br label %116

82:                                               ; preds = %54
  %83 = load i32, i32* @HTTPD_ERR_CODE_MAX, align 4
  %84 = call i8* @calloc(i32 %83, i32 4)
  %85 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %86 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %88 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %109, label %91

91:                                               ; preds = %82
  %92 = load i32, i32* @TAG, align 4
  %93 = call i32 @LOG_FMT(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %94 = call i32 @ESP_LOGE(i32 %92, i32 %93)
  %95 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %5, align 8
  %96 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %95, i32 0, i32 0
  %97 = load %struct.httpd_data*, %struct.httpd_data** %96, align 8
  %98 = call i32 @free(%struct.httpd_data* %97)
  %99 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %100 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %99, i32 0, i32 2
  %101 = load %struct.httpd_data*, %struct.httpd_data** %100, align 8
  %102 = call i32 @free(%struct.httpd_data* %101)
  %103 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %104 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %103, i32 0, i32 1
  %105 = load %struct.httpd_data*, %struct.httpd_data** %104, align 8
  %106 = call i32 @free(%struct.httpd_data* %105)
  %107 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %108 = call i32 @free(%struct.httpd_data* %107)
  store %struct.httpd_data* null, %struct.httpd_data** %2, align 8
  br label %116

109:                                              ; preds = %82
  %110 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %111 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = bitcast %struct.TYPE_3__* %111 to i8*
  %114 = bitcast %struct.TYPE_3__* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 4 %114, i64 12, i1 false)
  %115 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  store %struct.httpd_data* %115, %struct.httpd_data** %2, align 8
  br label %116

116:                                              ; preds = %109, %91, %68, %44, %26, %10
  %117 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  ret %struct.httpd_data* %117
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @free(%struct.httpd_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
