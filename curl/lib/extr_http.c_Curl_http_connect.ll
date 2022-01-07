; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_http_connect.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_http_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"HTTP default\00", align 1
@FIRSTSOCKET = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@CURLPROTO_HTTPS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_http_connect(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %8 = call i32 @connkeep(%struct.connectdata* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %10 = load i32, i32* @FIRSTSOCKET, align 4
  %11 = call i64 @Curl_proxy_connect(%struct.connectdata* %9, i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %3, align 8
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* @CURLE_OK, align 8
  store i64 %23, i64* %3, align 8
  br label %74

24:                                               ; preds = %16
  %25 = call i64 (...) @CONNECT_FIRSTSOCKET_PROXY_SSL()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64, i64* @CURLE_OK, align 8
  store i64 %28, i64* %3, align 8
  br label %74

29:                                               ; preds = %24
  %30 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %31 = call i64 @Curl_connect_ongoing(%struct.connectdata* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @CURLE_OK, align 8
  store i64 %34, i64* %3, align 8
  br label %74

35:                                               ; preds = %29
  %36 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %37 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %45 = call i64 @add_haproxy_protocol_header(%struct.connectdata* %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8
  store i64 %49, i64* %3, align 8
  br label %74

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %35
  %52 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %53 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CURLPROTO_HTTPS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %51
  %61 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i64 @https_connecting(%struct.connectdata* %61, i32* %62)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i64, i64* %6, align 8
  store i64 %67, i64* %3, align 8
  br label %74

68:                                               ; preds = %60
  br label %72

69:                                               ; preds = %51
  %70 = load i32, i32* @TRUE, align 4
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %68
  %73 = load i64, i64* @CURLE_OK, align 8
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %72, %66, %48, %33, %27, %22, %14
  %75 = load i64, i64* %3, align 8
  ret i64 %75
}

declare dso_local i32 @connkeep(%struct.connectdata*, i8*) #1

declare dso_local i64 @Curl_proxy_connect(%struct.connectdata*, i32) #1

declare dso_local i64 @CONNECT_FIRSTSOCKET_PROXY_SSL(...) #1

declare dso_local i64 @Curl_connect_ongoing(%struct.connectdata*) #1

declare dso_local i64 @add_haproxy_protocol_header(%struct.connectdata*) #1

declare dso_local i64 @https_connecting(%struct.connectdata*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
