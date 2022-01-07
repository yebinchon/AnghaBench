; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_leastsquares_finalizer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_leastsquares_finalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { double, double** }

@.str = private unnamed_addr constant [11 x i8] c"(%lf, %lf)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @leastsquares_finalizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leastsquares_finalizer(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca [3 x double]*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = call %struct.TYPE_8__* @GET_RES_INFO(%struct.TYPE_9__* %6)
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = fcmp oeq double %13, 0.000000e+00
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @setNull(i32 %18, i32 %21, i32 %24)
  br label %140

26:                                               ; preds = %1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load double**, double*** %28, align 8
  %30 = bitcast double** %29 to [3 x double]*
  store [3 x double]* %30, [3 x double]** %5, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = load [3 x double]*, [3 x double]** %5, align 8
  %35 = getelementptr inbounds [3 x double], [3 x double]* %34, i64 1
  %36 = getelementptr inbounds [3 x double], [3 x double]* %35, i64 0, i64 1
  store double %33, double* %36, align 8
  %37 = load [3 x double]*, [3 x double]** %5, align 8
  %38 = getelementptr inbounds [3 x double], [3 x double]* %37, i64 0
  %39 = getelementptr inbounds [3 x double], [3 x double]* %38, i64 0, i64 1
  %40 = load double, double* %39, align 8
  %41 = load [3 x double]*, [3 x double]** %5, align 8
  %42 = getelementptr inbounds [3 x double], [3 x double]* %41, i64 1
  %43 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 0, i64 0
  store double %40, double* %43, align 8
  %44 = load [3 x double]*, [3 x double]** %5, align 8
  %45 = getelementptr inbounds [3 x double], [3 x double]* %44, i64 1
  %46 = getelementptr inbounds [3 x double], [3 x double]* %45, i64 0, i64 0
  %47 = load double, double* %46, align 8
  %48 = load [3 x double]*, [3 x double]** %5, align 8
  %49 = getelementptr inbounds [3 x double], [3 x double]* %48, i64 0
  %50 = getelementptr inbounds [3 x double], [3 x double]* %49, i64 0, i64 1
  %51 = load double, double* %50, align 8
  %52 = load [3 x double]*, [3 x double]** %5, align 8
  %53 = getelementptr inbounds [3 x double], [3 x double]* %52, i64 1
  %54 = getelementptr inbounds [3 x double], [3 x double]* %53, i64 0, i64 1
  %55 = load double, double* %54, align 8
  %56 = fdiv double %51, %55
  %57 = fmul double %47, %56
  %58 = load [3 x double]*, [3 x double]** %5, align 8
  %59 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 0
  %60 = getelementptr inbounds [3 x double], [3 x double]* %59, i64 0, i64 0
  %61 = load double, double* %60, align 8
  %62 = fsub double %61, %57
  store double %62, double* %60, align 8
  %63 = load [3 x double]*, [3 x double]** %5, align 8
  %64 = getelementptr inbounds [3 x double], [3 x double]* %63, i64 1
  %65 = getelementptr inbounds [3 x double], [3 x double]* %64, i64 0, i64 2
  %66 = load double, double* %65, align 8
  %67 = load [3 x double]*, [3 x double]** %5, align 8
  %68 = getelementptr inbounds [3 x double], [3 x double]* %67, i64 0
  %69 = getelementptr inbounds [3 x double], [3 x double]* %68, i64 0, i64 1
  %70 = load double, double* %69, align 8
  %71 = load [3 x double]*, [3 x double]** %5, align 8
  %72 = getelementptr inbounds [3 x double], [3 x double]* %71, i64 1
  %73 = getelementptr inbounds [3 x double], [3 x double]* %72, i64 0, i64 1
  %74 = load double, double* %73, align 8
  %75 = fdiv double %70, %74
  %76 = fmul double %66, %75
  %77 = load [3 x double]*, [3 x double]** %5, align 8
  %78 = getelementptr inbounds [3 x double], [3 x double]* %77, i64 0
  %79 = getelementptr inbounds [3 x double], [3 x double]* %78, i64 0, i64 2
  %80 = load double, double* %79, align 8
  %81 = fsub double %80, %76
  store double %81, double* %79, align 8
  %82 = load [3 x double]*, [3 x double]** %5, align 8
  %83 = getelementptr inbounds [3 x double], [3 x double]* %82, i64 0
  %84 = getelementptr inbounds [3 x double], [3 x double]* %83, i64 0, i64 1
  store double 0.000000e+00, double* %84, align 8
  %85 = load [3 x double]*, [3 x double]** %5, align 8
  %86 = getelementptr inbounds [3 x double], [3 x double]* %85, i64 0
  %87 = getelementptr inbounds [3 x double], [3 x double]* %86, i64 0, i64 2
  %88 = load double, double* %87, align 8
  %89 = load [3 x double]*, [3 x double]** %5, align 8
  %90 = getelementptr inbounds [3 x double], [3 x double]* %89, i64 1
  %91 = getelementptr inbounds [3 x double], [3 x double]* %90, i64 0, i64 0
  %92 = load double, double* %91, align 8
  %93 = load [3 x double]*, [3 x double]** %5, align 8
  %94 = getelementptr inbounds [3 x double], [3 x double]* %93, i64 0
  %95 = getelementptr inbounds [3 x double], [3 x double]* %94, i64 0, i64 0
  %96 = load double, double* %95, align 8
  %97 = fdiv double %92, %96
  %98 = fmul double %88, %97
  %99 = load [3 x double]*, [3 x double]** %5, align 8
  %100 = getelementptr inbounds [3 x double], [3 x double]* %99, i64 1
  %101 = getelementptr inbounds [3 x double], [3 x double]* %100, i64 0, i64 2
  %102 = load double, double* %101, align 8
  %103 = fsub double %102, %98
  store double %103, double* %101, align 8
  %104 = load [3 x double]*, [3 x double]** %5, align 8
  %105 = getelementptr inbounds [3 x double], [3 x double]* %104, i64 1
  %106 = getelementptr inbounds [3 x double], [3 x double]* %105, i64 0, i64 0
  store double 0.000000e+00, double* %106, align 8
  %107 = load [3 x double]*, [3 x double]** %5, align 8
  %108 = getelementptr inbounds [3 x double], [3 x double]* %107, i64 0
  %109 = getelementptr inbounds [3 x double], [3 x double]* %108, i64 0, i64 0
  %110 = load double, double* %109, align 8
  %111 = load [3 x double]*, [3 x double]** %5, align 8
  %112 = getelementptr inbounds [3 x double], [3 x double]* %111, i64 0
  %113 = getelementptr inbounds [3 x double], [3 x double]* %112, i64 0, i64 2
  %114 = load double, double* %113, align 8
  %115 = fdiv double %114, %110
  store double %115, double* %113, align 8
  %116 = load [3 x double]*, [3 x double]** %5, align 8
  %117 = getelementptr inbounds [3 x double], [3 x double]* %116, i64 1
  %118 = getelementptr inbounds [3 x double], [3 x double]* %117, i64 0, i64 1
  %119 = load double, double* %118, align 8
  %120 = load [3 x double]*, [3 x double]** %5, align 8
  %121 = getelementptr inbounds [3 x double], [3 x double]* %120, i64 1
  %122 = getelementptr inbounds [3 x double], [3 x double]* %121, i64 0, i64 2
  %123 = load double, double* %122, align 8
  %124 = fdiv double %123, %119
  store double %124, double* %122, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load [3 x double]*, [3 x double]** %5, align 8
  %129 = getelementptr inbounds [3 x double], [3 x double]* %128, i64 0
  %130 = getelementptr inbounds [3 x double], [3 x double]* %129, i64 0, i64 2
  %131 = load double, double* %130, align 8
  %132 = load [3 x double]*, [3 x double]** %5, align 8
  %133 = getelementptr inbounds [3 x double], [3 x double]* %132, i64 1
  %134 = getelementptr inbounds [3 x double], [3 x double]* %133, i64 0, i64 2
  %135 = load double, double* %134, align 8
  %136 = call i32 @sprintf(i32 %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), double %131, double %135)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %138 = call %struct.TYPE_8__* @GET_RES_INFO(%struct.TYPE_9__* %137)
  %139 = call i32 @resetResultInfo(%struct.TYPE_8__* %138)
  br label %140

140:                                              ; preds = %26, %15
  ret void
}

declare dso_local %struct.TYPE_8__* @GET_RES_INFO(%struct.TYPE_9__*) #1

declare dso_local i32 @setNull(i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, double, double) #1

declare dso_local i32 @resetResultInfo(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
