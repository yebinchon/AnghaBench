; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_single_getsock.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_single_getsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i64, i64, %struct.TYPE_3__*, %struct.Curl_easy* }
%struct.TYPE_3__ = type { {}* }
%struct.Curl_easy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GETSOCK_BLANK = common dso_local global i32 0, align 4
@KEEP_RECVBITS = common dso_local global i32 0, align 4
@KEEP_RECV = common dso_local global i32 0, align 4
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@KEEP_SENDBITS = common dso_local global i32 0, align 4
@KEEP_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_single_getsock(%struct.connectdata* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 3
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  store %struct.Curl_easy* %11, %struct.Curl_easy** %6, align 8
  %12 = load i32, i32* @GETSOCK_BLANK, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.connectdata*, i64*)**
  %18 = load i32 (%struct.connectdata*, i64*)*, i32 (%struct.connectdata*, i64*)** %17, align 8
  %19 = icmp ne i32 (%struct.connectdata*, i64*)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %22 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.connectdata*, i64*)**
  %26 = load i32 (%struct.connectdata*, i64*)*, i32 (%struct.connectdata*, i64*)** %25, align 8
  %27 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = call i32 %26(%struct.connectdata* %27, i64* %28)
  store i32 %29, i32* %3, align 4
  br label %108

30:                                               ; preds = %2
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %32 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @KEEP_RECVBITS, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @KEEP_RECV, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %30
  %40 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %41 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @DEBUGASSERT(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @GETSOCK_READSOCK(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %52 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 %53, i64* %57, align 8
  br label %58

58:                                               ; preds = %39, %30
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %60 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @KEEP_SENDBITS, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @KEEP_SEND, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %106

67:                                               ; preds = %58
  %68 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %69 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %72 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @GETSOCK_BLANK, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %75, %67
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @GETSOCK_BLANK, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %79
  %87 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %88 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %91 = icmp ne i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @DEBUGASSERT(i32 %92)
  %94 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %95 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 %96, i64* %100, align 8
  br label %101

101:                                              ; preds = %86, %75
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @GETSOCK_WRITESOCK(i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %101, %58
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %20
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i32 @GETSOCK_READSOCK(i32) #1

declare dso_local i32 @GETSOCK_WRITESOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
