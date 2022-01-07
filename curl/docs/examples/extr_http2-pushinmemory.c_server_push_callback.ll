; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_http2-pushinmemory.c_server_push_callback.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_http2-pushinmemory.c_server_push_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_pushheaders = type { i32 }

@pushindex = common dso_local global i64 0, align 8
@MAX_FILES = common dso_local global i64 0, align 8
@CURL_PUSH_DENY = common dso_local global i32 0, align 4
@files = common dso_local global i32* null, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c":path\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"* Pushed :path '%s'\0A\00", align 1
@CURL_PUSH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, %struct.curl_pushheaders*, i8*)* @server_push_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_push_callback(i32* %0, i32* %1, i64 %2, %struct.curl_pushheaders* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.curl_pushheaders*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.curl_pushheaders* %3, %struct.curl_pushheaders** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %13, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @pushindex, align 8
  %19 = load i64, i64* @MAX_FILES, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @CURL_PUSH_DENY, align 4
  store i32 %22, i32* %6, align 4
  br label %49

23:                                               ; preds = %5
  %24 = load i32*, i32** @files, align 8
  %25 = load i64, i64* @pushindex, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = call i32 @init_memory(i32* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %30 = load i32*, i32** @files, align 8
  %31 = load i64, i64* @pushindex, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = call i32 @curl_easy_setopt(i32* %28, i32 %29, i32* %32)
  %34 = load i64, i64* @pushindex, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* @pushindex, align 8
  %36 = load %struct.curl_pushheaders*, %struct.curl_pushheaders** %10, align 8
  %37 = call i8* @curl_pushheader_byname(%struct.curl_pushheaders* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %40, %23
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @CURL_PUSH_OK, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %44, %21
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @init_memory(i32*) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i32*) #1

declare dso_local i8* @curl_pushheader_byname(%struct.curl_pushheaders*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
