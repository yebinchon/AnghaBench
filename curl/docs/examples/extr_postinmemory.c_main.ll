; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_postinmemory.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_postinmemory.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemoryStruct = type { i8*, i64 }

@main.postthis = internal global i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [24 x i8] c"Field=1&Field=2&Field=3\00", align 1
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"https://www.example.org/\00", align 1
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@WriteMemoryCallback = common dso_local global i64 0, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_USERAGENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"libcurl-agent/1.0\00", align 1
@CURLOPT_POSTFIELDS = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDSIZE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.MemoryStruct, align 8
  store i32 0, i32* %1, align 4
  %5 = call i8* @malloc(i32 1)
  %6 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %4, i32 0, i32 0
  store i8* %5, i8** %6, align 8
  %7 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %4, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %9 = call i32 @curl_global_init(i32 %8)
  %10 = call i32* (...) @curl_easy_init()
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %55

13:                                               ; preds = %0
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @CURLOPT_URL, align 4
  %16 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %14, i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %19 = load i64, i64* @WriteMemoryCallback, align 8
  %20 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %17, i32 %18, i64 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %23 = bitcast %struct.MemoryStruct* %4 to i8*
  %24 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %21, i32 %22, i8* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @CURLOPT_USERAGENT, align 4
  %27 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %25, i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @CURLOPT_POSTFIELDS, align 4
  %30 = load i8*, i8** @main.postthis, align 8
  %31 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %28, i32 %29, i8* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @CURLOPT_POSTFIELDSIZE, align 4
  %34 = load i8*, i8** @main.postthis, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %32, i32 %33, i64 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @curl_easy_perform(i32* %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @CURLE_OK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %13
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i8* @curl_easy_strerror(i32 %44)
  %46 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %51

47:                                               ; preds = %13
  %48 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %4, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @curl_easy_cleanup(i32* %52)
  %54 = call i32 (...) @curl_global_cleanup()
  br label %55

55:                                               ; preds = %51, %0
  %56 = getelementptr inbounds %struct.MemoryStruct, %struct.MemoryStruct* %4, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @free(i8* %57)
  ret i32 0
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
