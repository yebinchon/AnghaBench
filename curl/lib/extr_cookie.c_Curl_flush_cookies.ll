; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_cookie.c_Curl_flush_cookies.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_cookie.c_Curl_flush_cookies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32*, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64* }

@STRING_COOKIEJAR = common dso_local global i64 0, align 8
@CURL_LOCK_DATA_COOKIE = common dso_local global i32 0, align 4
@CURL_LOCK_ACCESS_SINGLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"WARNING: failed to save cookies in %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_flush_cookies(%struct.Curl_easy* %0, i32 %1) #0 {
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %6 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* @STRING_COOKIEJAR, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %2
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %15 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %21 = call i32 @Curl_cookie_loadfiles(%struct.Curl_easy* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %24 = load i32, i32* @CURL_LOCK_DATA_COOKIE, align 4
  %25 = load i32, i32* @CURL_LOCK_ACCESS_SINGLE, align 4
  %26 = call i32 @Curl_share_lock(%struct.Curl_easy* %23, i32 %24, i32 %25)
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %28 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %31 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @STRING_COOKIEJAR, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @cookie_output(i32* %29, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %22
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %41 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %42 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @STRING_COOKIEJAR, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @infof(%struct.Curl_easy* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %39, %22
  br label %73

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %55 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %61 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @curl_slist_free_all(i32* %63)
  %65 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %66 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %59, %53, %50
  %69 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %70 = load i32, i32* @CURL_LOCK_DATA_COOKIE, align 4
  %71 = load i32, i32* @CURL_LOCK_ACCESS_SINGLE, align 4
  %72 = call i32 @Curl_share_lock(%struct.Curl_easy* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %49
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %78 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = icmp ne %struct.TYPE_6__* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %83 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %86 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %84, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %81, %76
  %92 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %93 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @Curl_cookie_cleanup(i32* %94)
  %96 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %97 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %91, %81, %73
  %99 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %100 = load i32, i32* @CURL_LOCK_DATA_COOKIE, align 4
  %101 = call i32 @Curl_share_unlock(%struct.Curl_easy* %99, i32 %100)
  ret void
}

declare dso_local i32 @Curl_cookie_loadfiles(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_share_lock(%struct.Curl_easy*, i32, i32) #1

declare dso_local i64 @cookie_output(i32*, i64) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i64) #1

declare dso_local i32 @curl_slist_free_all(i32*) #1

declare dso_local i32 @Curl_cookie_cleanup(i32*) #1

declare dso_local i32 @Curl_share_unlock(%struct.Curl_easy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
