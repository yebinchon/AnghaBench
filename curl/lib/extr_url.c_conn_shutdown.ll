; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_conn_shutdown.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_conn_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i64*, i64*, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Closing connection %ld\0A\00", align 1
@FIRSTSOCKET = common dso_local global i64 0, align 8
@SECONDARYSOCKET = common dso_local global i64 0, align 8
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*)* @conn_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_shutdown(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %3 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %4 = icmp ne %struct.connectdata* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %100

6:                                                ; preds = %1
  %7 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %8 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @infof(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @DEBUGASSERT(i32 %16)
  %18 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %19 = call i32 @Curl_resolver_cancel(%struct.connectdata* %18)
  %20 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %21 = load i64, i64* @FIRSTSOCKET, align 8
  %22 = call i32 @Curl_ssl_close(%struct.connectdata* %20, i64 %21)
  %23 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %24 = load i64, i64* @SECONDARYSOCKET, align 8
  %25 = call i32 @Curl_ssl_close(%struct.connectdata* %23, i64 %24)
  %26 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %27 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %28 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @SECONDARYSOCKET, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %26, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %6
  %35 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %36 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %37 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @SECONDARYSOCKET, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @Curl_closesocket(%struct.connectdata* %35, i64 %41)
  br label %43

43:                                               ; preds = %34, %6
  %44 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %45 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %46 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @FIRSTSOCKET, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %44, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %54 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %55 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @FIRSTSOCKET, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @Curl_closesocket(%struct.connectdata* %53, i64 %59)
  br label %61

61:                                               ; preds = %52, %43
  %62 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %63 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %64 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %62, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %71 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %72 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @Curl_closesocket(%struct.connectdata* %70, i64 %75)
  br label %77

77:                                               ; preds = %69, %61
  %78 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %79 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %80 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %78, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %87 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %88 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @Curl_closesocket(%struct.connectdata* %86, i64 %91)
  br label %93

93:                                               ; preds = %85, %77
  %94 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %95 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %98 = load i32, i32* @TRUE, align 4
  %99 = call i32 @Curl_conncache_remove_conn(i32 %96, %struct.connectdata* %97, i32 %98)
  br label %100

100:                                              ; preds = %93, %5
  ret void
}

declare dso_local i32 @infof(i32, i8*, i32) #1

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i32 @Curl_resolver_cancel(%struct.connectdata*) #1

declare dso_local i32 @Curl_ssl_close(%struct.connectdata*, i64) #1

declare dso_local i32 @Curl_closesocket(%struct.connectdata*, i64) #1

declare dso_local i32 @Curl_conncache_remove_conn(i32, %struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
