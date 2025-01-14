; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_checkhttpprefix.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_checkhttpprefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.curl_slist* }
%struct.curl_slist = type { i8*, %struct.curl_slist* }

@STATUS_BAD = common dso_local global i64 0, align 8
@STATUS_DONE = common dso_local global i64 0, align 8
@STATUS_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"HTTP/\00", align 1
@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.Curl_easy*, i8*, i64)* @checkhttpprefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @checkhttpprefix(%struct.Curl_easy* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.curl_slist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %11 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.curl_slist*, %struct.curl_slist** %12, align 8
  store %struct.curl_slist* %13, %struct.curl_slist** %7, align 8
  %14 = load i64, i64* @STATUS_BAD, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp uge i64 %15, 5
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @STATUS_DONE, align 8
  br label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @STATUS_UNKNOWN, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ]
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %36, %21
  %24 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %25 = icmp ne %struct.curl_slist* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %28 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @checkprefixmax(i8* %29, i8* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %8, align 8
  br label %40

36:                                               ; preds = %26
  %37 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %38 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %37, i32 0, i32 1
  %39 = load %struct.curl_slist*, %struct.curl_slist** %38, align 8
  store %struct.curl_slist* %39, %struct.curl_slist** %7, align 8
  br label %23

40:                                               ; preds = %34, %23
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @STATUS_DONE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @checkprefixmax(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %49, %44, %40
  %52 = load i64, i64* %8, align 8
  ret i64 %52
}

declare dso_local i64 @checkprefixmax(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
