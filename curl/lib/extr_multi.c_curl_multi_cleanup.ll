; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_cleanup.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { i32, i32, i32, i32, i32, i32, %struct.Curl_easy*, i64, i64 }
%struct.Curl_easy = type { i32*, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i64, %struct.Curl_easy* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i64, i32* }

@CURLM_RECURSIVE_API_CALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HCACHE_MULTI = common dso_local global i64 0, align 8
@HCACHE_NONE = common dso_local global i64 0, align 8
@CURLM_OK = common dso_local global i32 0, align 4
@CURLM_BAD_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curl_multi_cleanup(%struct.Curl_multi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Curl_multi*, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  store %struct.Curl_multi* %0, %struct.Curl_multi** %3, align 8
  %6 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %7 = call i64 @GOOD_MULTI_HANDLE(%struct.Curl_multi* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %97

9:                                                ; preds = %1
  %10 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %11 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @CURLM_RECURSIVE_API_CALL, align 4
  store i32 %15, i32* %2, align 4
  br label %99

16:                                               ; preds = %9
  %17 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %18 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %17, i32 0, i32 7
  store i64 0, i64* %18, align 8
  %19 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %20 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %19, i32 0, i32 6
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %20, align 8
  store %struct.Curl_easy* %21, %struct.Curl_easy** %4, align 8
  br label %22

22:                                               ; preds = %65, %16
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %24 = icmp ne %struct.Curl_easy* %23, null
  br i1 %24, label %25, label %72

25:                                               ; preds = %22
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %27 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %26, i32 0, i32 5
  %28 = load %struct.Curl_easy*, %struct.Curl_easy** %27, align 8
  store %struct.Curl_easy* %28, %struct.Curl_easy** %5, align 8
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %30 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %25
  %35 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %36 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %41 = load i32, i32* @CURLE_OK, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @multi_done(%struct.Curl_easy* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %34, %25
  %45 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %46 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @HCACHE_MULTI, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %44
  %52 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %53 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %54 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @Curl_hostcache_clean(%struct.Curl_easy* %52, i32* %56)
  %58 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %59 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load i64, i64* @HCACHE_NONE, align 8
  %62 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %63 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %51, %44
  %66 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %67 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  %69 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %70 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  %71 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  store %struct.Curl_easy* %71, %struct.Curl_easy** %4, align 8
  br label %22

72:                                               ; preds = %22
  %73 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %74 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %73, i32 0, i32 4
  %75 = call i32 @Curl_conncache_close_all_connections(i32* %74)
  %76 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %77 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %76, i32 0, i32 5
  %78 = call i32 @Curl_hash_destroy(i32* %77)
  %79 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %80 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %79, i32 0, i32 4
  %81 = call i32 @Curl_conncache_destroy(i32* %80)
  %82 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %83 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %82, i32 0, i32 3
  %84 = call i32 @Curl_llist_destroy(i32* %83, i32* null)
  %85 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %86 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %85, i32 0, i32 2
  %87 = call i32 @Curl_llist_destroy(i32* %86, i32* null)
  %88 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %89 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %88, i32 0, i32 1
  %90 = call i32 @Curl_hash_destroy(i32* %89)
  %91 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %92 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %91, i32 0, i32 0
  %93 = call i32 @Curl_psl_destroy(i32* %92)
  %94 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %95 = call i32 @free(%struct.Curl_multi* %94)
  %96 = load i32, i32* @CURLM_OK, align 4
  store i32 %96, i32* %2, align 4
  br label %99

97:                                               ; preds = %1
  %98 = load i32, i32* @CURLM_BAD_HANDLE, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %72, %14
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i64 @GOOD_MULTI_HANDLE(%struct.Curl_multi*) #1

declare dso_local i32 @multi_done(%struct.Curl_easy*, i32, i32) #1

declare dso_local i32 @Curl_hostcache_clean(%struct.Curl_easy*, i32*) #1

declare dso_local i32 @Curl_conncache_close_all_connections(i32*) #1

declare dso_local i32 @Curl_hash_destroy(i32*) #1

declare dso_local i32 @Curl_conncache_destroy(i32*) #1

declare dso_local i32 @Curl_llist_destroy(i32*, i32*) #1

declare dso_local i32 @Curl_psl_destroy(i32*) #1

declare dso_local i32 @free(%struct.Curl_multi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
