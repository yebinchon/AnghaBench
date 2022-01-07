; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib558.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib558.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test.a = private unnamed_addr constant [14 x i8] c"/:;<=>?\91\A2\B3\C4\D5\E6\F7", align 1
@CURLE_OK = common dso_local global i64 0, align 8
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [14 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = bitcast [14 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.test.a, i32 0, i32 0), i64 14, i1 false)
  %9 = load i64, i64* @CURLE_OK, align 8
  store i64 %9, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %12 = call i64 @curl_global_init(i32 %11)
  %13 = load i64, i64* @CURLE_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %18, i32* %2, align 4
  br label %35

19:                                               ; preds = %1
  %20 = call i8* @malloc(i32 558)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @Curl_safefree(i8* %21)
  store i32 14, i32* %7, align 4
  %23 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @curl_easy_escape(i32* null, i8* %23, i32 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @curl_free(i8* %29)
  br label %31

31:                                               ; preds = %28, %19
  %32 = call i32 (...) @curl_global_cleanup()
  %33 = load i64, i64* %5, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @curl_global_init(i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @Curl_safefree(i8*) #2

declare dso_local i8* @curl_easy_escape(i32*, i8*, i32) #2

declare dso_local i32 @curl_free(i8*) #2

declare dso_local i32 @curl_global_cleanup(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
