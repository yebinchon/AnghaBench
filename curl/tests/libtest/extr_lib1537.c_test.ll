; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1537.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1537.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test.a = private unnamed_addr constant [14 x i8] c"/:;<=>?\91\A2\B3\C4\D5\E6\F7", align 1
@CURLE_OK = common dso_local global i64 0, align 8
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"outlen == %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unescape == original? %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"[old] outlen == %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"[old] unescape == original? %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"escape -1 length: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"moahahaha\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"unescape -1 length: %s %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [14 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = bitcast [14 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.test.a, i32 0, i32 0), i64 14, i1 false)
  %11 = load i64, i64* @CURLE_OK, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %15 = call i64 @curl_global_init(i32 %14)
  %16 = load i64, i64* @CURLE_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %21, i32* %2, align 4
  br label %97

22:                                               ; preds = %1
  store i32 14, i32* %7, align 4
  %23 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @curl_easy_escape(i32* null, i8* %23, i32 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @curl_free(i8* %28)
  %30 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @curl_escape(i8* %30, i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %22
  %38 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %38, i32* %5, align 4
  br label %92

39:                                               ; preds = %22
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = trunc i64 %42 to i32
  %44 = call i8* @curl_easy_unescape(i32* null, i8* %40, i32 %43, i32* %8)
  store i8* %44, i8** %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @memcmp(i8* %47, i8* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @curl_free(i8* %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = trunc i64 %59 to i32
  %61 = call i8* @curl_unescape(i8* %57, i32 %60)
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %39
  %65 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %65, i32* %5, align 4
  br label %92

66:                                               ; preds = %39
  %67 = load i8*, i8** %9, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @memcmp(i8* %72, i8* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @curl_free(i8* %80)
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @curl_free(i8* %82)
  %84 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %85 = call i8* @curl_easy_escape(i32* null, i8* %84, i32 -1)
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %86)
  store i32 2017, i32* %8, align 4
  %88 = call i8* @curl_easy_unescape(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 -1, i32* %8)
  store i8* %88, i8** %6, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %66, %64, %37
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @curl_free(i8* %93)
  %95 = call i32 (...) @curl_global_cleanup()
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %92, %18
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @curl_global_init(i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i8* @curl_easy_escape(i32*, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @curl_free(i8*) #2

declare dso_local i8* @curl_escape(i8*, i32) #2

declare dso_local i8* @curl_easy_unescape(i32*, i8*, i32, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i8* @curl_unescape(i8*, i32) #2

declare dso_local i32 @curl_global_cleanup(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
