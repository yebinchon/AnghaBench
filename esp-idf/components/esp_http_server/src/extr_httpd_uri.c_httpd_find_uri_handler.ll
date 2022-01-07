; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_uri.c_httpd_find_uri_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_uri.c_httpd_find_uri_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.httpd_data = type { %struct.TYPE_5__**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 (i32, i8*, i64)* }

@HTTPD_404_NOT_FOUND = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"[%d] = %s\00", align 1
@HTTPD_405_METHOD_NOT_ALLOWED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.httpd_data*, i8*, i64, i64, i64*)* @httpd_find_uri_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @httpd_find_uri_handler(%struct.httpd_data* %0, i8* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.httpd_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.httpd_data* %0, %struct.httpd_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i64*, i64** %11, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i64, i64* @HTTPD_404_NOT_FOUND, align 8
  %17 = load i64*, i64** %11, align 8
  store i64 %16, i64* %17, align 8
  br label %18

18:                                               ; preds = %15, %5
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %120, %18
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.httpd_data*, %struct.httpd_data** %7, align 8
  %22 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %123

26:                                               ; preds = %19
  %27 = load %struct.httpd_data*, %struct.httpd_data** %7, align 8
  %28 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %29, i64 %31
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %123

36:                                               ; preds = %26
  %37 = load i32, i32* @TAG, align 4
  %38 = call i32 @LOG_FMT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.httpd_data*, %struct.httpd_data** %7, align 8
  %41 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %42, i64 %44
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ESP_LOGD(i32 %37, i32 %38, i32 %39, i32 %48)
  %50 = load %struct.httpd_data*, %struct.httpd_data** %7, align 8
  %51 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)** %52, align 8
  %54 = icmp ne i64 (i32, i8*, i64)* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %36
  %56 = load %struct.httpd_data*, %struct.httpd_data** %7, align 8
  %57 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)** %58, align 8
  %60 = load %struct.httpd_data*, %struct.httpd_data** %7, align 8
  %61 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %62, i64 %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i64 %59(i32 %68, i8* %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %87, label %119

73:                                               ; preds = %36
  %74 = load %struct.httpd_data*, %struct.httpd_data** %7, align 8
  %75 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %76, i64 %78
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i64 @httpd_uri_match_simple(i32 %82, i8* %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %119

87:                                               ; preds = %73, %55
  %88 = load %struct.httpd_data*, %struct.httpd_data** %7, align 8
  %89 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %90, i64 %92
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %87
  %100 = load i64*, i64** %11, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i64*, i64** %11, align 8
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %102, %99
  %105 = load %struct.httpd_data*, %struct.httpd_data** %7, align 8
  %106 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %107, i64 %109
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  store %struct.TYPE_5__* %111, %struct.TYPE_5__** %6, align 8
  br label %124

112:                                              ; preds = %87
  %113 = load i64*, i64** %11, align 8
  %114 = icmp ne i64* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i64, i64* @HTTPD_405_METHOD_NOT_ALLOWED, align 8
  %117 = load i64*, i64** %11, align 8
  store i64 %116, i64* %117, align 8
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %73, %55
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %19

123:                                              ; preds = %35, %19
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  br label %124

124:                                              ; preds = %123, %104
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %125
}

declare dso_local i32 @ESP_LOGD(i32, i32, i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i64 @httpd_uri_match_simple(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
