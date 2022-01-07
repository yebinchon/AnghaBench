; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_formdata.c_curl_formget.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_formdata.c_curl_formget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_httppost = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"multipart/form-data\00", align 1
@MIMESTRATEGY_FORM = common dso_local global i32 0, align 4
@CURLE_READ_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curl_formget(%struct.curl_httppost* %0, i8* %1, i64 (i8*, i8*, i64)* %2) #0 {
  %4 = alloca %struct.curl_httppost*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64 (i8*, i8*, i64)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8192 x i8], align 16
  %10 = alloca i64, align 8
  store %struct.curl_httppost* %0, %struct.curl_httppost** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 (i8*, i8*, i64)* %2, i64 (i8*, i8*, i64)** %6, align 8
  %11 = call i32 @Curl_mime_initpart(i32* %8, i32* null)
  %12 = load %struct.curl_httppost*, %struct.curl_httppost** %4, align 8
  %13 = call i64 @Curl_getformdata(i32* null, i32* %8, %struct.curl_httppost* %12, i32* null)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @MIMESTRATEGY_FORM, align 4
  %18 = call i64 @Curl_mime_prepare_headers(i32* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null, i32 %17)
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %16, %3
  br label %20

20:                                               ; preds = %44, %19
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = getelementptr inbounds [8192 x i8], [8192 x i8]* %9, i64 0, i64 0
  %26 = call i64 @Curl_mime_read(i8* %25, i32 1, i32 8192, i32* %8)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %45

30:                                               ; preds = %24
  %31 = load i64, i64* %10, align 8
  switch i64 %31, label %32 [
    i64 129, label %43
    i64 128, label %43
  ]

32:                                               ; preds = %30
  %33 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %6, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds [8192 x i8], [8192 x i8]* %9, i64 0, i64 0
  %36 = load i64, i64* %10, align 8
  %37 = call i64 %33(i8* %34, i8* %35, i64 %36)
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i64, i64* @CURLE_READ_ERROR, align 8
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %40, %32
  br label %44

43:                                               ; preds = %30, %30
  br label %44

44:                                               ; preds = %43, %42
  br label %20

45:                                               ; preds = %29, %20
  %46 = call i32 @Curl_mime_cleanpart(i32* %8)
  %47 = load i64, i64* %7, align 8
  %48 = trunc i64 %47 to i32
  ret i32 %48
}

declare dso_local i32 @Curl_mime_initpart(i32*, i32*) #1

declare dso_local i64 @Curl_getformdata(i32*, i32*, %struct.curl_httppost*, i32*) #1

declare dso_local i64 @Curl_mime_prepare_headers(i32*, i8*, i32*, i32) #1

declare dso_local i64 @Curl_mime_read(i8*, i32, i32, i32*) #1

declare dso_local i32 @Curl_mime_cleanpart(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
