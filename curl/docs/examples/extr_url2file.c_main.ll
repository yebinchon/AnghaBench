; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_url2file.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_url2file.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.pagefilename = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [9 x i8] c"page.out\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Usage: %s <URL>\0A\00", align 1
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_NOPROGRESS = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@write_data = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store i32 1, i32* %3, align 4
  br label %52

15:                                               ; preds = %2
  %16 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %17 = call i32 @curl_global_init(i32 %16)
  %18 = call i32* (...) @curl_easy_init()
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @CURLOPT_URL, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %19, i32 %20, i8* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %27 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %25, i32 %26, i64 1)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @CURLOPT_NOPROGRESS, align 4
  %30 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %28, i32 %29, i64 1)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %33 = load i8*, i8** @write_data, align 8
  %34 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %31, i32 %32, i8* %33)
  %35 = load i8*, i8** @main.pagefilename, align 8
  %36 = call i8* @fopen(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %15
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %40, i32 %41, i8* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @curl_easy_perform(i32* %44)
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @fclose(i8* %46)
  br label %48

48:                                               ; preds = %39, %15
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @curl_easy_cleanup(i32* %49)
  %51 = call i32 (...) @curl_global_cleanup()
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %10
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fclose(i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
