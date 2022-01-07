; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_getinmemory.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_getinmemory.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemoryStruct = type { i32, i64 }

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"https://www.example.com/\00", align 1
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@WriteMemoryCallback = common dso_local global i8* null, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_USERAGENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"libcurl-agent/1.0\00", align 1
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%lu bytes retrieved\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.MemoryStruct, align 8
  store i32 0, i32* %1, align 4
  %5 = call i32 @malloc(i32 1)
  %6 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %4, i32 0, i32 0
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %4, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %9 = call i32 @curl_global_init(i32 %8)
  %10 = call i32* (...) @curl_easy_init()
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @CURLOPT_URL, align 4
  %13 = call i32 @curl_easy_setopt(i32* %11, i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %16 = load i8*, i8** @WriteMemoryCallback, align 8
  %17 = call i32 @curl_easy_setopt(i32* %14, i32 %15, i8* %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %20 = bitcast %struct.MemoryStruct* %4 to i8*
  %21 = call i32 @curl_easy_setopt(i32* %18, i32 %19, i8* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @CURLOPT_USERAGENT, align 4
  %24 = call i32 @curl_easy_setopt(i32* %22, i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %2, align 8
  %26 = call i64 @curl_easy_perform(i32* %25)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @CURLE_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %0
  %31 = load i32, i32* @stderr, align 4
  %32 = load i64, i64* %3, align 8
  %33 = call i8* @curl_easy_strerror(i64 %32)
  %34 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %39

35:                                               ; preds = %0
  %36 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %4, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @curl_easy_cleanup(i32* %40)
  %42 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %4, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @free(i32 %43)
  %45 = call i32 (...) @curl_global_cleanup()
  ret i32 0
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
