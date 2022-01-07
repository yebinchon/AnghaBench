; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_add_timecondition.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_add_timecondition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tm = type { i32, i64, i32, i32, i32, i64, i32 }

@CURL_TIMECOND_NONE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Invalid TIMEVALUE\00", align 1
@CURLE_BAD_FUNCTION_ARGUMENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"If-Modified-Since\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"If-Unmodified-Since\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Last-Modified\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: %s, %02d %s %4d %02d:%02d:%02d GMT\0D\0A\00", align 1
@Curl_wkday = common dso_local global i32* null, align 8
@Curl_month = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_add_timecondition(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca %struct.tm, align 8
  %9 = alloca i64, align 8
  %10 = alloca [80 x i8], align 16
  %11 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 0
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %6, align 8
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %16 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CURL_TIMECOND_NONE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i64, i64* @CURLE_OK, align 8
  store i64 %22, i64* %3, align 8
  br label %99

23:                                               ; preds = %2
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @Curl_gmtime(i32 %27, %struct.tm* %8)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %33 = call i32 @failf(%struct.Curl_easy* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %3, align 8
  br label %99

35:                                               ; preds = %23
  store %struct.tm* %8, %struct.tm** %7, align 8
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %37 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %40 [
    i32 130, label %42
    i32 129, label %43
    i32 128, label %44
  ]

40:                                               ; preds = %35
  %41 = load i64, i64* @CURLE_BAD_FUNCTION_ARGUMENT, align 8
  store i64 %41, i64* %3, align 8
  br label %99

42:                                               ; preds = %35
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %45

43:                                               ; preds = %35
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %45

44:                                               ; preds = %35
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %45

45:                                               ; preds = %44, %43, %42
  %46 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i64 @Curl_checkheaders(%struct.connectdata* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @CURLE_OK, align 8
  store i64 %51, i64* %3, align 8
  br label %99

52:                                               ; preds = %45
  %53 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %54 = load i8*, i8** %11, align 8
  %55 = load i32*, i32** @Curl_wkday, align 8
  %56 = load %struct.tm*, %struct.tm** %7, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.tm*, %struct.tm** %7, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  br label %66

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %60
  %67 = phi i32 [ %64, %60 ], [ 6, %65 ]
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %55, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.tm*, %struct.tm** %7, align 8
  %72 = getelementptr inbounds %struct.tm, %struct.tm* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** @Curl_month, align 8
  %75 = load %struct.tm*, %struct.tm** %7, align 8
  %76 = getelementptr inbounds %struct.tm, %struct.tm* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tm*, %struct.tm** %7, align 8
  %81 = getelementptr inbounds %struct.tm, %struct.tm* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1900
  %84 = load %struct.tm*, %struct.tm** %7, align 8
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.tm*, %struct.tm** %7, align 8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.tm*, %struct.tm** %7, align 8
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @msnprintf(i8* %53, i32 80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %54, i32 %70, i32 %73, i32 %79, i64 %83, i32 %86, i32 %89, i32 %92)
  %94 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %95 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %96 = call i32 @strlen(i8* %95)
  %97 = call i64 @Curl_add_buffer(i32** %5, i8* %94, i32 %96)
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %9, align 8
  store i64 %98, i64* %3, align 8
  br label %99

99:                                               ; preds = %66, %50, %40, %31, %21
  %100 = load i64, i64* %3, align 8
  ret i64 %100
}

declare dso_local i64 @Curl_gmtime(i32, %struct.tm*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i64 @Curl_checkheaders(%struct.connectdata*, i8*) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i8*, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i64 @Curl_add_buffer(i32**, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
