; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1558.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1558.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"curl_easy_perform() returned %d (%s)\0A\00", align 1
@CURLINFO_PROTOCOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"curl_easy_getinfo() returned %d (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Protocol: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %8 = call i32 @global_init(i32 %7)
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @easy_init(i32* %9)
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @CURLOPT_URL, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @easy_setopt(i32* %11, i32 %12, i8* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @curl_easy_perform(i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @curl_easy_strerror(i32 %22)
  %24 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %23)
  br label %43

25:                                               ; preds = %1
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @CURLINFO_PROTOCOL, align 4
  %28 = call i32 @curl_easy_getinfo(i32* %26, i32 %27, i64* %6)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i8* @curl_easy_strerror(i32 %34)
  %36 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %33, i8* %35)
  br label %43

37:                                               ; preds = %25
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @curl_easy_cleanup(i32* %40)
  %42 = call i32 (...) @curl_global_cleanup()
  store i32 0, i32* %2, align 4
  br label %48

43:                                               ; preds = %31, %19
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @curl_easy_cleanup(i32* %44)
  %46 = call i32 (...) @curl_global_cleanup()
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %37
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @curl_easy_getinfo(i32*, i32, i64*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
