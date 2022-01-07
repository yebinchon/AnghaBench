; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_httpd_query_key_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_httpd_query_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_HTTPD_RESULT_TRUNC = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"key %s not found\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpd_query_key_value(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16, %4
  %23 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %23, i32* %5, align 4
  br label %101

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %11, align 8
  br label %27

27:                                               ; preds = %60, %24
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %95

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 61)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %95

37:                                               ; preds = %31
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %37
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i64 @strncasecmp(i8* %49, i8* %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %48, %37
  %55 = load i8*, i8** %12, align 8
  %56 = call i8* @strchr(i8* %55, i8 signext 38)
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %95

60:                                               ; preds = %54
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  br label %27

63:                                               ; preds = %48
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %12, align 8
  %66 = call i8* @strchr(i8* %65, i8 signext 38)
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8* %74, i8** %10, align 8
  br label %75

75:                                               ; preds = %69, %63
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %9, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @MIN(i64 %84, i64 %85)
  %87 = call i32 @strlcpy(i8* %82, i8* %83, i32 %86)
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %9, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %75
  %92 = load i32, i32* @ESP_ERR_HTTPD_RESULT_TRUNC, align 4
  store i32 %92, i32* %5, align 4
  br label %101

93:                                               ; preds = %75
  %94 = load i32, i32* @ESP_OK, align 4
  store i32 %94, i32* %5, align 4
  br label %101

95:                                               ; preds = %59, %36, %27
  %96 = load i32, i32* @TAG, align 4
  %97 = call i32 @LOG_FMT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @ESP_LOGD(i32 %96, i32 %97, i8* %98)
  %100 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %95, %93, %91, %22
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @ESP_LOGD(i32, i32, i8*) #1

declare dso_local i32 @LOG_FMT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
