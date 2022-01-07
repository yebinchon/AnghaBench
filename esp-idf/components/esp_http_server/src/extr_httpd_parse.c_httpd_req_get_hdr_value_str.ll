; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_httpd_req_get_hdr_value_str.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_httpd_req_get_hdr_value_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { i8*, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_HTTPD_INVALID_REQ = common dso_local global i32 0, align 4
@ESP_ERR_HTTPD_RESULT_TRUNC = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpd_req_get_hdr_value_str(%struct.TYPE_4__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.httpd_req_aux*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %21, i32* %5, align 4
  br label %119

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = call i32 @httpd_valid_req(%struct.TYPE_4__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ESP_ERR_HTTPD_INVALID_REQ, align 4
  store i32 %27, i32* %5, align 4
  br label %119

28:                                               ; preds = %22
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %30, align 8
  store %struct.httpd_req_aux* %31, %struct.httpd_req_aux** %10, align 8
  %32 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %10, align 8
  %33 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %11, align 8
  %35 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %10, align 8
  %36 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %12, align 4
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* %13, align 8
  br label %39

39:                                               ; preds = %82, %28
  %40 = load i32, i32* %12, align 4
  %41 = add i32 %40, -1
  store i32 %41, i32* %12, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %117

43:                                               ; preds = %39
  %44 = load i8*, i8** %11, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 58)
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %117

49:                                               ; preds = %43
  %50 = load i8*, i8** %14, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %49
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = call i64 @strncasecmp(i8* %60, i8* %61, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %59, %49
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load i8*, i8** %11, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 0)
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %72, i8** %11, align 8
  br label %73

73:                                               ; preds = %78, %69
  %74 = load i8*, i8** %11, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %11, align 8
  br label %73

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %66
  br label %39

83:                                               ; preds = %59
  %84 = load i8*, i8** %14, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %14, align 8
  br label %86

86:                                               ; preds = %98, %83
  %87 = load i8*, i8** %14, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i8*, i8** %14, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 32
  br label %96

96:                                               ; preds = %91, %86
  %97 = phi i1 [ false, %86 ], [ %95, %91 ]
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = load i8*, i8** %14, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %14, align 8
  br label %86

101:                                              ; preds = %96
  %102 = load i8*, i8** %8, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i32 @strlcpy(i8* %102, i8* %103, i64 %104)
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* %9, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %101
  %114 = load i32, i32* @ESP_ERR_HTTPD_RESULT_TRUNC, align 4
  store i32 %114, i32* %5, align 4
  br label %119

115:                                              ; preds = %101
  %116 = load i32, i32* @ESP_OK, align 4
  store i32 %116, i32* %5, align 4
  br label %119

117:                                              ; preds = %48, %39
  %118 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %115, %113, %26, %20
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @httpd_valid_req(%struct.TYPE_4__*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
