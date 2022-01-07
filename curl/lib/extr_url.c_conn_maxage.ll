; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_conn_maxage.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_conn_maxage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.connectdata = type { i32, i32 }
%struct.curltime = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Too old connection (%ld seconds), disconnect it\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, %struct.connectdata*, i32)* @conn_maxage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conn_maxage(%struct.Curl_easy* %0, %struct.connectdata* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.curltime, align 4
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca %struct.connectdata*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.curltime, %struct.curltime* %5, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %6, align 8
  store %struct.connectdata* %1, %struct.connectdata** %7, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %3
  %15 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.curltime, %struct.curltime* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @Curl_timediff(i32 %19, i32 %17)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sdiv i32 %21, 1000
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %23, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %14
  %30 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @infof(%struct.Curl_easy* %30, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %29
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @Curl_timediff(i32, i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
