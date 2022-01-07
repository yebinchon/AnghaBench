; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_progress.c_Curl_pgrsUpdate.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_progress.c_Curl_pgrsUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 (i32, i64, i64, i64, i64)*, i32 (i32, double, double, double, double)*, i32 }
%struct.curltime = type { i32 }

@PGRS_HIDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Callback aborted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_pgrsUpdate(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.curltime, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %9 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 0
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  store %struct.Curl_easy* %11, %struct.Curl_easy** %4, align 8
  %12 = call i32 (...) @Curl_now()
  %13 = getelementptr inbounds %struct.curltime, %struct.curltime* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %15 = getelementptr inbounds %struct.curltime, %struct.curltime* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @progress_calc(%struct.connectdata* %14, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %19 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PGRS_HIDE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %122, label %25

25:                                               ; preds = %1
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %27 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (i32, i64, i64, i64, i64)*, i32 (i32, i64, i64, i64, i64)** %28, align 8
  %30 = icmp ne i32 (i32, i64, i64, i64, i64)* %29, null
  br i1 %30, label %31, label %68

31:                                               ; preds = %25
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %33 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %32, i32 1)
  %34 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %35 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (i32, i64, i64, i64, i64)*, i32 (i32, i64, i64, i64, i64)** %36, align 8
  %38 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %39 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %43 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %47 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %51 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %55 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 %37(i32 %41, i64 %45, i64 %49, i64 %53, i64 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %60 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %59, i32 0)
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %31
  %64 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %65 = call i32 @failf(%struct.Curl_easy* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %31
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %123

68:                                               ; preds = %25
  %69 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %70 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32 (i32, double, double, double, double)*, i32 (i32, double, double, double, double)** %71, align 8
  %73 = icmp ne i32 (i32, double, double, double, double)* %72, null
  br i1 %73, label %74, label %115

74:                                               ; preds = %68
  %75 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %76 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %75, i32 1)
  %77 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %78 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32 (i32, double, double, double, double)*, i32 (i32, double, double, double, double)** %79, align 8
  %81 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %82 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %86 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = sitofp i64 %88 to double
  %90 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %91 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = sitofp i64 %93 to double
  %95 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %96 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = sitofp i64 %98 to double
  %100 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %101 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sitofp i64 %103 to double
  %105 = call i32 %80(i32 %84, double %89, double %94, double %99, double %104)
  store i32 %105, i32* %8, align 4
  %106 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %107 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %106, i32 0)
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %74
  %111 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %112 = call i32 @failf(%struct.Curl_easy* %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %74
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %2, align 4
  br label %123

115:                                              ; preds = %68
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %120 = call i32 @progress_meter(%struct.connectdata* %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %1
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %113, %66
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @Curl_now(...) #1

declare dso_local i32 @progress_calc(%struct.connectdata*, i32) #1

declare dso_local i32 @Curl_set_in_callback(%struct.Curl_easy*, i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @progress_meter(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
