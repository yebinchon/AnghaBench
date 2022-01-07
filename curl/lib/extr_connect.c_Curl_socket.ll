; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_connect.c_Curl_socket.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_connect.c_Curl_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i64, i64, %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (i32, i32, %struct.curl_sockaddr*)*, i32 }
%struct.curl_sockaddr = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.Curl_sockaddr_ex = type { i64, i32, i32, i32, i32 }

@TRNSPRT_TCP = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@CURLSOCKTYPE_IPCXN = common dso_local global i32 0, align 4
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@CURLE_COULDNT_CONNECT = common dso_local global i32 0, align 4
@TRNSPRT_QUIC = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_socket(%struct.connectdata* %0, %struct.TYPE_5__* %1, %struct.Curl_sockaddr_ex* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.Curl_sockaddr_ex*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.Curl_easy*, align 8
  %11 = alloca %struct.Curl_sockaddr_ex, align 8
  store %struct.connectdata* %0, %struct.connectdata** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store %struct.Curl_sockaddr_ex* %2, %struct.Curl_sockaddr_ex** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 2
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %10, align 8
  %15 = load %struct.Curl_sockaddr_ex*, %struct.Curl_sockaddr_ex** %8, align 8
  %16 = icmp ne %struct.Curl_sockaddr_ex* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.Curl_sockaddr_ex* %11, %struct.Curl_sockaddr_ex** %8, align 8
  br label %18

18:                                               ; preds = %17, %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.Curl_sockaddr_ex*, %struct.Curl_sockaddr_ex** %8, align 8
  %23 = getelementptr inbounds %struct.Curl_sockaddr_ex, %struct.Curl_sockaddr_ex* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %25 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TRNSPRT_TCP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @SOCK_STREAM, align 4
  br label %33

31:                                               ; preds = %18
  %32 = load i32, i32* @SOCK_DGRAM, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load %struct.Curl_sockaddr_ex*, %struct.Curl_sockaddr_ex** %8, align 8
  %36 = getelementptr inbounds %struct.Curl_sockaddr_ex, %struct.Curl_sockaddr_ex* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %38 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TRNSPRT_TCP, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @IPPROTO_UDP, align 4
  br label %48

44:                                               ; preds = %33
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i32 [ %43, %42 ], [ %47, %44 ]
  %50 = load %struct.Curl_sockaddr_ex*, %struct.Curl_sockaddr_ex** %8, align 8
  %51 = getelementptr inbounds %struct.Curl_sockaddr_ex, %struct.Curl_sockaddr_ex* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.Curl_sockaddr_ex*, %struct.Curl_sockaddr_ex** %8, align 8
  %56 = getelementptr inbounds %struct.Curl_sockaddr_ex, %struct.Curl_sockaddr_ex* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.Curl_sockaddr_ex*, %struct.Curl_sockaddr_ex** %8, align 8
  %58 = getelementptr inbounds %struct.Curl_sockaddr_ex, %struct.Curl_sockaddr_ex* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = icmp ugt i64 %60, 4
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load %struct.Curl_sockaddr_ex*, %struct.Curl_sockaddr_ex** %8, align 8
  %64 = getelementptr inbounds %struct.Curl_sockaddr_ex, %struct.Curl_sockaddr_ex* %63, i32 0, i32 1
  store i32 4, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %48
  %66 = load %struct.Curl_sockaddr_ex*, %struct.Curl_sockaddr_ex** %8, align 8
  %67 = getelementptr inbounds %struct.Curl_sockaddr_ex, %struct.Curl_sockaddr_ex* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.Curl_sockaddr_ex*, %struct.Curl_sockaddr_ex** %8, align 8
  %72 = getelementptr inbounds %struct.Curl_sockaddr_ex, %struct.Curl_sockaddr_ex* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @memcpy(i32* %67, i32 %70, i32 %73)
  %75 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %76 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64 (i32, i32, %struct.curl_sockaddr*)*, i64 (i32, i32, %struct.curl_sockaddr*)** %77, align 8
  %79 = icmp ne i64 (i32, i32, %struct.curl_sockaddr*)* %78, null
  br i1 %79, label %80, label %98

80:                                               ; preds = %65
  %81 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %82 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %81, i32 1)
  %83 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %84 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64 (i32, i32, %struct.curl_sockaddr*)*, i64 (i32, i32, %struct.curl_sockaddr*)** %85, align 8
  %87 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %88 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CURLSOCKTYPE_IPCXN, align 4
  %92 = load %struct.Curl_sockaddr_ex*, %struct.Curl_sockaddr_ex** %8, align 8
  %93 = bitcast %struct.Curl_sockaddr_ex* %92 to %struct.curl_sockaddr*
  %94 = call i64 %86(i32 %90, i32 %91, %struct.curl_sockaddr* %93)
  %95 = load i64*, i64** %9, align 8
  store i64 %94, i64* %95, align 8
  %96 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %97 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %96, i32 0)
  br label %110

98:                                               ; preds = %65
  %99 = load %struct.Curl_sockaddr_ex*, %struct.Curl_sockaddr_ex** %8, align 8
  %100 = getelementptr inbounds %struct.Curl_sockaddr_ex, %struct.Curl_sockaddr_ex* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.Curl_sockaddr_ex*, %struct.Curl_sockaddr_ex** %8, align 8
  %103 = getelementptr inbounds %struct.Curl_sockaddr_ex, %struct.Curl_sockaddr_ex* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.Curl_sockaddr_ex*, %struct.Curl_sockaddr_ex** %8, align 8
  %106 = getelementptr inbounds %struct.Curl_sockaddr_ex, %struct.Curl_sockaddr_ex* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @socket(i64 %101, i32 %104, i32 %107)
  %109 = load i64*, i64** %9, align 8
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %98, %80
  %111 = load i64*, i64** %9, align 8
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @CURLE_COULDNT_CONNECT, align 4
  store i32 %116, i32* %5, align 4
  br label %130

117:                                              ; preds = %110
  %118 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %119 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TRNSPRT_QUIC, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load i64*, i64** %9, align 8
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @TRUE, align 4
  %127 = call i32 @curlx_nonblock(i64 %125, i32 %126)
  br label %128

128:                                              ; preds = %123, %117
  %129 = load i32, i32* @CURLE_OK, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %115
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @Curl_set_in_callback(%struct.Curl_easy*, i32) #1

declare dso_local i64 @socket(i64, i32, i32) #1

declare dso_local i32 @curlx_nonblock(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
