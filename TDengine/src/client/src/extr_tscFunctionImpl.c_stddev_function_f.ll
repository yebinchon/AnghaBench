; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_stddev_function_f.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_stddev_function_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, double, i32 }

@.str = private unnamed_addr constant [41 x i8] c"stddev function not support data type:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @stddev_function_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stddev_function_f(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca double, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = call %struct.TYPE_11__* @GET_RES_INFO(%struct.TYPE_12__* %9)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @avg_function_f(%struct.TYPE_12__* %19, i32 %20)
  br label %125

22:                                               ; preds = %2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load double, double* %24, align 8
  store double %25, double* %7, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_12__* %26, i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @isNull(i8* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %125

41:                                               ; preds = %33, %22
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %117 [
    i32 130, label %45
    i32 131, label %57
    i32 132, label %69
    i32 133, label %81
    i32 129, label %93
    i32 128, label %105
  ]

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @GET_INT32_VAL(i8* %46)
  %48 = sitofp i32 %47 to double
  %49 = load double, double* %7, align 8
  %50 = fsub double %48, %49
  %51 = fptosi double %50 to i32
  %52 = call i32 @POW2(i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %122

57:                                               ; preds = %41
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @GET_FLOAT_VAL(i8* %58)
  %60 = sitofp i32 %59 to double
  %61 = load double, double* %7, align 8
  %62 = fsub double %60, %61
  %63 = fptosi double %62 to i32
  %64 = call i32 @POW2(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %122

69:                                               ; preds = %41
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @GET_DOUBLE_VAL(i8* %70)
  %72 = sitofp i32 %71 to double
  %73 = load double, double* %7, align 8
  %74 = fsub double %72, %73
  %75 = fptosi double %74 to i32
  %76 = call i32 @POW2(i32 %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %122

81:                                               ; preds = %41
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @GET_INT64_VAL(i8* %82)
  %84 = sitofp i32 %83 to double
  %85 = load double, double* %7, align 8
  %86 = fsub double %84, %85
  %87 = fptosi double %86 to i32
  %88 = call i32 @POW2(i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %122

93:                                               ; preds = %41
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @GET_INT16_VAL(i8* %94)
  %96 = sitofp i32 %95 to double
  %97 = load double, double* %7, align 8
  %98 = fsub double %96, %97
  %99 = fptosi double %98 to i32
  %100 = call i32 @POW2(i32 %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %122

105:                                              ; preds = %41
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @GET_INT8_VAL(i8* %106)
  %108 = sitofp i32 %107 to double
  %109 = load double, double* %7, align 8
  %110 = fsub double %108, %109
  %111 = fptosi double %110 to i32
  %112 = call i32 @POW2(i32 %111)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %122

117:                                              ; preds = %41
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @pError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %117, %105, %93, %81, %69, %57, %45
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %124 = call i32 @SET_VAL(%struct.TYPE_12__* %123, i32 1, i32 1)
  br label %125

125:                                              ; preds = %40, %122, %18
  ret void
}

declare dso_local %struct.TYPE_11__* @GET_RES_INFO(%struct.TYPE_12__*) #1

declare dso_local i32 @avg_function_f(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @isNull(i8*, i32) #1

declare dso_local i32 @POW2(i32) #1

declare dso_local i32 @GET_INT32_VAL(i8*) #1

declare dso_local i32 @GET_FLOAT_VAL(i8*) #1

declare dso_local i32 @GET_DOUBLE_VAL(i8*) #1

declare dso_local i32 @GET_INT64_VAL(i8*) #1

declare dso_local i32 @GET_INT16_VAL(i8*) #1

declare dso_local i32 @GET_INT8_VAL(i8*) #1

declare dso_local i32 @pError(i8*, i32) #1

declare dso_local i32 @SET_VAL(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
