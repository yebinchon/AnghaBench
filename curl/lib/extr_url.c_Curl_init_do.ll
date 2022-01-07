; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_init_do.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_init_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.SingleRequest }
%struct.TYPE_8__ = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.SingleRequest = type { i8*, i32, i32, i64, i32, i32, i32 }
%struct.connectdata = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8* }

@FALSE = common dso_local global i8* null, align 8
@PROTOPT_WILDCARD = common dso_local global i32 0, align 4
@HTTPREQ_HEAD = common dso_local global i64 0, align 8
@HTTPREQ_GET = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_init_do(%struct.Curl_easy* %0, %struct.connectdata* %1) #0 {
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca %struct.SingleRequest*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store %struct.connectdata* %1, %struct.connectdata** %4, align 8
  %6 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %7 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %6, i32 0, i32 2
  store %struct.SingleRequest* %7, %struct.SingleRequest** %5, align 8
  %8 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %9 = icmp ne %struct.connectdata* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load i8*, i8** @FALSE, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i8* %11, i8** %14, align 8
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %16 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %10
  %21 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %22 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PROTOPT_WILDCARD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = load i8*, i8** @FALSE, align 8
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %32 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 4
  store i8* %30, i8** %33, align 8
  br label %34

34:                                               ; preds = %29, %20, %10
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i8*, i8** @FALSE, align 8
  %37 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %38 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  store i8* %36, i8** %39, align 8
  %40 = load i8*, i8** @FALSE, align 8
  %41 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %42 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  store i8* %40, i8** %43, align 8
  %44 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %45 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %35
  %50 = load i64, i64* @HTTPREQ_HEAD, align 8
  %51 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %52 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  br label %67

54:                                               ; preds = %35
  %55 = load i64, i64* @HTTPREQ_HEAD, align 8
  %56 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %57 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i64, i64* @HTTPREQ_GET, align 8
  %63 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %64 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  br label %66

66:                                               ; preds = %61, %54
  br label %67

67:                                               ; preds = %66, %49
  %68 = call i32 (...) @Curl_now()
  %69 = load %struct.SingleRequest*, %struct.SingleRequest** %5, align 8
  %70 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load %struct.SingleRequest*, %struct.SingleRequest** %5, align 8
  %72 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.SingleRequest*, %struct.SingleRequest** %5, align 8
  %75 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @TRUE, align 4
  %77 = load %struct.SingleRequest*, %struct.SingleRequest** %5, align 8
  %78 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.SingleRequest*, %struct.SingleRequest** %5, align 8
  %80 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %82 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.SingleRequest*, %struct.SingleRequest** %5, align 8
  %86 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %88 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.SingleRequest*, %struct.SingleRequest** %5, align 8
  %92 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load i8*, i8** @FALSE, align 8
  %94 = load %struct.SingleRequest*, %struct.SingleRequest** %5, align 8
  %95 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %97 = call i32 @Curl_speedinit(%struct.Curl_easy* %96)
  %98 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %99 = call i32 @Curl_pgrsSetUploadCounter(%struct.Curl_easy* %98, i32 0)
  %100 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %101 = call i32 @Curl_pgrsSetDownloadCounter(%struct.Curl_easy* %100, i32 0)
  %102 = load i32, i32* @CURLE_OK, align 4
  ret i32 %102
}

declare dso_local i32 @Curl_now(...) #1

declare dso_local i32 @Curl_speedinit(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_pgrsSetUploadCounter(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_pgrsSetDownloadCounter(%struct.Curl_easy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
