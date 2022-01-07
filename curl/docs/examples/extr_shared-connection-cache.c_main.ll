; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_shared-connection-cache.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_shared-connection-cache.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLSHOPT_SHARE = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_CONNECT = common dso_local global i32 0, align 4
@CURLSHOPT_LOCKFUNC = common dso_local global i32 0, align 4
@my_lock = common dso_local global i32 0, align 4
@CURLSHOPT_UNLOCKFUNC = common dso_local global i32 0, align 4
@my_unlock = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"https://curl.haxx.se/\00", align 1
@CURLOPT_SHARE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = call i8* (...) @curl_share_init()
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @CURLSHOPT_SHARE, align 4
  %9 = load i32, i32* @CURL_LOCK_DATA_CONNECT, align 4
  %10 = call i32 @curl_share_setopt(i8* %7, i32 %8, i32 %9)
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* @CURLSHOPT_LOCKFUNC, align 4
  %13 = load i32, i32* @my_lock, align 4
  %14 = call i32 @curl_share_setopt(i8* %11, i32 %12, i32 %13)
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* @CURLSHOPT_UNLOCKFUNC, align 4
  %17 = load i32, i32* @my_unlock, align 4
  %18 = call i32 @curl_share_setopt(i8* %15, i32 %16, i32 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %48, %0
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %51

22:                                               ; preds = %19
  %23 = call i32* (...) @curl_easy_init()
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @CURLOPT_URL, align 4
  %29 = call i32 @curl_easy_setopt(i32* %27, i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @CURLOPT_SHARE, align 4
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @curl_easy_setopt(i32* %30, i32 %31, i8* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @curl_easy_perform(i32* %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @CURLE_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load i32, i32* @stderr, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i8* @curl_easy_strerror(i64 %41)
  %43 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %39, %26
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @curl_easy_cleanup(i32* %45)
  br label %47

47:                                               ; preds = %44, %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %19

51:                                               ; preds = %19
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @curl_share_cleanup(i8* %52)
  ret i32 0
}

declare dso_local i8* @curl_share_init(...) #1

declare dso_local i32 @curl_share_setopt(i8*, i32, i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_share_cleanup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
