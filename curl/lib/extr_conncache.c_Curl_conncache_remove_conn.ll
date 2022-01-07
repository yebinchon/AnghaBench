; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_remove_conn.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_remove_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.conncache* }
%struct.conncache = type { i32 }
%struct.connectdata = type { i32*, %struct.connectbundle* }
%struct.connectbundle = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"The cache now contains %zu members\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_conncache_remove_conn(%struct.Curl_easy* %0, %struct.connectdata* %1, i32 %2) #0 {
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.connectbundle*, align 8
  %8 = alloca %struct.conncache*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store %struct.connectdata* %1, %struct.connectdata** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 1
  %11 = load %struct.connectbundle*, %struct.connectbundle** %10, align 8
  store %struct.connectbundle* %11, %struct.connectbundle** %7, align 8
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %13 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.conncache*, %struct.conncache** %14, align 8
  store %struct.conncache* %15, %struct.conncache** %8, align 8
  %16 = load %struct.connectbundle*, %struct.connectbundle** %7, align 8
  %17 = icmp ne %struct.connectbundle* %16, null
  br i1 %17, label %18, label %61

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %23 = call i32 @CONN_LOCK(%struct.Curl_easy* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.connectbundle*, %struct.connectbundle** %7, align 8
  %26 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %27 = call i32 @bundle_remove_conn(%struct.connectbundle* %25, %struct.connectdata* %26)
  %28 = load %struct.connectbundle*, %struct.connectbundle** %7, align 8
  %29 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.conncache*, %struct.conncache** %8, align 8
  %34 = load %struct.connectbundle*, %struct.connectbundle** %7, align 8
  %35 = call i32 @conncache_remove_bundle(%struct.conncache* %33, %struct.connectbundle* %34)
  br label %36

36:                                               ; preds = %32, %24
  %37 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %38 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %37, i32 0, i32 1
  store %struct.connectbundle* null, %struct.connectbundle** %38, align 8
  %39 = load %struct.conncache*, %struct.conncache** %8, align 8
  %40 = icmp ne %struct.conncache* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.conncache*, %struct.conncache** %8, align 8
  %43 = getelementptr inbounds %struct.conncache, %struct.conncache* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %47 = load %struct.conncache*, %struct.conncache** %8, align 8
  %48 = getelementptr inbounds %struct.conncache, %struct.conncache* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @infof(%struct.Curl_easy* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = call i32 @DEBUGF(i32 %50)
  br label %52

52:                                               ; preds = %41, %36
  %53 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %54 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %59 = call i32 @CONN_UNLOCK(%struct.Curl_easy* %58)
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %60, %3
  ret void
}

declare dso_local i32 @CONN_LOCK(%struct.Curl_easy*) #1

declare dso_local i32 @bundle_remove_conn(%struct.connectbundle*, %struct.connectdata*) #1

declare dso_local i32 @conncache_remove_bundle(%struct.conncache*, %struct.connectbundle*) #1

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @CONN_UNLOCK(%struct.Curl_easy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
