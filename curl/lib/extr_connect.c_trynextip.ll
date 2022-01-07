; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_connect.c_trynextip.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_connect.c_trynextip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i64*, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32, %struct.TYPE_3__* }

@CURLE_COULDNT_CONNECT = common dso_local global i64 0, align 8
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@FIRSTSOCKET = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32, i32)* @trynextip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @trynextip(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = xor i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %23 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %24 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 %22, i64* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @FIRSTSOCKET, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %116

32:                                               ; preds = %3
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %10, align 8
  %33 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %33, i32* %11, align 4
  %34 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %35 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %36, i64 %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %61

42:                                               ; preds = %32
  %43 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %44 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %11, align 4
  %52 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %53 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %54, i64 %56
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %10, align 8
  br label %61

61:                                               ; preds = %42, %32
  br label %62

62:                                               ; preds = %102, %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %64 = icmp ne %struct.TYPE_3__* %63, null
  br i1 %64, label %65, label %115

65:                                               ; preds = %62
  %66 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %67 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %68, i64 %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = icmp ne %struct.TYPE_3__* %72, null
  br i1 %73, label %74, label %91

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %86, %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %77 = icmp ne %struct.TYPE_3__* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %81, %82
  br label %84

84:                                               ; preds = %78, %75
  %85 = phi i1 [ false, %75 ], [ %83, %78 ]
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  store %struct.TYPE_3__* %89, %struct.TYPE_3__** %10, align 8
  br label %75

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %65
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %93 = icmp ne %struct.TYPE_3__* %92, null
  br i1 %93, label %94, label %114

94:                                               ; preds = %91
  %95 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i64 @singleipconnect(%struct.connectdata* %95, %struct.TYPE_3__* %96, i32 %97)
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  store %struct.TYPE_3__* %105, %struct.TYPE_3__** %10, align 8
  br label %62

106:                                              ; preds = %94
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %108 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %109 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %110, i64 %112
  store %struct.TYPE_3__* %107, %struct.TYPE_3__** %113, align 8
  br label %114

114:                                              ; preds = %106, %91
  br label %115

115:                                              ; preds = %114, %62
  br label %116

116:                                              ; preds = %115, %3
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %122 = load i64, i64* %9, align 8
  %123 = call i32 @Curl_closesocket(%struct.connectdata* %121, i64 %122)
  br label %124

124:                                              ; preds = %120, %116
  %125 = load i64, i64* %8, align 8
  ret i64 %125
}

declare dso_local i64 @singleipconnect(%struct.connectdata*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @Curl_closesocket(%struct.connectdata*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
