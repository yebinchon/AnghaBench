; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_smooth-gtk-thread.c_pull_one_url.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_smooth-gtk-thread.c_pull_one_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lock = common dso_local global i32 0, align 4
@j = common dso_local global i32 0, align 4
@num_urls = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"j = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"xoap.weather.com/weather/local/%s?cc=*&dayf=5&unit=i\0A\00", align 1
@urls = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"http %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@write_file = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"fclose\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pull_one_url(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i32 @pthread_mutex_lock(i32* @lock)
  br label %7

7:                                                ; preds = %54, %1
  %8 = load i32, i32* @j, align 4
  %9 = load i32, i32* @num_urls, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %58

11:                                               ; preds = %7
  %12 = load i32, i32* @j, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** @urls, align 8
  %15 = load i32, i32* @j, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = call i32* (...) @curl_easy_init()
  store i32* %22, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %54

25:                                               ; preds = %11
  %26 = load i32*, i32** @urls, align 8
  %27 = load i32, i32* @j, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @fopen(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %31, i8** %5, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @CURLOPT_URL, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @curl_easy_setopt(i32* %32, i32 %33, i8* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @curl_easy_setopt(i32* %36, i32 %37, i8* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %42 = load i8*, i8** @write_file, align 8
  %43 = call i32 @curl_easy_setopt(i32* %40, i32 %41, i8* %42)
  %44 = load i32, i32* @j, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @j, align 4
  %46 = call i32 @pthread_mutex_unlock(i32* @lock)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @curl_easy_perform(i32* %47)
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @fclose(i8* %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @curl_easy_cleanup(i32* %52)
  br label %54

54:                                               ; preds = %25, %11
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @g_free(i8* %55)
  %57 = call i32 @sleep(i32 1)
  br label %7

58:                                               ; preds = %7
  ret i8* null
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @g_strdup_printf(i8*, i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i8* @fopen(i32, i8*) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fclose(i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
