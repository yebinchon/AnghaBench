; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_return_conn.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_return_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Connection cache is full, closing the oldest one.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_conncache_return_conn(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.connectdata*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %6 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 1
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  store %struct.Curl_easy* %8, %struct.Curl_easy** %3, align 8
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %10 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 4
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %24 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %22, %15
  %29 = phi i32 [ %21, %15 ], [ %27, %22 ]
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %4, align 8
  store %struct.connectdata* null, %struct.connectdata** %5, align 8
  %31 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %32 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %31, i32 0, i32 1
  store %struct.Curl_easy* null, %struct.Curl_easy** %32, align 8
  %33 = call i32 (...) @Curl_now()
  %34 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %35 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %28
  %39 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %40 = call i64 @Curl_conncache_size(%struct.Curl_easy* %39)
  %41 = load i64, i64* %4, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %45 = call i32 @infof(%struct.Curl_easy* %44, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %47 = call %struct.connectdata* @Curl_conncache_extract_oldest(%struct.Curl_easy* %46)
  store %struct.connectdata* %47, %struct.connectdata** %5, align 8
  %48 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %49 = icmp ne %struct.connectdata* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %52 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @Curl_disconnect(%struct.Curl_easy* %51, %struct.connectdata* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %43
  br label %56

56:                                               ; preds = %55, %38, %28
  %57 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %58 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %59 = icmp eq %struct.connectdata* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @FALSE, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @TRUE, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  ret i32 %65
}

declare dso_local i32 @Curl_now(...) #1

declare dso_local i64 @Curl_conncache_size(%struct.Curl_easy*) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local %struct.connectdata* @Curl_conncache_extract_oldest(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_disconnect(%struct.Curl_easy*, %struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
