; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_connect.c_Curl_connecthost.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_connect.c_Curl_connecthost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i64*, i32, %struct.Curl_easy*, %struct.TYPE_7__**, i32 }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }
%struct.Curl_dns_entry = type { %struct.TYPE_7__* }
%struct.curltime = type { i32 }

@CURLE_COULDNT_CONNECT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Connection time-out\00", align 1
@CURLE_OPERATION_TIMEDOUT = common dso_local global i64 0, align 8
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@EXPIRE_HAPPY_EYEBALLS = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_connecthost(%struct.connectdata* %0, %struct.Curl_dns_entry* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca %struct.Curl_dns_entry*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca %struct.curltime, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store %struct.Curl_dns_entry* %1, %struct.Curl_dns_entry** %5, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 2
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  store %struct.Curl_easy* %12, %struct.Curl_easy** %6, align 8
  %13 = call i32 (...) @Curl_now()
  %14 = getelementptr inbounds %struct.curltime, %struct.curltime* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @Curl_timeleft(%struct.Curl_easy* %16, %struct.curltime* %7, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %23 = call i32 @failf(%struct.Curl_easy* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* @CURLE_OPERATION_TIMEDOUT, align 8
  store i64 %24, i64* %3, align 8
  br label %131

25:                                               ; preds = %2
  %26 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %5, align 8
  %27 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = call i32 @Curl_num_addresses(%struct.TYPE_7__* %28)
  %30 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %31 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %5, align 8
  %33 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %36 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %35, i32 0, i32 3
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %37, i64 0
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %38, align 8
  %39 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %40 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %39, i32 0, i32 3
  %41 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %41, i64 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %42, align 8
  %43 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %44 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %45 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 %43, i64* %47, align 8
  %48 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %49 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %50 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  store i64 %48, i64* %52, align 8
  %53 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %54 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %53, i32 0, i32 3
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %55, i64 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = icmp eq %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %25
  %62 = load i32, i32* %9, align 4
  br label %66

63:                                               ; preds = %25
  %64 = load i32, i32* %9, align 4
  %65 = sdiv i32 %64, 2
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i32 [ %62, %61 ], [ %65, %63 ]
  %68 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %69 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %88, %66
  %71 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %72 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %71, i32 0, i32 3
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %73, i64 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = icmp ne %struct.TYPE_7__* %75, null
  br i1 %76, label %77, label %100

77:                                               ; preds = %70
  %78 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %79 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %80 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %79, i32 0, i32 3
  %81 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %81, i64 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = call i64 @singleipconnect(%struct.connectdata* %78, %struct.TYPE_7__* %83, i32 0)
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  br label %100

88:                                               ; preds = %77
  %89 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %90 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %89, i32 0, i32 3
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %91, i64 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %97 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %96, i32 0, i32 3
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %98, i64 0
  store %struct.TYPE_7__* %95, %struct.TYPE_7__** %99, align 8
  br label %70

100:                                              ; preds = %87, %70
  %101 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %102 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load i64, i64* %8, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %112, i64* %8, align 8
  br label %113

113:                                              ; preds = %111, %108
  %114 = load i64, i64* %8, align 8
  store i64 %114, i64* %3, align 8
  br label %131

115:                                              ; preds = %100
  %116 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %117 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %122 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %121, i32 0, i32 2
  %123 = load %struct.Curl_easy*, %struct.Curl_easy** %122, align 8
  %124 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %125 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @EXPIRE_HAPPY_EYEBALLS, align 4
  %129 = call i32 @Curl_expire(%struct.Curl_easy* %123, i32 %127, i32 %128)
  %130 = load i64, i64* @CURLE_OK, align 8
  store i64 %130, i64* %3, align 8
  br label %131

131:                                              ; preds = %115, %113, %21
  %132 = load i64, i64* %3, align 8
  ret i64 %132
}

declare dso_local i32 @Curl_now(...) #1

declare dso_local i32 @Curl_timeleft(%struct.Curl_easy*, %struct.curltime*, i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @Curl_num_addresses(%struct.TYPE_7__*) #1

declare dso_local i64 @singleipconnect(%struct.connectdata*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @Curl_expire(%struct.Curl_easy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
