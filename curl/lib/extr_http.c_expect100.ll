; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_expect100.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_expect100.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.connectdata = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Expect\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Expect:\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"100-continue\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Expect: 100-continue\0D\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, %struct.connectdata*, i32*)* @expect100 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expect100(%struct.Curl_easy* %0, %struct.connectdata* %1, i32* %2) #0 {
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store %struct.connectdata* %1, %struct.connectdata** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @CURLE_OK, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @FALSE, align 4
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %12 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %15 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %16 = call i64 @use_http_1_1plus(%struct.Curl_easy* %14, %struct.connectdata* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %3
  %19 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 20
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %25 = call i8* @Curl_checkheaders(%struct.connectdata* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @Curl_compareheader(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %32 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  br label %44

34:                                               ; preds = %23
  %35 = call i32 @Curl_add_bufferf(i32** %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @TRUE, align 4
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %41 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %34
  br label %44

44:                                               ; preds = %43, %28
  br label %45

45:                                               ; preds = %44, %18, %3
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i64 @use_http_1_1plus(%struct.Curl_easy*, %struct.connectdata*) #1

declare dso_local i8* @Curl_checkheaders(%struct.connectdata*, i8*) #1

declare dso_local i32 @Curl_compareheader(i8*, i8*, i8*) #1

declare dso_local i32 @Curl_add_bufferf(i32**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
