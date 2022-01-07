; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_getinfo.c_getinfo_double.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_getinfo.c_getinfo_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@PGRS_DL_SIZE_KNOWN = common dso_local global i32 0, align 4
@PGRS_UL_SIZE_KNOWN = common dso_local global i32 0, align 4
@CURLE_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, i32, double*)* @getinfo_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getinfo_double(%struct.Curl_easy* %0, i32 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %122 [
    i32 128, label %9
    i32 136, label %16
    i32 139, label %23
    i32 140, label %30
    i32 135, label %37
    i32 129, label %44
    i32 132, label %51
    i32 133, label %58
    i32 131, label %65
    i32 130, label %72
    i32 138, label %79
    i32 137, label %97
    i32 134, label %115
  ]

9:                                                ; preds = %3
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %11 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 13
  %13 = load i32, i32* %12, align 4
  %14 = call double @DOUBLE_SECS(i32 %13)
  %15 = load double*, double** %7, align 8
  store double %14, double* %15, align 8
  br label %124

16:                                               ; preds = %3
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 8
  %21 = call double @DOUBLE_SECS(i32 %20)
  %22 = load double*, double** %7, align 8
  store double %21, double* %22, align 8
  br label %124

23:                                               ; preds = %3
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = call double @DOUBLE_SECS(i32 %27)
  %29 = load double*, double** %7, align 8
  store double %28, double* %29, align 8
  br label %124

30:                                               ; preds = %3
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %32 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = call double @DOUBLE_SECS(i32 %34)
  %36 = load double*, double** %7, align 8
  store double %35, double* %36, align 8
  br label %124

37:                                               ; preds = %3
  %38 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %39 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = call double @DOUBLE_SECS(i32 %41)
  %43 = load double*, double** %7, align 8
  store double %42, double* %43, align 8
  br label %124

44:                                               ; preds = %3
  %45 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %46 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = call double @DOUBLE_SECS(i32 %48)
  %50 = load double*, double** %7, align 8
  store double %49, double* %50, align 8
  br label %124

51:                                               ; preds = %3
  %52 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %53 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = sitofp i64 %55 to double
  %57 = load double*, double** %7, align 8
  store double %56, double* %57, align 8
  br label %124

58:                                               ; preds = %3
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %60 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = sitofp i64 %62 to double
  %64 = load double*, double** %7, align 8
  store double %63, double* %64, align 8
  br label %124

65:                                               ; preds = %3
  %66 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %67 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = sitofp i64 %69 to double
  %71 = load double*, double** %7, align 8
  store double %70, double* %71, align 8
  br label %124

72:                                               ; preds = %3
  %73 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %74 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = sitofp i64 %76 to double
  %78 = load double*, double** %7, align 8
  store double %77, double* %78, align 8
  br label %124

79:                                               ; preds = %3
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %81 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @PGRS_DL_SIZE_KNOWN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %89 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to double
  br label %94

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %87
  %95 = phi double [ %92, %87 ], [ -1.000000e+00, %93 ]
  %96 = load double*, double** %7, align 8
  store double %95, double* %96, align 8
  br label %124

97:                                               ; preds = %3
  %98 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %99 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @PGRS_UL_SIZE_KNOWN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %107 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = sitofp i64 %109 to double
  br label %112

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111, %105
  %113 = phi double [ %110, %105 ], [ -1.000000e+00, %111 ]
  %114 = load double*, double** %7, align 8
  store double %113, double* %114, align 8
  br label %124

115:                                              ; preds = %3
  %116 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %117 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call double @DOUBLE_SECS(i32 %119)
  %121 = load double*, double** %7, align 8
  store double %120, double* %121, align 8
  br label %124

122:                                              ; preds = %3
  %123 = load i32, i32* @CURLE_UNKNOWN_OPTION, align 4
  store i32 %123, i32* %4, align 4
  br label %126

124:                                              ; preds = %115, %112, %94, %72, %65, %58, %51, %44, %37, %30, %23, %16, %9
  %125 = load i32, i32* @CURLE_OK, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local double @DOUBLE_SECS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
