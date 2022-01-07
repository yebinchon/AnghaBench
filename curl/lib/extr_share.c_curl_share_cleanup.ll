; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_share.c_curl_share_cleanup.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_share.c_curl_share_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_share = type { i64, i32, i32 (i32*, i32, i32)*, i32, %struct.Curl_share*, i32, i32, i32, i64, i32 (i32*, i32, i32, i32)* }

@CURLSHE_INVALID = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_SHARE = common dso_local global i32 0, align 4
@CURL_LOCK_ACCESS_SINGLE = common dso_local global i32 0, align 4
@CURLSHE_IN_USE = common dso_local global i32 0, align 4
@CURLSHE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curl_share_cleanup(%struct.Curl_share* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Curl_share*, align 8
  store %struct.Curl_share* %0, %struct.Curl_share** %3, align 8
  %4 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %5 = icmp eq %struct.Curl_share* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @CURLSHE_INVALID, align 4
  store i32 %7, i32* %2, align 4
  br label %78

8:                                                ; preds = %1
  %9 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %10 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %9, i32 0, i32 9
  %11 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %10, align 8
  %12 = icmp ne i32 (i32*, i32, i32, i32)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %15 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %14, i32 0, i32 9
  %16 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %15, align 8
  %17 = load i32, i32* @CURL_LOCK_DATA_SHARE, align 4
  %18 = load i32, i32* @CURL_LOCK_ACCESS_SINGLE, align 4
  %19 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %20 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %16(i32* null, i32 %17, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %13, %8
  %24 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %25 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %30 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %29, i32 0, i32 2
  %31 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %30, align 8
  %32 = icmp ne i32 (i32*, i32, i32)* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %35 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %34, i32 0, i32 2
  %36 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %35, align 8
  %37 = load i32, i32* @CURL_LOCK_DATA_SHARE, align 4
  %38 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %39 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %36(i32* null, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %33, %28
  %43 = load i32, i32* @CURLSHE_IN_USE, align 4
  store i32 %43, i32* %2, align 4
  br label %78

44:                                               ; preds = %23
  %45 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %46 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %45, i32 0, i32 7
  %47 = call i32 @Curl_conncache_close_all_connections(i32* %46)
  %48 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %49 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %48, i32 0, i32 7
  %50 = call i32 @Curl_conncache_destroy(i32* %49)
  %51 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %52 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %51, i32 0, i32 6
  %53 = call i32 @Curl_hash_destroy(i32* %52)
  %54 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %55 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @Curl_cookie_cleanup(i32 %56)
  %58 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %59 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %58, i32 0, i32 3
  %60 = call i32 @Curl_psl_destroy(i32* %59)
  %61 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %62 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %61, i32 0, i32 2
  %63 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %62, align 8
  %64 = icmp ne i32 (i32*, i32, i32)* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %44
  %66 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %67 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %66, i32 0, i32 2
  %68 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %67, align 8
  %69 = load i32, i32* @CURL_LOCK_DATA_SHARE, align 4
  %70 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %71 = getelementptr inbounds %struct.Curl_share, %struct.Curl_share* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %68(i32* null, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %44
  %75 = load %struct.Curl_share*, %struct.Curl_share** %3, align 8
  %76 = call i32 @free(%struct.Curl_share* %75)
  %77 = load i32, i32* @CURLSHE_OK, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %42, %6
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @Curl_conncache_close_all_connections(i32*) #1

declare dso_local i32 @Curl_conncache_destroy(i32*) #1

declare dso_local i32 @Curl_hash_destroy(i32*) #1

declare dso_local i32 @Curl_cookie_cleanup(i32) #1

declare dso_local i32 @Curl_psl_destroy(i32*) #1

declare dso_local i32 @free(%struct.Curl_share*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
