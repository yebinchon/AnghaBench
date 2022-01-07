; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_connect.c_connected_proxy.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_connect.c_connected_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i8*, i32, i32, i32, %struct.TYPE_12__, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }

@CURLE_OK = common dso_local global i32 0, align 4
@SECONDARYSOCKET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unknown proxytype option given\00", align 1
@CURLE_COULDNT_CONNECT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32)* @connected_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connected_proxy(%struct.connectdata* %0, i32 %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @CURLE_OK, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %138

14:                                               ; preds = %2
  %15 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %22 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  br label %54

26:                                               ; preds = %14
  %27 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %28 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %34 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %33, i32 0, i32 9
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %52

37:                                               ; preds = %26
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SECONDARYSOCKET, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %43 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  br label %50

45:                                               ; preds = %37
  %46 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %47 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i8* [ %44, %41 ], [ %49, %45 ]
  br label %52

52:                                               ; preds = %50, %32
  %53 = phi i8* [ %36, %32 ], [ %51, %50 ]
  br label %54

54:                                               ; preds = %52, %20
  %55 = phi i8* [ %25, %20 ], [ %53, %52 ]
  store i8* %55, i8** %6, align 8
  %56 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %57 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %63 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  br label %93

67:                                               ; preds = %54
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SECONDARYSOCKET, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %73 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  br label %91

75:                                               ; preds = %67
  %76 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %77 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %83 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  br label %89

85:                                               ; preds = %75
  %86 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %87 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i32 [ %84, %81 ], [ %88, %85 ]
  br label %91

91:                                               ; preds = %89, %71
  %92 = phi i32 [ %74, %71 ], [ %90, %89 ]
  br label %93

93:                                               ; preds = %91, %61
  %94 = phi i32 [ %66, %61 ], [ %92, %91 ]
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* @TRUE, align 4
  %96 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %97 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %100 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %127 [
    i32 129, label %103
    i32 128, label %103
    i32 131, label %117
    i32 130, label %117
  ]

103:                                              ; preds = %93, %93
  %104 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %105 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %109 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %116 = call i32 @Curl_SOCKS5(i32 %107, i32 %111, i8* %112, i32 %113, i32 %114, %struct.connectdata* %115)
  store i32 %116, i32* %5, align 4
  br label %133

117:                                              ; preds = %93, %93
  %118 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %119 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %126 = call i32 @Curl_SOCKS4(i32 %121, i8* %122, i32 %123, i32 %124, %struct.connectdata* %125)
  store i32 %126, i32* %5, align 4
  br label %133

127:                                              ; preds = %93
  %128 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %129 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @failf(i32 %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %132 = load i32, i32* @CURLE_COULDNT_CONNECT, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %127, %117, %103
  %134 = load i32, i32* @FALSE, align 4
  %135 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %136 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  br label %138

138:                                              ; preds = %133, %2
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @Curl_SOCKS5(i32, i32, i8*, i32, i32, %struct.connectdata*) #1

declare dso_local i32 @Curl_SOCKS4(i32, i8*, i32, i32, %struct.connectdata*) #1

declare dso_local i32 @failf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
