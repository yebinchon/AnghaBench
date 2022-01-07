; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_curl_url_get_ccsid.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_curl_url_get_ccsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLUE_BAD_PARTPOINTER = common dso_local global i64 0, align 8
@CURLUE_OK = common dso_local global i64 0, align 8
@ASCII_CCSID = common dso_local global i32 0, align 4
@CURLUE_OUT_OF_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @curl_url_get_ccsid(i32* %0, i32 %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %14 = load i8**, i8*** %9, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  %17 = load i64, i64* @CURLUE_BAD_PARTPOINTER, align 8
  store i64 %17, i64* %6, align 8
  br label %51

18:                                               ; preds = %5
  %19 = load i8**, i8*** %9, align 8
  store i8* null, i8** %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @curl_url_get(i32* %20, i32 %21, i8** %12, i32 %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @CURLUE_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %18
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* @ASCII_CCSID, align 4
  %34 = call i8* @dynconvert(i32 %31, i8* %32, i32 -1, i32 %33)
  %35 = load i8**, i8*** %9, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i8**, i8*** %9, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = load i64, i64* @CURLUE_OUT_OF_MEMORY, align 8
  store i64 %40, i64* %13, align 8
  br label %41

41:                                               ; preds = %39, %30
  br label %42

42:                                               ; preds = %41, %27
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i8*, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @free(i8* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i64, i64* %13, align 8
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %49, %16
  %52 = load i64, i64* %6, align 8
  ret i64 %52
}

declare dso_local i64 @curl_url_get(i32*, i32, i8**, i32) #1

declare dso_local i8* @dynconvert(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
