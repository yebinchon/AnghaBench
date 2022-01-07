; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_synctime.c_SyncTime_CURL_Init.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_synctime.c_SyncTime_CURL_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLOPT_PROXY = common dso_local global i32 0, align 4
@CURLOPT_PROXYUSERPWD = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@SyncTime_CURL_WriteOutput = common dso_local global i8** null, align 8
@CURLOPT_HEADERFUNCTION = common dso_local global i32 0, align 4
@SyncTime_CURL_WriteHeader = common dso_local global i8** null, align 8
@CURLOPT_USERAGENT = common dso_local global i32 0, align 4
@SYNCTIME_UA = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SyncTime_CURL_Init(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @CURLOPT_PROXY, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @curl_easy_setopt(i32* %11, i32 %12, i8* %13)
  br label %15

15:                                               ; preds = %10, %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @CURLOPT_PROXYUSERPWD, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @curl_easy_setopt(i32* %20, i32 %21, i8* %22)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %27 = load i8**, i8*** @SyncTime_CURL_WriteOutput, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @curl_easy_setopt(i32* %25, i32 %26, i8* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @CURLOPT_HEADERFUNCTION, align 4
  %32 = load i8**, i8*** @SyncTime_CURL_WriteHeader, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @curl_easy_setopt(i32* %30, i32 %31, i8* %33)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
