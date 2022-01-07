; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1900.c_setup_handle.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1900.c_setup_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@urlstring = common dso_local global i32* null, align 8
@handles = common dso_local global i32* null, align 8
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_FAILONERROR = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@write_callback = common dso_local global i8* null, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @setup_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_handle(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %9 = load i8*, i8** %4, align 8
  %10 = load i32*, i32** @urlstring, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @msnprintf(i8* %8, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %14)
  %16 = load i32*, i32** @handles, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CURLOPT_URL, align 4
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %23 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %20, i32 %21, i8* %22)
  %24 = load i32*, i32** @handles, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %30 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %28, i32 %29, i64 1)
  %31 = load i32*, i32** @handles, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CURLOPT_FAILONERROR, align 4
  %37 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %35, i32 %36, i64 1)
  %38 = load i32*, i32** @handles, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %44 = load i8*, i8** @write_callback, align 8
  %45 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %42, i32 %43, i8* %44)
  %46 = load i32*, i32** @handles, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %52 = call i32 (i32, i32, ...) @curl_easy_setopt(i32 %50, i32 %51, i8* null)
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** @handles, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @curl_multi_add_handle(i32* %53, i32 %58)
  ret void
}

declare dso_local i32 @msnprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @curl_easy_setopt(i32, i32, ...) #1

declare dso_local i32 @curl_multi_add_handle(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
