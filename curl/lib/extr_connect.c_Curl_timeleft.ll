; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_connect.c_Curl_timeleft.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_connect.c_Curl_timeleft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.curltime = type { i32 }

@DEFAULT_CONNECT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_timeleft(%struct.Curl_easy* %0, %struct.curltime* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca %struct.curltime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.curltime, align 4
  %11 = alloca %struct.curltime, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store %struct.curltime* %1, %struct.curltime** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @DEFAULT_CONNECT_TIMEOUT, align 4
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  store i32 %18, i32* %9, align 4
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %20 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %32 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, 2
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %30, %27
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %76 [
    i32 1, label %41
    i32 2, label %47
    i32 3, label %53
  ]

41:                                               ; preds = %39
  %42 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %43 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  br label %81

47:                                               ; preds = %39
  %48 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %49 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %9, align 4
  br label %81

53:                                               ; preds = %39
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %55 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %59 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %57, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %65 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %9, align 4
  br label %75

69:                                               ; preds = %53
  %70 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %71 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %69, %63
  br label %81

76:                                               ; preds = %39
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %120

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %75, %47, %41
  %82 = load %struct.curltime*, %struct.curltime** %6, align 8
  %83 = icmp ne %struct.curltime* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = call i32 (...) @Curl_now()
  %86 = getelementptr inbounds %struct.curltime, %struct.curltime* %11, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = bitcast %struct.curltime* %10 to i8*
  %88 = bitcast %struct.curltime* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 4, i1 false)
  store %struct.curltime* %10, %struct.curltime** %6, align 8
  br label %89

89:                                               ; preds = %84, %81
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load %struct.curltime*, %struct.curltime** %6, align 8
  %94 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %95 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.curltime, %struct.curltime* %93, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @Curl_timediff(i32 %99, i32 %97)
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %9, align 4
  br label %114

103:                                              ; preds = %89
  %104 = load %struct.curltime*, %struct.curltime** %6, align 8
  %105 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %106 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.curltime, %struct.curltime* %104, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @Curl_timediff(i32 %110, i32 %108)
  %112 = load i32, i32* %9, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %103, %92
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  store i32 -1, i32* %4, align 4
  br label %120

118:                                              ; preds = %114
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %117, %79
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @Curl_now(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Curl_timediff(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
