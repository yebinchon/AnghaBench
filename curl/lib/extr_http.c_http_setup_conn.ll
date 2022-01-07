; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_http_setup_conn.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_http_setup_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.TYPE_5__*, %struct.Curl_easy* }
%struct.TYPE_5__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { %struct.HTTP* }
%struct.HTTP = type { i32 }

@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURL_HTTP_VERSION_3 = common dso_local global i64 0, align 8
@PROTOPT_SSL = common dso_local global i32 0, align 4
@TRNSPRT_QUIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"HTTP/3 requested for non-HTTPS URL\00", align 1
@CURLE_URL_MALFORMAT = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @http_setup_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_setup_conn(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.HTTP*, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %6 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 2
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  store %struct.Curl_easy* %8, %struct.Curl_easy** %5, align 8
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %10 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %13 = icmp eq %struct.HTTP* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @DEBUGASSERT(i32 %14)
  %16 = call %struct.HTTP* @calloc(i32 1, i32 4)
  store %struct.HTTP* %16, %struct.HTTP** %4, align 8
  %17 = load %struct.HTTP*, %struct.HTTP** %4, align 8
  %18 = icmp ne %struct.HTTP* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %20, i32* %2, align 4
  br label %68

21:                                               ; preds = %1
  %22 = load %struct.HTTP*, %struct.HTTP** %4, align 8
  %23 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %22, i32 0, i32 0
  %24 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %25 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %24, i32 0, i32 2
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %25, align 8
  %27 = call i32 @Curl_mime_initpart(i32* %23, %struct.Curl_easy* %26)
  %28 = load %struct.HTTP*, %struct.HTTP** %4, align 8
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %30 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store %struct.HTTP* %28, %struct.HTTP** %31, align 8
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %33 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CURL_HTTP_VERSION_3, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %21
  %39 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %40 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PROTOPT_SSL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @TRNSPRT_QUIC, align 4
  %49 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %50 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %55

51:                                               ; preds = %38
  %52 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %53 = call i32 @failf(%struct.Curl_easy* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  store i32 %54, i32* %2, align 4
  br label %68

55:                                               ; preds = %47
  br label %66

56:                                               ; preds = %21
  %57 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %58 = call i32 @CONN_INUSE(%struct.connectdata* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %62 = call i32 @Curl_http2_setup_conn(%struct.connectdata* %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %65 = call i32 @Curl_http2_setup_req(%struct.Curl_easy* %64)
  br label %66

66:                                               ; preds = %63, %55
  %67 = load i32, i32* @CURLE_OK, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %51, %19
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local %struct.HTTP* @calloc(i32, i32) #1

declare dso_local i32 @Curl_mime_initpart(i32*, %struct.Curl_easy*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @CONN_INUSE(%struct.connectdata*) #1

declare dso_local i32 @Curl_http2_setup_conn(%struct.connectdata*) #1

declare dso_local i32 @Curl_http2_setup_req(%struct.Curl_easy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
