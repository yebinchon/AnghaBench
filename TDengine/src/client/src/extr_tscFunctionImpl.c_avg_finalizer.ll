; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_avg_finalizer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_avg_finalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_9__ = type { double, double }

@SECONDARY_STAGE_MERGE = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BINARY = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_TINYINT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @avg_finalizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avg_finalizer(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = call %struct.TYPE_7__* @GET_RES_INFO(%struct.TYPE_8__* %5)
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SECONDARY_STAGE_MERGE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @GET_INT64_VAL(i64 %22)
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %12
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @setNull(i64 %28, i32 %31, i32 %34)
  br label %103

36:                                               ; preds = %12
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to double*
  %41 = load double, double* %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to double*
  %46 = load double, double* %45, align 8
  %47 = fdiv double %41, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to double*
  store double %47, double* %51, align 8
  br label %99

52:                                               ; preds = %1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TSDB_DATA_TYPE_TINYINT, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %63 = icmp sle i64 %61, %62
  br label %64

64:                                               ; preds = %58, %52
  %65 = phi i1 [ false, %52 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %4, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load double, double* %73, align 8
  %75 = fcmp oeq double %74, 0.000000e+00
  br i1 %75, label %76, label %87

76:                                               ; preds = %64
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @setNull(i64 %79, i32 %82, i32 %85)
  br label %103

87:                                               ; preds = %64
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load double, double* %89, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load double, double* %92, align 8
  %94 = fdiv double %90, %93
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to double*
  store double %94, double* %98, align 8
  br label %99

99:                                               ; preds = %87, %36
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %101 = call %struct.TYPE_7__* @GET_RES_INFO(%struct.TYPE_8__* %100)
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %99, %76, %25
  ret void
}

declare dso_local %struct.TYPE_7__* @GET_RES_INFO(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @GET_INT64_VAL(i64) #1

declare dso_local i32 @setNull(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
