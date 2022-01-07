; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_httpd_req_new.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_httpd_req_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { %struct.httpd_req_aux, i32, %struct.TYPE_4__ }
%struct.httpd_req_aux = type { i8*, i8*, i32, %struct.sock_db* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.httpd_req_aux*, %struct.httpd_data* }
%struct.sock_db = type { i32, i32, i32 }

@HTTPD_200 = common dso_local global i64 0, align 8
@HTTPD_TYPE_TEXT = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @httpd_req_new(%struct.httpd_data* %0, %struct.sock_db* %1) #0 {
  %3 = alloca %struct.httpd_data*, align 8
  %4 = alloca %struct.sock_db*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.httpd_req_aux*, align 8
  %7 = alloca i64, align 8
  store %struct.httpd_data* %0, %struct.httpd_data** %3, align 8
  store %struct.sock_db* %1, %struct.sock_db** %4, align 8
  %8 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %9 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %8, i32 0, i32 2
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %12 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %11, i32 0, i32 1
  %13 = call i32 @init_req(%struct.TYPE_4__* %10, i32* %12)
  %14 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %15 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %14, i32 0, i32 0
  %16 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %17 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %16, i32 0, i32 1
  %18 = call i32 @init_req_aux(%struct.httpd_req_aux* %15, i32* %17)
  %19 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  store %struct.httpd_data* %19, %struct.httpd_data** %21, align 8
  %22 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %23 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store %struct.httpd_req_aux* %23, %struct.httpd_req_aux** %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %27, align 8
  store %struct.httpd_req_aux* %28, %struct.httpd_req_aux** %6, align 8
  %29 = load %struct.sock_db*, %struct.sock_db** %4, align 8
  %30 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %6, align 8
  %31 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %30, i32 0, i32 3
  store %struct.sock_db* %29, %struct.sock_db** %31, align 8
  %32 = load i64, i64* @HTTPD_200, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %6, align 8
  %35 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* @HTTPD_TYPE_TEXT, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %6, align 8
  %39 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %6, align 8
  %41 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = load %struct.sock_db*, %struct.sock_db** %4, align 8
  %43 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sock_db*, %struct.sock_db** %4, align 8
  %48 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sock_db*, %struct.sock_db** %4, align 8
  %53 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %58 = call i64 @httpd_parse_req(%struct.httpd_data* %57)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @ESP_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = call i32 @httpd_req_cleanup(%struct.TYPE_4__* %63)
  br label %65

65:                                               ; preds = %62, %2
  %66 = load i64, i64* %7, align 8
  ret i64 %66
}

declare dso_local i32 @init_req(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @init_req_aux(%struct.httpd_req_aux*, i32*) #1

declare dso_local i64 @httpd_parse_req(%struct.httpd_data*) #1

declare dso_local i32 @httpd_req_cleanup(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
