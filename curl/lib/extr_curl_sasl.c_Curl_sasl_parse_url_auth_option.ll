; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_curl_sasl.c_Curl_sasl_parse_url_auth_option.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_curl_sasl.c_Curl_sasl_parse_url_auth_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SASL = type { i32, i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@CURLE_URL_MALFORMAT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SASL_AUTH_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@SASL_AUTH_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_sasl_parse_url_auth_option(%struct.SASL* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SASL*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.SASL* %0, %struct.SASL** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @CURLE_OK, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  store i32 %15, i32* %4, align 4
  br label %58

16:                                               ; preds = %3
  %17 = load %struct.SASL*, %struct.SASL** %5, align 8
  %18 = getelementptr inbounds %struct.SASL, %struct.SASL* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i64, i64* @FALSE, align 8
  %23 = load %struct.SASL*, %struct.SASL** %5, align 8
  %24 = getelementptr inbounds %struct.SASL, %struct.SASL* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* @SASL_AUTH_NONE, align 4
  %26 = load %struct.SASL*, %struct.SASL** %5, align 8
  %27 = getelementptr inbounds %struct.SASL, %struct.SASL* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %21, %16
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @SASL_AUTH_DEFAULT, align 4
  %35 = load %struct.SASL*, %struct.SASL** %5, align 8
  %36 = getelementptr inbounds %struct.SASL, %struct.SASL* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %56

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @Curl_sasl_decode_mech(i8* %38, i64 %39, i64* %9)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.SASL*, %struct.SASL** %5, align 8
  %50 = getelementptr inbounds %struct.SASL, %struct.SASL* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %55

53:                                               ; preds = %43, %37
  %54 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %47
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %14
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @Curl_sasl_decode_mech(i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
