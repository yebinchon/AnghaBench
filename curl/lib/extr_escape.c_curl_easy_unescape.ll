; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_escape.c_curl_easy_unescape.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_escape.c_curl_easy_unescape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @curl_easy_unescape(%struct.Curl_easy* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %11, align 8
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i64 @Curl_urldecode(%struct.Curl_easy* %19, i8* %20, i64 %21, i8** %10, i64* %12, i32 %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i8* null, i8** %5, align 8
  br label %45

27:                                               ; preds = %16
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @INT_MAX, align 8
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @curlx_uztosi(i64 %35)
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %41

38:                                               ; preds = %30
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @Curl_safefree(i8* %39)
  br label %41

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %41, %27
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i8*, i8** %10, align 8
  store i8* %44, i8** %5, align 8
  br label %45

45:                                               ; preds = %43, %26
  %46 = load i8*, i8** %5, align 8
  ret i8* %46
}

declare dso_local i64 @Curl_urldecode(%struct.Curl_easy*, i8*, i64, i8**, i64*, i32) #1

declare dso_local i32 @curlx_uztosi(i64) #1

declare dso_local i32 @Curl_safefree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
