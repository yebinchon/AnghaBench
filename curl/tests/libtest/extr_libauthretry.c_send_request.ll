; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_libauthretry.c_send_request.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_libauthretry.c_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Not enough memory for full url\0A\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%04d\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Sending new request %d to %s with credential %s (auth %ld)\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_HTTPGET = common dso_local global i32 0, align 4
@CURLOPT_USERPWD = common dso_local global i32 0, align 4
@CURLOPT_HTTPAUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i64, i8*)* @send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_request(i32* %0, i8* %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = add nsw i32 %16, 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = call i8* @malloc(i64 %20)
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %27, i32* %6, align 4
  br label %67

28:                                               ; preds = %5
  %29 = load i8*, i8** %14, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @msnprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %32)
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %14, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %35, i8* %36, i8* %37, i64 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @CURLOPT_URL, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 (i32*, i32, ...) @test_setopt(i32* %40, i32 %41, i8* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %46 = call i32 (i32*, i32, ...) @test_setopt(i32* %44, i32 %45, i64 1)
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @CURLOPT_HEADER, align 4
  %49 = call i32 (i32*, i32, ...) @test_setopt(i32* %47, i32 %48, i64 1)
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @CURLOPT_HTTPGET, align 4
  %52 = call i32 (i32*, i32, ...) @test_setopt(i32* %50, i32 %51, i64 1)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @CURLOPT_USERPWD, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 (i32*, i32, ...) @test_setopt(i32* %53, i32 %54, i8* %55)
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @CURLOPT_HTTPAUTH, align 4
  %59 = load i64, i64* %10, align 8
  %60 = call i32 (i32*, i32, ...) @test_setopt(i32* %57, i32 %58, i64 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @curl_easy_perform(i32* %61)
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %28
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %24
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @msnprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
