; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib583.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib583.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLM_OK = common dso_local global i64 0, align 8
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_USERPWD = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i64 0, align 8
@CURLOPT_SSH_PUBLIC_KEYFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"curl_client_key.pub\00", align 1
@CURLOPT_SSH_PRIVATE_KEYFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"curl_client_key\00", align 1
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_INFILESIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"curl_multi_perform()...\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"curl_multi_perform() succeeded\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"curl_multi_remove_handle()...\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"curl_multi_remove_handle() failed, with code %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"curl_multi_remove_handle() succeeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i64, i64* @CURLM_OK, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %9 = call i32 @global_init(i32 %8)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @multi_init(i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @easy_init(i32* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @CURLOPT_USERPWD, align 4
  %16 = load i64, i64* @libtest_arg2, align 8
  %17 = call i32 (i32*, i32, ...) @easy_setopt(i32* %14, i32 %15, i64 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @CURLOPT_SSH_PUBLIC_KEYFILE, align 4
  %20 = call i32 (i32*, i32, ...) @easy_setopt(i32* %18, i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @CURLOPT_SSH_PRIVATE_KEYFILE, align 4
  %23 = call i32 (i32*, i32, ...) @easy_setopt(i32* %21, i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %26 = call i32 (i32*, i32, ...) @easy_setopt(i32* %24, i32 %25, i64 1)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %29 = call i32 (i32*, i32, ...) @easy_setopt(i32* %27, i32 %28, i64 1)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @CURLOPT_URL, align 4
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 (i32*, i32, ...) @easy_setopt(i32* %30, i32 %31, i8* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @CURLOPT_INFILESIZE, align 4
  %36 = call i32 (i32*, i32, ...) @easy_setopt(i32* %34, i32 %35, i64 5)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @multi_add_handle(i32* %37, i32* %38)
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @multi_perform(i32* %42, i32* %3)
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @curl_multi_remove_handle(i32* %48, i32* %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %1
  %54 = load i32, i32* @stderr, align 4
  %55 = load i64, i64* %6, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  br label %61

58:                                               ; preds = %1
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %53
  br label %62

62:                                               ; preds = %61
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @curl_easy_cleanup(i32* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @curl_multi_cleanup(i32* %65)
  %67 = call i32 (...) @curl_global_cleanup()
  %68 = load i64, i64* %6, align 8
  %69 = trunc i64 %68 to i32
  ret i32 %69
}

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @multi_perform(i32*, i32*) #1

declare dso_local i64 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
