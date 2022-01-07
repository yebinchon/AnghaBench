; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib555.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib555.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_IOCTLFUNCTION = common dso_local global i32 0, align 4
@ioctlcallback = common dso_local global i64 0, align 8
@CURLOPT_IOCTLDATA = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@readcallback = common dso_local global i64 0, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDSIZE = common dso_local global i32 0, align 4
@uploadthis = common dso_local global i32 0, align 4
@CURLOPT_POST = common dso_local global i32 0, align 4
@CURLOPT_PROXY = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i64 0, align 8
@CURLOPT_PROXYUSERPWD = common dso_local global i32 0, align 4
@libtest_arg3 = common dso_local global i64 0, align 8
@CURLOPT_PROXYAUTH = common dso_local global i32 0, align 4
@CURLAUTH_NTLM = common dso_local global i32 0, align 4
@CURLAUTH_DIGEST = common dso_local global i32 0, align 4
@CURLAUTH_BASIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32 1, i32* %7, align 4
  %13 = call i32 (...) @start_test_timing()
  %14 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %15 = call i32 @global_init(i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @easy_init(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @CURLOPT_URL, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i32*, i32, ...) @easy_setopt(i32* %18, i32 %19, i8* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %24 = call i32 (i32*, i32, ...) @easy_setopt(i32* %22, i32 %23, i64 1)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @CURLOPT_HEADER, align 4
  %27 = call i32 (i32*, i32, ...) @easy_setopt(i32* %25, i32 %26, i64 1)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @CURLOPT_IOCTLFUNCTION, align 4
  %30 = load i64, i64* @ioctlcallback, align 8
  %31 = call i32 (i32*, i32, ...) @easy_setopt(i32* %28, i32 %29, i64 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @CURLOPT_IOCTLDATA, align 4
  %34 = call i32 (i32*, i32, ...) @easy_setopt(i32* %32, i32 %33, i32* %5)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %37 = load i64, i64* @readcallback, align 8
  %38 = call i32 (i32*, i32, ...) @easy_setopt(i32* %35, i32 %36, i64 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @CURLOPT_READDATA, align 4
  %41 = call i32 (i32*, i32, ...) @easy_setopt(i32* %39, i32 %40, i32* %5)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @CURLOPT_POSTFIELDSIZE, align 4
  %44 = load i32, i32* @uploadthis, align 4
  %45 = call i64 @strlen(i32 %44)
  %46 = call i32 (i32*, i32, ...) @easy_setopt(i32* %42, i32 %43, i64 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @CURLOPT_POST, align 4
  %49 = call i32 (i32*, i32, ...) @easy_setopt(i32* %47, i32 %48, i64 1)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @CURLOPT_PROXY, align 4
  %52 = load i64, i64* @libtest_arg2, align 8
  %53 = call i32 (i32*, i32, ...) @easy_setopt(i32* %50, i32 %51, i64 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @CURLOPT_PROXYUSERPWD, align 4
  %56 = load i64, i64* @libtest_arg3, align 8
  %57 = call i32 (i32*, i32, ...) @easy_setopt(i32* %54, i32 %55, i64 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @CURLOPT_PROXYAUTH, align 4
  %60 = load i32, i32* @CURLAUTH_NTLM, align 4
  %61 = load i32, i32* @CURLAUTH_DIGEST, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @CURLAUTH_BASIC, align 4
  %64 = or i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = call i32 (i32*, i32, ...) @easy_setopt(i32* %58, i32 %59, i64 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @multi_init(i32* %67)
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @multi_add_handle(i32* %69, i32* %70)
  br label %72

72:                                               ; preds = %84, %1
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  store i32 -99, i32* %12, align 4
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 100000, i64* %77, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @multi_perform(i32* %78, i32* %7)
  %80 = call i32 (...) @abort_on_test_timeout()
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  br label %94

84:                                               ; preds = %75
  %85 = call i32 @FD_ZERO(i32* %9)
  %86 = call i32 @FD_ZERO(i32* %10)
  %87 = call i32 @FD_ZERO(i32* %11)
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @multi_fdset(i32* %88, i32* %9, i32* %10, i32* %11, i32* %12)
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i32 @select_test(i32 %91, i32* %9, i32* %10, i32* %11, %struct.timeval* %8)
  %93 = call i32 (...) @abort_on_test_timeout()
  br label %72

94:                                               ; preds = %83, %72
  br label %95

95:                                               ; preds = %94
  %96 = load i32*, i32** %6, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @curl_multi_remove_handle(i32* %96, i32* %97)
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @curl_multi_cleanup(i32* %99)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @curl_easy_cleanup(i32* %101)
  %103 = call i32 (...) @curl_global_cleanup()
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @start_test_timing(...) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i32 @abort_on_test_timeout(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
