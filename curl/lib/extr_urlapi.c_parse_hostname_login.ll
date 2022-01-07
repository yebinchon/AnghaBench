; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_urlapi.c_parse_hostname_login.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_urlapi.c_parse_hostname_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_URL = type { i8*, i8*, i8* }
%struct.Curl_handler = type { i32 }

@CURLUE_OK = common dso_local global i32 0, align 4
@PROTOPT_URLOPTIONS = common dso_local global i32 0, align 4
@CURLUE_MALFORMED_INPUT = common dso_local global i32 0, align 4
@CURLU_DISALLOW_USER = common dso_local global i32 0, align 4
@CURLUE_USER_NOT_ALLOWED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_URL*, %struct.Curl_handler*, i8**, i32)* @parse_hostname_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_hostname_login(%struct.Curl_URL* %0, %struct.Curl_handler* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Curl_URL*, align 8
  %7 = alloca %struct.Curl_handler*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.Curl_URL* %0, %struct.Curl_URL** %6, align 8
  store %struct.Curl_handler* %1, %struct.Curl_handler** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @CURLUE_OK, align 4
  store i32 %17, i32* %10, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %18 = load i8**, i8*** %8, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 64)
  store i8* %20, i8** %15, align 8
  %21 = load i8**, i8*** %8, align 8
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %16, align 8
  %23 = load i8*, i8** %15, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %86

26:                                               ; preds = %4
  %27 = load i8*, i8** %15, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %15, align 8
  %29 = load i8**, i8*** %8, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sub nsw i64 %35, 1
  %37 = trunc i64 %36 to i32
  %38 = load %struct.Curl_handler*, %struct.Curl_handler** %7, align 8
  %39 = icmp ne %struct.Curl_handler* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %26
  %41 = load %struct.Curl_handler*, %struct.Curl_handler** %7, align 8
  %42 = getelementptr inbounds %struct.Curl_handler, %struct.Curl_handler* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PROTOPT_URLOPTIONS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %49

48:                                               ; preds = %40, %26
  br label %49

49:                                               ; preds = %48, %47
  %50 = phi i8** [ %14, %47 ], [ null, %48 ]
  %51 = call i64 @Curl_parse_login_details(i8* %30, i32 %37, i8** %12, i8** %13, i8** %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @CURLUE_MALFORMED_INPUT, align 4
  store i32 %55, i32* %10, align 4
  br label %86

56:                                               ; preds = %49
  %57 = load i8*, i8** %12, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @CURLU_DISALLOW_USER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @CURLUE_USER_NOT_ALLOWED, align 4
  store i32 %65, i32* %10, align 4
  br label %86

66:                                               ; preds = %59
  %67 = load i8*, i8** %12, align 8
  %68 = load %struct.Curl_URL*, %struct.Curl_URL** %6, align 8
  %69 = getelementptr inbounds %struct.Curl_URL, %struct.Curl_URL* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %56
  %71 = load i8*, i8** %13, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i8*, i8** %13, align 8
  %75 = load %struct.Curl_URL*, %struct.Curl_URL** %6, align 8
  %76 = getelementptr inbounds %struct.Curl_URL, %struct.Curl_URL* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i8*, i8** %14, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i8*, i8** %14, align 8
  %82 = load %struct.Curl_URL*, %struct.Curl_URL** %6, align 8
  %83 = getelementptr inbounds %struct.Curl_URL, %struct.Curl_URL* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* @CURLUE_OK, align 4
  store i32 %85, i32* %5, align 4
  br label %94

86:                                               ; preds = %64, %54, %25
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i8*, i8** %14, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %86, %84
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @Curl_parse_login_details(i8*, i32, i8**, i8**, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
