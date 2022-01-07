; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib506.c_fire.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib506.c_fire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type opaque
%struct.Tdata = type { i8*, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_COOKIEFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"CURLOPT_SHARE\0A\00", align 1
@CURLOPT_SHARE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"PERFORM\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"perform url '%s' repeat %d failed, curlcode %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"CLEANUP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @fire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fire(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.curl_slist*, align 8
  %6 = alloca %struct.Tdata*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.Tdata*
  store %struct.Tdata* %10, %struct.Tdata** %6, align 8
  %11 = call i32* (...) @curl_easy_init()
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %64

17:                                               ; preds = %1
  %18 = call i8* @sethost(i32* null)
  %19 = bitcast i8* %18 to %struct.curl_slist*
  store %struct.curl_slist* %19, %struct.curl_slist** %5, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %22 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %20, i32 %21, i64 1)
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %25 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %26 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %23, i32 %24, %struct.curl_slist* %25)
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @CURLOPT_URL, align 4
  %29 = load %struct.Tdata*, %struct.Tdata** %6, align 8
  %30 = getelementptr inbounds %struct.Tdata, %struct.Tdata* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %27, i32 %28, i8* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @CURLOPT_COOKIEFILE, align 4
  %35 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %33, i32 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @CURLOPT_SHARE, align 4
  %39 = load %struct.Tdata*, %struct.Tdata** %6, align 8
  %40 = getelementptr inbounds %struct.Tdata, %struct.Tdata* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %37, i32 %38, i8* %41)
  %43 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32*, i32** %7, align 8
  %45 = call i64 @curl_easy_perform(i32* %44)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  %49 = load i32, i32* @stderr, align 4
  %50 = load %struct.Tdata*, %struct.Tdata** %6, align 8
  %51 = getelementptr inbounds %struct.Tdata, %struct.Tdata* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i64, i64* %4, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %52, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %48, %17
  %58 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @curl_easy_cleanup(i32* %59)
  %61 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %62 = bitcast %struct.curl_slist* %61 to i8*
  %63 = call i32 @curl_slist_free_all(i8* %62)
  store i8* null, i8** %2, align 8
  br label %64

64:                                               ; preds = %57, %14
  %65 = load i8*, i8** %2, align 8
  ret i8* %65
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @sethost(i32*) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
