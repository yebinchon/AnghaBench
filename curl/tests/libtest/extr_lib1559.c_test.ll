; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1559.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1559.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXCESSIVE = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"CURLOPT_URL %d bytes URL == %d\0A\00", align 1
@CURLOPT_POSTFIELDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"CURLOPT_POSTFIELDS %d bytes data == %d\0A\00", align 1
@CURLUPART_URL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"CURLUPART_URL %d bytes URL == %d\0A\00", align 1
@CURLUPART_SCHEME = common dso_local global i32 0, align 4
@CURLU_NON_SUPPORT_SCHEME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"CURLUPART_SCHEME %d bytes scheme == %d\0A\00", align 1
@CURLUPART_USER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"CURLUPART_USER %d bytes user == %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %9 = load i32, i32* @EXCESSIVE, align 4
  %10 = call i8* @malloc(i32 %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @EXCESSIVE, align 4
  %14 = call i32 @memset(i8* %12, i8 signext 97, i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @EXCESSIVE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8 0, i8* %19, align 1
  %20 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %21 = call i32 @global_init(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @easy_init(i32* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @CURLOPT_URL, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @curl_easy_setopt(i32* %24, i32 %25, i8* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @EXCESSIVE, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @CURLOPT_POSTFIELDS, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @curl_easy_setopt(i32* %31, i32 %32, i8* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @EXCESSIVE, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = call i32* (...) @curl_url()
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %1
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @CURLUPART_URL, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @curl_url_set(i32* %42, i32 %43, i8* %44, i32 0)
  store i64 %45, i64* %8, align 8
  %46 = load i32, i32* @EXCESSIVE, align 4
  %47 = load i64, i64* %8, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @CURLUPART_SCHEME, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* @CURLU_NON_SUPPORT_SCHEME, align 4
  %54 = call i64 @curl_url_set(i32* %50, i32 %51, i8* %52, i32 %53)
  store i64 %54, i64* %8, align 8
  %55 = load i32, i32* @EXCESSIVE, align 4
  %56 = load i64, i64* %8, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @CURLUPART_USER, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @curl_url_set(i32* %59, i32 %60, i8* %61, i32 0)
  store i64 %62, i64* %8, align 8
  %63 = load i32, i32* @EXCESSIVE, align 4
  %64 = load i64, i64* %8, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %63, i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @curl_url_cleanup(i32* %67)
  br label %69

69:                                               ; preds = %41, %1
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @curl_easy_cleanup(i32* %72)
  %74 = call i32 (...) @curl_global_cleanup()
  store i32 0, i32* %2, align 4
  br label %80

75:                                               ; No predecessors!
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @curl_easy_cleanup(i32* %76)
  %78 = call i32 (...) @curl_global_cleanup()
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %69
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32* @curl_url(...) #1

declare dso_local i64 @curl_url_set(i32*, i32, i8*, i32) #1

declare dso_local i32 @curl_url_cleanup(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
