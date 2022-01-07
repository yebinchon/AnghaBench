; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_connect.c_Curl_getconnectinfo.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_connect.c_Curl_getconnectinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.connectdata* }
%struct.connectdata = type { i32*, %struct.Curl_easy* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.connfind = type { i32, %struct.connectdata* }

@FALSE = common dso_local global i32 0, align 4
@conn_is_conn = common dso_local global i32 0, align 4
@CURL_SOCKET_BAD = common dso_local global i32 0, align 4
@FIRSTSOCKET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_getconnectinfo(%struct.Curl_easy* %0, %struct.connectdata** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.connectdata**, align 8
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca %struct.connfind, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store %struct.connectdata** %1, %struct.connectdata*** %5, align 8
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %9 = call i32 @DEBUGASSERT(%struct.Curl_easy* %8)
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %11 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %14 = icmp ne %struct.connectdata* %13, null
  br i1 %14, label %15, label %80

15:                                               ; preds = %2
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %22 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %80

25:                                               ; preds = %20, %15
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %27 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.connectdata*, %struct.connectdata** %28, align 8
  store %struct.connectdata* %29, %struct.connectdata** %6, align 8
  %30 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %31 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.connectdata*, %struct.connectdata** %32, align 8
  %34 = getelementptr inbounds %struct.connfind, %struct.connfind* %7, i32 0, i32 1
  store %struct.connectdata* %33, %struct.connectdata** %34, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = getelementptr inbounds %struct.connfind, %struct.connfind* %7, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %38 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %39 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %25
  %43 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %44 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  br label %52

47:                                               ; preds = %25
  %48 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %49 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i32* [ %46, %42 ], [ %51, %47 ]
  %54 = load i32, i32* @conn_is_conn, align 4
  %55 = call i32 @Curl_conncache_foreach(%struct.Curl_easy* %37, i32* %53, %struct.connfind* %7, i32 %54)
  %56 = getelementptr inbounds %struct.connfind, %struct.connfind* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %52
  %60 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %61 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store %struct.connectdata* null, %struct.connectdata** %62, align 8
  %63 = load i32, i32* @CURL_SOCKET_BAD, align 4
  store i32 %63, i32* %3, align 4
  br label %82

64:                                               ; preds = %52
  %65 = load %struct.connectdata**, %struct.connectdata*** %5, align 8
  %66 = icmp ne %struct.connectdata** %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %69 = load %struct.connectdata**, %struct.connectdata*** %5, align 8
  store %struct.connectdata* %68, %struct.connectdata** %69, align 8
  %70 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %71 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %72 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %71, i32 0, i32 1
  store %struct.Curl_easy* %70, %struct.Curl_easy** %72, align 8
  br label %73

73:                                               ; preds = %67, %64
  %74 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %75 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @FIRSTSOCKET, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %3, align 4
  br label %82

80:                                               ; preds = %20, %2
  %81 = load i32, i32* @CURL_SOCKET_BAD, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %73, %59
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @DEBUGASSERT(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_conncache_foreach(%struct.Curl_easy*, i32*, %struct.connfind*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
