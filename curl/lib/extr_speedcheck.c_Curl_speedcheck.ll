; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_speedcheck.c_Curl_speedcheck.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_speedcheck.c_Curl_speedcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { %struct.curltime }
%struct.curltime = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [77 x i8] c"Operation too slow. Less than %ld bytes/sec transferred the last %ld seconds\00", align 1
@CURLE_OPERATION_TIMEDOUT = common dso_local global i32 0, align 4
@EXPIRE_SPEEDCHECK = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_speedcheck(%struct.Curl_easy* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.curltime, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.curltime, %struct.curltime* %4, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %9 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %78

13:                                               ; preds = %2
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %15 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %78

19:                                               ; preds = %13
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %23, %27
  br i1 %28, label %29, label %72

29:                                               ; preds = %19
  %30 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %31 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.curltime, %struct.curltime* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %38 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = bitcast %struct.curltime* %39 to i8*
  %41 = bitcast %struct.curltime* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  br label %71

42:                                               ; preds = %29
  %43 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %44 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.curltime, %struct.curltime* %4, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.curltime, %struct.curltime* %45, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @Curl_timediff(i64 %47, i64 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %53 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %55, 1000
  %57 = icmp sge i32 %51, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %42
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %60 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %61 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %65 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @failf(%struct.Curl_easy* %59, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %63, i32 %67)
  %69 = load i32, i32* @CURLE_OPERATION_TIMEDOUT, align 4
  store i32 %69, i32* %3, align 4
  br label %90

70:                                               ; preds = %42
  br label %71

71:                                               ; preds = %70, %36
  br label %77

72:                                               ; preds = %19
  %73 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %74 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.curltime, %struct.curltime* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %71
  br label %78

78:                                               ; preds = %77, %13, %2
  %79 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %80 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %86 = load i32, i32* @EXPIRE_SPEEDCHECK, align 4
  %87 = call i32 @Curl_expire(%struct.Curl_easy* %85, i32 1000, i32 %86)
  br label %88

88:                                               ; preds = %84, %78
  %89 = load i32, i32* @CURLE_OK, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %58
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Curl_timediff(i64, i64) #2

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i64, i32) #2

declare dso_local i32 @Curl_expire(%struct.Curl_easy*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
