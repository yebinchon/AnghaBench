; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_sepheaders.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_sepheaders.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.headerfilename = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [9 x i8] c"head.out\00", align 1
@main.bodyfilename = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"body.out\00", align 1
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"https://example.com\00", align 1
@CURLOPT_NOPROGRESS = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@write_data = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@CURLOPT_HEADERDATA = common dso_local global i32 0, align 4
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %6 = call i32 @curl_global_init(i32 %5)
  %7 = call i32* (...) @curl_easy_init()
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @CURLOPT_URL, align 4
  %10 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %8, i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @CURLOPT_NOPROGRESS, align 4
  %13 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %11, i32 %12, i64 1)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %16 = load i8*, i8** @write_data, align 8
  %17 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %14, i32 %15, i8* %16)
  %18 = load i8*, i8** @main.headerfilename, align 8
  %19 = call i8* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %0
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @curl_easy_cleanup(i32* %23)
  store i32 -1, i32* %1, align 4
  br label %52

25:                                               ; preds = %0
  %26 = load i8*, i8** @main.bodyfilename, align 8
  %27 = call i8* @fopen(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @curl_easy_cleanup(i32* %31)
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @fclose(i8* %33)
  store i32 -1, i32* %1, align 4
  br label %52

35:                                               ; preds = %25
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @CURLOPT_HEADERDATA, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %36, i32 %37, i8* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %40, i32 %41, i8* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @curl_easy_perform(i32* %44)
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @fclose(i8* %46)
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @fclose(i8* %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @curl_easy_cleanup(i32* %50)
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %35, %30, %22
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @fclose(i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
