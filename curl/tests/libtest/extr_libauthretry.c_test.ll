; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_libauthretry.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_libauthretry.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libtest_arg2 = common dso_local global i32 0, align 4
@libtest_arg3 = common dso_local global i32 0, align 4
@CURLAUTH_NONE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"auth schemes not found on commandline\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %5, align 8
  %8 = load i32, i32* @libtest_arg2, align 4
  %9 = call i64 @parse_auth_name(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* @libtest_arg3, align 4
  %11 = call i64 @parse_auth_name(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @CURLAUTH_NONE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @CURLAUTH_NONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %1
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %22, i32* %2, align 4
  br label %104

23:                                               ; preds = %15
  %24 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %25 = call i64 @curl_global_init(i32 %24)
  %26 = load i64, i64* @CURLE_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %31, i32* %2, align 4
  br label %104

32:                                               ; preds = %23
  %33 = call i32* (...) @curl_easy_init()
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 (...) @curl_global_cleanup()
  %40 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %40, i32* %2, align 4
  br label %104

41:                                               ; preds = %32
  %42 = load i32*, i32** %5, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @send_wrong_password(i32* %42, i8* %43, i32 100, i64 %44)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @CURLE_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %98

50:                                               ; preds = %41
  %51 = load i32*, i32** %5, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @send_right_password(i32* %51, i8* %52, i32 200, i64 %53)
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @CURLE_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %98

59:                                               ; preds = %50
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @curl_easy_cleanup(i32* %60)
  %62 = call i32* (...) @curl_easy_init()
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i32 (...) @curl_global_cleanup()
  %69 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %69, i32* %2, align 4
  br label %104

70:                                               ; preds = %59
  %71 = load i32*, i32** %5, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @send_wrong_password(i32* %71, i8* %72, i32 300, i64 %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @CURLE_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %98

79:                                               ; preds = %70
  %80 = load i32*, i32** %5, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i64 @send_wrong_password(i32* %80, i8* %81, i32 400, i64 %82)
  store i64 %83, i64* %4, align 8
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* @CURLE_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %98

88:                                               ; preds = %79
  %89 = load i32*, i32** %5, align 8
  %90 = load i8*, i8** %3, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i64 @send_right_password(i32* %89, i8* %90, i32 500, i64 %91)
  store i64 %92, i64* %4, align 8
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* @CURLE_OK, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %98

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %96, %87, %78, %58, %49
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @curl_easy_cleanup(i32* %99)
  %101 = call i32 (...) @curl_global_cleanup()
  %102 = load i64, i64* %4, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %98, %65, %36, %28, %19
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @parse_auth_name(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i64 @send_wrong_password(i32*, i8*, i32, i64) #1

declare dso_local i64 @send_right_password(i32*, i8*, i32, i64) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
