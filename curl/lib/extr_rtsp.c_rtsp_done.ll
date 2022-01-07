; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_rtsp.c_rtsp_done.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_rtsp.c_rtsp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_8__, %struct.Curl_easy* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.RTSP* }
%struct.RTSP = type { i64, i64 }

@RTSPREQ_RECEIVE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"The CSeq of this request %ld did not match the response %ld\00", align 1
@CURLE_RTSP_CSEQ_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Got an RTP Receive with a CSeq of %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @rtsp_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_done(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.RTSP*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 1
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  store %struct.Curl_easy* %15, %struct.Curl_easy** %8, align 8
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.RTSP*, %struct.RTSP** %18, align 8
  store %struct.RTSP* %19, %struct.RTSP** %9, align 8
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RTSPREQ_RECEIVE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %3
  %29 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @Curl_http_done(%struct.connectdata* %29, i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.RTSP*, %struct.RTSP** %9, align 8
  %34 = icmp ne %struct.RTSP* %33, null
  br i1 %34, label %35, label %77

35:                                               ; preds = %28
  %36 = load %struct.RTSP*, %struct.RTSP** %9, align 8
  %37 = getelementptr inbounds %struct.RTSP, %struct.RTSP* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %11, align 8
  %39 = load %struct.RTSP*, %struct.RTSP** %9, align 8
  %40 = getelementptr inbounds %struct.RTSP, %struct.RTSP* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  %42 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %43 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RTSPREQ_RECEIVE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %35
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @failf(%struct.Curl_easy* %53, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %55)
  %57 = load i32, i32* @CURLE_RTSP_CSEQ_ERROR, align 4
  store i32 %57, i32* %4, align 4
  br label %79

58:                                               ; preds = %48, %35
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %60 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RTSPREQ_RECEIVE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %67 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @infof(%struct.Curl_easy* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %72, %65, %58
  br label %77

77:                                               ; preds = %76, %28
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %52
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @Curl_http_done(%struct.connectdata*, i32, i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i64, i64) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
