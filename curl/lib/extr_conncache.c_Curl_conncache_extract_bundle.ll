; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_extract_bundle.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_extract_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy*, i32 }
%struct.Curl_easy = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.connectbundle = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.curl_llist_element* }
%struct.curl_llist_element = type { %struct.curl_llist_element*, %struct.connectdata* }
%struct.curltime = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"The cache now contains %zu members\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.connectdata* @Curl_conncache_extract_bundle(%struct.Curl_easy* %0, %struct.connectbundle* %1) #0 {
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca %struct.connectbundle*, align 8
  %5 = alloca %struct.curl_llist_element*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.curltime, align 4
  %9 = alloca %struct.connectdata*, align 8
  %10 = alloca %struct.connectdata*, align 8
  %11 = alloca %struct.curltime, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store %struct.connectbundle* %1, %struct.connectbundle** %4, align 8
  store i64 -1, i64* %6, align 8
  store %struct.connectdata* null, %struct.connectdata** %9, align 8
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %13 = call i32 (...) @Curl_now()
  %14 = getelementptr inbounds %struct.curltime, %struct.curltime* %11, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = bitcast %struct.curltime* %8 to i8*
  %16 = bitcast %struct.curltime* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.connectbundle*, %struct.connectbundle** %4, align 8
  %18 = getelementptr inbounds %struct.connectbundle, %struct.connectbundle* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.curl_llist_element*, %struct.curl_llist_element** %19, align 8
  store %struct.curl_llist_element* %20, %struct.curl_llist_element** %5, align 8
  br label %21

21:                                               ; preds = %50, %2
  %22 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %23 = icmp ne %struct.curl_llist_element* %22, null
  br i1 %23, label %24, label %54

24:                                               ; preds = %21
  %25 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %26 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %25, i32 0, i32 1
  %27 = load %struct.connectdata*, %struct.connectdata** %26, align 8
  store %struct.connectdata* %27, %struct.connectdata** %10, align 8
  %28 = load %struct.connectdata*, %struct.connectdata** %10, align 8
  %29 = call i32 @CONN_INUSE(%struct.connectdata* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %24
  %32 = load %struct.connectdata*, %struct.connectdata** %10, align 8
  %33 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %32, i32 0, i32 0
  %34 = load %struct.Curl_easy*, %struct.Curl_easy** %33, align 8
  %35 = icmp ne %struct.Curl_easy* %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %31
  %37 = load %struct.connectdata*, %struct.connectdata** %10, align 8
  %38 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.curltime, %struct.curltime* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @Curl_timediff(i32 %41, i32 %39)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i64, i64* %7, align 8
  store i64 %47, i64* %6, align 8
  %48 = load %struct.connectdata*, %struct.connectdata** %10, align 8
  store %struct.connectdata* %48, %struct.connectdata** %9, align 8
  br label %49

49:                                               ; preds = %46, %36
  br label %50

50:                                               ; preds = %49, %31, %24
  %51 = load %struct.curl_llist_element*, %struct.curl_llist_element** %5, align 8
  %52 = getelementptr inbounds %struct.curl_llist_element, %struct.curl_llist_element* %51, i32 0, i32 0
  %53 = load %struct.curl_llist_element*, %struct.curl_llist_element** %52, align 8
  store %struct.curl_llist_element* %53, %struct.curl_llist_element** %5, align 8
  br label %21

54:                                               ; preds = %21
  %55 = load %struct.connectdata*, %struct.connectdata** %9, align 8
  %56 = icmp ne %struct.connectdata* %55, null
  br i1 %56, label %57, label %80

57:                                               ; preds = %54
  %58 = load %struct.connectbundle*, %struct.connectbundle** %4, align 8
  %59 = load %struct.connectdata*, %struct.connectdata** %9, align 8
  %60 = call i32 @bundle_remove_conn(%struct.connectbundle* %58, %struct.connectdata* %59)
  %61 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %62 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %69 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %70 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @infof(%struct.Curl_easy* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = call i32 @DEBUGF(i32 %75)
  %77 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %78 = load %struct.connectdata*, %struct.connectdata** %9, align 8
  %79 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %78, i32 0, i32 0
  store %struct.Curl_easy* %77, %struct.Curl_easy** %79, align 8
  br label %80

80:                                               ; preds = %57, %54
  %81 = load %struct.connectdata*, %struct.connectdata** %9, align 8
  ret %struct.connectdata* %81
}

declare dso_local i32 @Curl_now(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CONN_INUSE(%struct.connectdata*) #1

declare dso_local i64 @Curl_timediff(i32, i32) #1

declare dso_local i32 @bundle_remove_conn(%struct.connectbundle*, %struct.connectdata*) #1

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
