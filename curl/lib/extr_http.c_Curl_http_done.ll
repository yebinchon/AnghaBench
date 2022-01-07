; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_http_done.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_http_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_10__, i32, i32, %struct.Curl_easy* }
%struct.TYPE_10__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64, i64, i64, %struct.HTTP* }
%struct.HTTP = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@FALSE = common dso_local global i8* null, align 8
@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Empty reply from server\00", align 1
@CURLE_GOT_NOTHING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_http_done(%struct.connectdata* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.HTTP*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 3
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  store %struct.Curl_easy* %12, %struct.Curl_easy** %8, align 8
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %14 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = load %struct.HTTP*, %struct.HTTP** %15, align 8
  store %struct.HTTP* %16, %struct.HTTP** %9, align 8
  %17 = load i8*, i8** @FALSE, align 8
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %19 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i8* %17, i8** %21, align 8
  %22 = load i8*, i8** @FALSE, align 8
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %24 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i8* %22, i8** %26, align 8
  %27 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %28 = call i32 @Curl_unencode_cleanup(%struct.connectdata* %27)
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %30 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %34 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %36 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %40 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.HTTP*, %struct.HTTP** %9, align 8
  %42 = icmp ne %struct.HTTP* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %3
  %44 = load i64, i64* @CURLE_OK, align 8
  store i64 %44, i64* %4, align 8
  br label %102

45:                                               ; preds = %3
  %46 = load %struct.HTTP*, %struct.HTTP** %9, align 8
  %47 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.HTTP*, %struct.HTTP** %9, align 8
  %52 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %51, i32 0, i32 1
  %53 = call i32 @Curl_add_buffer_free(i64* %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @Curl_http2_done(%struct.connectdata* %55, i32 %56)
  %58 = load %struct.HTTP*, %struct.HTTP** %9, align 8
  %59 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %58, i32 0, i32 0
  %60 = call i32 @Curl_mime_cleanpart(i32* %59)
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %4, align 8
  br label %102

65:                                               ; preds = %54
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %100, label %68

68:                                               ; preds = %65
  %69 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %70 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %100, label %74

74:                                               ; preds = %68
  %75 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %76 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %74
  %81 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %82 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %86 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %84, %88
  %90 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %91 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %89, %93
  %95 = icmp sle i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %80
  %97 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %98 = call i32 @failf(%struct.Curl_easy* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %99 = load i64, i64* @CURLE_GOT_NOTHING, align 8
  store i64 %99, i64* %4, align 8
  br label %102

100:                                              ; preds = %80, %74, %68, %65
  %101 = load i64, i64* @CURLE_OK, align 8
  store i64 %101, i64* %4, align 8
  br label %102

102:                                              ; preds = %100, %96, %63, %43
  %103 = load i64, i64* %4, align 8
  ret i64 %103
}

declare dso_local i32 @Curl_unencode_cleanup(%struct.connectdata*) #1

declare dso_local i32 @Curl_add_buffer_free(i64*) #1

declare dso_local i32 @Curl_http2_done(%struct.connectdata*, i32) #1

declare dso_local i32 @Curl_mime_cleanpart(i32*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
