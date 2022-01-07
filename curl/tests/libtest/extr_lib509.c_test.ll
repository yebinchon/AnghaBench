; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib509.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib509.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test.a = private unnamed_addr constant [14 x i8] c"/:;<=>?\91\A2\B3\C4\D5\E6\F7", align 1
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@custom_malloc = common dso_local global i32 0, align 4
@custom_free = common dso_local global i32 0, align 4
@custom_realloc = common dso_local global i32 0, align 4
@custom_strdup = common dso_local global i32 0, align 4
@custom_calloc = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"curl_global_init_mem() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_USERAGENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"test509\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [14 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = bitcast [14 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.test.a, i32 0, i32 0), i64 14, i1 false)
  store i8* null, i8** %8, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %12 = load i32, i32* @custom_malloc, align 4
  %13 = load i32, i32* @custom_free, align 4
  %14 = load i32, i32* @custom_realloc, align 4
  %15 = load i32, i32* @custom_strdup, align 4
  %16 = load i32, i32* @custom_calloc, align 4
  %17 = call i64 @curl_global_init_mem(i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @CURLE_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %24, i32* %2, align 4
  br label %54

25:                                               ; preds = %1
  %26 = call i32* (...) @curl_easy_init()
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 (...) @curl_global_cleanup()
  %33 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %33, i32* %2, align 4
  br label %54

34:                                               ; preds = %25
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @CURLOPT_USERAGENT, align 4
  %37 = call i32 @test_setopt(i32* %35, i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 14, i32* %7, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @curl_easy_escape(i32* %38, i8* %39, i32 %40)
  store i8* %41, i8** %8, align 8
  br label %42

42:                                               ; preds = %34
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @curl_free(i8* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @curl_easy_cleanup(i32* %49)
  %51 = call i32 (...) @curl_global_cleanup()
  %52 = load i64, i64* %5, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %29, %21
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @curl_global_init_mem(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32* @curl_easy_init(...) #2

declare dso_local i32 @curl_global_cleanup(...) #2

declare dso_local i32 @test_setopt(i32*, i32, i8*) #2

declare dso_local i8* @curl_easy_escape(i32*, i8*, i32) #2

declare dso_local i32 @curl_free(i8*) #2

declare dso_local i32 @curl_easy_cleanup(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
