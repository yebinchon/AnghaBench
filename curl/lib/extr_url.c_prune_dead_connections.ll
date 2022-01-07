; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_prune_dead_connections.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_prune_dead_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.curltime }
%struct.curltime = type { i32 }
%struct.prunedead = type { i32*, %struct.Curl_easy* }

@call_extract_if_dead = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Curl_easy*)* @prune_dead_connections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_dead_connections(%struct.Curl_easy* %0) #0 {
  %2 = alloca %struct.Curl_easy*, align 8
  %3 = alloca %struct.curltime, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.prunedead, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %2, align 8
  %6 = call i32 (...) @Curl_now()
  %7 = getelementptr inbounds %struct.curltime, %struct.curltime* %3, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %9 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.curltime, %struct.curltime* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.curltime, %struct.curltime* %12, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @Curl_timediff(i32 %14, i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp sge i64 %18, 1000
  br i1 %19, label %20, label %47

20:                                               ; preds = %1
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %22 = getelementptr inbounds %struct.prunedead, %struct.prunedead* %5, i32 0, i32 1
  store %struct.Curl_easy* %21, %struct.Curl_easy** %22, align 8
  %23 = getelementptr inbounds %struct.prunedead, %struct.prunedead* %5, i32 0, i32 0
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %33, %20
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %27 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* @call_extract_if_dead, align 4
  %31 = call i64 @Curl_conncache_foreach(%struct.Curl_easy* %25, %struct.TYPE_4__* %29, %struct.prunedead* %5, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %35 = getelementptr inbounds %struct.prunedead, %struct.prunedead* %5, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @Curl_disconnect(%struct.Curl_easy* %34, i32* %36, i32 %37)
  br label %24

39:                                               ; preds = %24
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %41 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = bitcast %struct.curltime* %44 to i8*
  %46 = bitcast %struct.curltime* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  br label %47

47:                                               ; preds = %39, %1
  ret void
}

declare dso_local i32 @Curl_now(...) #1

declare dso_local i64 @Curl_timediff(i32, i32) #1

declare dso_local i64 @Curl_conncache_foreach(%struct.Curl_easy*, %struct.TYPE_4__*, %struct.prunedead*, i32) #1

declare dso_local i32 @Curl_disconnect(%struct.Curl_easy*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
