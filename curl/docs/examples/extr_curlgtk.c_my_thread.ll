; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_curlgtk.c_my_thread.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_curlgtk.c_my_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"test.curl\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@my_write_func = common dso_local global i64 0, align 8
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@my_read_func = common dso_local global i64 0, align 8
@CURLOPT_NOPROGRESS = common dso_local global i32 0, align 4
@CURLOPT_PROGRESSFUNCTION = common dso_local global i32 0, align 4
@my_progress_func = common dso_local global i64 0, align 8
@CURLOPT_PROGRESSDATA = common dso_local global i32 0, align 4
@Bar = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @my_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = call i32* (...) @curl_easy_init()
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %50

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %4, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @CURLOPT_URL, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = ptrtoint i32* %17 to i64
  %19 = call i32 @curl_easy_setopt(i32* %15, i32 %16, i64 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = call i32 @curl_easy_setopt(i32* %20, i32 %21, i64 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %27 = load i64, i64* @my_write_func, align 8
  %28 = call i32 @curl_easy_setopt(i32* %25, i32 %26, i64 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %31 = load i64, i64* @my_read_func, align 8
  %32 = call i32 @curl_easy_setopt(i32* %29, i32 %30, i64 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @CURLOPT_NOPROGRESS, align 4
  %35 = call i32 @curl_easy_setopt(i32* %33, i32 %34, i64 0)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @CURLOPT_PROGRESSFUNCTION, align 4
  %38 = load i64, i64* @my_progress_func, align 8
  %39 = call i32 @curl_easy_setopt(i32* %36, i32 %37, i64 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @CURLOPT_PROGRESSDATA, align 4
  %42 = load i64, i64* @Bar, align 8
  %43 = call i32 @curl_easy_setopt(i32* %40, i32 %41, i64 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @curl_easy_perform(i32* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @fclose(i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @curl_easy_cleanup(i32* %48)
  br label %50

50:                                               ; preds = %10, %1
  ret i8* null
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i64) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
