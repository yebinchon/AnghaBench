; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_extract_if_dead.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_extract_if_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, i32*, %struct.Curl_easy*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.connectdata*, i32)* }
%struct.Curl_easy = type { i32 }
%struct.curltime = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@CONNCHECK_ISDEAD = common dso_local global i32 0, align 4
@CONNRESULT_DEAD = common dso_local global i32 0, align 4
@FIRSTSOCKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Connection %ld seems to be dead!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, %struct.Curl_easy*)* @extract_if_dead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_if_dead(%struct.connectdata* %0, %struct.Curl_easy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.curltime, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Curl_easy*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store %struct.Curl_easy* %1, %struct.Curl_easy** %5, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %11 = call i32 @CONN_INUSE(%struct.connectdata* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %81, label %13

13:                                               ; preds = %2
  %14 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 2
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  %17 = icmp ne %struct.Curl_easy* %16, null
  br i1 %17, label %81, label %18

18:                                               ; preds = %13
  %19 = call i32 (...) @Curl_now()
  %20 = getelementptr inbounds %struct.curltime, %struct.curltime* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %22 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %23 = getelementptr inbounds %struct.curltime, %struct.curltime* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @conn_maxage(%struct.Curl_easy* %21, %struct.connectdata* %22, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %6, align 4
  br label %66

29:                                               ; preds = %18
  %30 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %31 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.connectdata*, i32)*, i32 (%struct.connectdata*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.connectdata*, i32)* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %38 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %37, i32 0, i32 2
  %39 = load %struct.Curl_easy*, %struct.Curl_easy** %38, align 8
  store %struct.Curl_easy* %39, %struct.Curl_easy** %9, align 8
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %41 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %42 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %41, i32 0, i32 2
  store %struct.Curl_easy* %40, %struct.Curl_easy** %42, align 8
  %43 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %44 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.connectdata*, i32)*, i32 (%struct.connectdata*, i32)** %46, align 8
  %48 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %49 = load i32, i32* @CONNCHECK_ISDEAD, align 4
  %50 = call i32 %47(%struct.connectdata* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %52 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %53 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %52, i32 0, i32 2
  store %struct.Curl_easy* %51, %struct.Curl_easy** %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @CONNRESULT_DEAD, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %6, align 4
  br label %65

57:                                               ; preds = %29
  %58 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %59 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @FIRSTSOCKET, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SocketIsDead(i32 %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %57, %36
  br label %66

66:                                               ; preds = %65, %27
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %71 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %72 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @infof(%struct.Curl_easy* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %76 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %77 = load i32, i32* @FALSE, align 4
  %78 = call i32 @Curl_conncache_remove_conn(%struct.Curl_easy* %75, %struct.connectdata* %76, i32 %77)
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %3, align 4
  br label %83

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80, %13, %2
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %69
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @CONN_INUSE(%struct.connectdata*) #1

declare dso_local i32 @Curl_now(...) #1

declare dso_local i64 @conn_maxage(%struct.Curl_easy*, %struct.connectdata*, i32) #1

declare dso_local i32 @SocketIsDead(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @Curl_conncache_remove_conn(%struct.Curl_easy*, %struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
