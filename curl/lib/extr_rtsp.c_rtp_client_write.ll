; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_rtsp.c_rtp_client_write.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_rtsp.c_rtp_client_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (i8*, i32, i64, i8*)*, i64 (i8*, i32, i64, i8*)*, i8*, i8* }

@.str = private unnamed_addr constant [34 x i8] c"Cannot write a 0 size RTP packet.\00", align 1
@CURLE_WRITE_ERROR = common dso_local global i32 0, align 4
@CURL_WRITEFUNC_PAUSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Cannot pause RTP\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed writing RTP data\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i8*, i64)* @rtp_client_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_client_write(%struct.connectdata* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64 (i8*, i32, i64, i8*)*, align 8
  %11 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 0
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %19 = call i32 @failf(%struct.Curl_easy* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @CURLE_WRITE_ERROR, align 4
  store i32 %20, i32* %4, align 4
  br label %72

21:                                               ; preds = %3
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %23 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64 (i8*, i32, i64, i8*)*, i64 (i8*, i32, i64, i8*)** %24, align 8
  %26 = icmp ne i64 (i8*, i32, i64, i8*)* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %29 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64 (i8*, i32, i64, i8*)*, i64 (i8*, i32, i64, i8*)** %30, align 8
  store i64 (i8*, i32, i64, i8*)* %31, i64 (i8*, i32, i64, i8*)** %10, align 8
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %33 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %11, align 8
  br label %45

36:                                               ; preds = %21
  %37 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %38 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64 (i8*, i32, i64, i8*)*, i64 (i8*, i32, i64, i8*)** %39, align 8
  store i64 (i8*, i32, i64, i8*)* %40, i64 (i8*, i32, i64, i8*)** %10, align 8
  %41 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %42 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %11, align 8
  br label %45

45:                                               ; preds = %36, %27
  %46 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %47 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %46, i32 1)
  %48 = load i64 (i8*, i32, i64, i8*)*, i64 (i8*, i32, i64, i8*)** %10, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i64 %48(i8* %49, i32 1, i64 %50, i8* %51)
  store i64 %52, i64* %9, align 8
  %53 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %54 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %53, i32 0)
  %55 = load i64, i64* @CURL_WRITEFUNC_PAUSE, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %60 = call i32 @failf(%struct.Curl_easy* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @CURLE_WRITE_ERROR, align 4
  store i32 %61, i32* %4, align 4
  br label %72

62:                                               ; preds = %45
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %68 = call i32 @failf(%struct.Curl_easy* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @CURLE_WRITE_ERROR, align 4
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @CURLE_OK, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %66, %58, %17
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @Curl_set_in_callback(%struct.Curl_easy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
