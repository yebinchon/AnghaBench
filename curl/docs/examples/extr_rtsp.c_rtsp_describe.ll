; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_rtsp.c_rtsp_describe.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_rtsp.c_rtsp_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\0ARTSP: DESCRIBE %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not open '%s' for writing\0A\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Writing SDP to '%s'\0A\00", align 1
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_RTSP_REQUEST = common dso_local global i32 0, align 4
@CURL_RTSPREQ_DESCRIBE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @rtsp_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsp_describe(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @CURLE_OK, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = load i32*, i32** @stdout, align 8
  store i32* %20, i32** %8, align 8
  br label %24

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = ptrtoint i32* %27 to i64
  %29 = call i32 @my_curl_easy_setopt(i32* %25, i32 %26, i64 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @CURLOPT_RTSP_REQUEST, align 4
  %32 = load i64, i64* @CURL_RTSPREQ_DESCRIBE, align 8
  %33 = call i32 @my_curl_easy_setopt(i32* %30, i32 %31, i64 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @my_curl_easy_perform(i32* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %38 = load i32*, i32** @stdout, align 8
  %39 = ptrtoint i32* %38 to i64
  %40 = call i32 @my_curl_easy_setopt(i32* %36, i32 %37, i64 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** @stdout, align 8
  %43 = icmp ne i32* %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %24
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @fclose(i32* %45)
  br label %47

47:                                               ; preds = %44, %24
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @my_curl_easy_setopt(i32*, i32, i64) #1

declare dso_local i32 @my_curl_easy_perform(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
