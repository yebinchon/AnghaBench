; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_http_compile_trailers.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_http_compile_trailers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { %struct.curl_slist*, i32 }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Malformatted trailing header ! Skipping trailer.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_http_compile_trailers(%struct.curl_slist* %0, i32** %1, %struct.Curl_easy* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.curl_slist*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.Curl_easy*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.curl_slist* %0, %struct.curl_slist** %5, align 8
  store i32** %1, i32*** %6, align 8
  store %struct.Curl_easy* %2, %struct.Curl_easy** %7, align 8
  store i8* null, i8** %8, align 8
  %12 = load i64, i64* @CURLE_OK, align 8
  store i64 %12, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %14 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %20

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %20

20:                                               ; preds = %19, %18
  br label %21

21:                                               ; preds = %52, %20
  %22 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %23 = icmp ne %struct.curl_slist* %22, null
  br i1 %23, label %24, label %56

24:                                               ; preds = %21
  %25 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %26 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @strchr(i32 %27, i8 signext 58)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load i32**, i32*** %6, align 8
  %39 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %40 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i64 @Curl_add_bufferf(i32** %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %41, i8* %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %4, align 8
  br label %63

48:                                               ; preds = %37
  br label %52

49:                                               ; preds = %31, %24
  %50 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %51 = call i32 @infof(%struct.Curl_easy* %50, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %48
  %53 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %54 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %53, i32 0, i32 0
  %55 = load %struct.curl_slist*, %struct.curl_slist** %54, align 8
  store %struct.curl_slist* %55, %struct.curl_slist** %5, align 8
  br label %21

56:                                               ; preds = %21
  %57 = load i32**, i32*** %6, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = call i64 @Curl_add_buffer(i32** %57, i8* %58, i32 %60)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %56, %46
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i64 @Curl_add_bufferf(i32**, i8*, i32, i8*) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i64 @Curl_add_buffer(i32**, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
