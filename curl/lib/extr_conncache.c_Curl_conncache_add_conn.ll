; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_add_conn.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_add_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conncache = type { i32, i32 }
%struct.connectdata = type { i64, %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.connectbundle = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@HASHKEY_SIZE = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Added connection %ld. The cache now contains %zu members\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_conncache_add_conn(%struct.conncache* %0, %struct.connectdata* %1) #0 {
  %3 = alloca %struct.conncache*, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.connectbundle*, align 8
  %7 = alloca %struct.connectbundle*, align 8
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.conncache* %0, %struct.conncache** %3, align 8
  store %struct.connectdata* %1, %struct.connectdata** %4, align 8
  %13 = load i64, i64* @CURLE_OK, align 8
  store i64 %13, i64* %5, align 8
  store %struct.connectbundle* null, %struct.connectbundle** %7, align 8
  %14 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 1
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  store %struct.Curl_easy* %16, %struct.Curl_easy** %8, align 8
  %17 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %19 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.connectbundle* @Curl_conncache_find_bundle(%struct.connectdata* %17, i32 %21, i32* null)
  store %struct.connectbundle* %22, %struct.connectbundle** %6, align 8
  %23 = load %struct.connectbundle*, %struct.connectbundle** %6, align 8
  %24 = icmp ne %struct.connectbundle* %23, null
  br i1 %24, label %57, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @HASHKEY_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %30 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %31 = call i64 @bundle_create(%struct.Curl_easy* %30, %struct.connectbundle** %7)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 2, i32* %12, align 4
  br label %53

35:                                               ; preds = %25
  %36 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %37 = trunc i64 %27 to i32
  %38 = call i32 @hashkey(%struct.connectdata* %36, i8* %29, i32 %37, i32* null)
  %39 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %40 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.connectbundle*, %struct.connectbundle** %7, align 8
  %44 = call i32 @conncache_add_bundle(i32 %42, i8* %29, %struct.connectbundle* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %35
  %48 = load %struct.connectbundle*, %struct.connectbundle** %7, align 8
  %49 = call i32 @bundle_destroy(%struct.connectbundle* %48)
  %50 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %50, i64* %5, align 8
  store i32 2, i32* %12, align 4
  br label %53

51:                                               ; preds = %35
  %52 = load %struct.connectbundle*, %struct.connectbundle** %7, align 8
  store %struct.connectbundle* %52, %struct.connectbundle** %6, align 8
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %47, %34, %51
  %54 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %12, align 4
  switch i32 %55, label %87 [
    i32 0, label %56
    i32 2, label %83
  ]

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.connectbundle*, %struct.connectbundle** %6, align 8
  %59 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %60 = call i32 @bundle_add_conn(%struct.connectbundle* %58, %struct.connectdata* %59)
  %61 = load %struct.conncache*, %struct.conncache** %3, align 8
  %62 = getelementptr inbounds %struct.conncache, %struct.conncache* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = sext i32 %63 to i64
  %66 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %67 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.conncache*, %struct.conncache** %3, align 8
  %69 = getelementptr inbounds %struct.conncache, %struct.conncache* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %73 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %72, i32 0, i32 1
  %74 = load %struct.Curl_easy*, %struct.Curl_easy** %73, align 8
  %75 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %76 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.conncache*, %struct.conncache** %3, align 8
  %79 = getelementptr inbounds %struct.conncache, %struct.conncache* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @infof(%struct.Curl_easy* %74, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %77, i32 %80)
  %82 = call i32 @DEBUGF(i32 %81)
  br label %83

83:                                               ; preds = %57, %53
  %84 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %85 = call i32 @CONN_UNLOCK(%struct.Curl_easy* %84)
  %86 = load i64, i64* %5, align 8
  ret i64 %86

87:                                               ; preds = %53
  unreachable
}

declare dso_local %struct.connectbundle* @Curl_conncache_find_bundle(%struct.connectdata*, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @bundle_create(%struct.Curl_easy*, %struct.connectbundle**) #1

declare dso_local i32 @hashkey(%struct.connectdata*, i8*, i32, i32*) #1

declare dso_local i32 @conncache_add_bundle(i32, i8*, %struct.connectbundle*) #1

declare dso_local i32 @bundle_destroy(%struct.connectbundle*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @bundle_add_conn(%struct.connectbundle*, %struct.connectdata*) #1

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i64, i32) #1

declare dso_local i32 @CONN_UNLOCK(%struct.Curl_easy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
