; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_spread_function_f.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_spread_function_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i64, i8* }
%struct.TYPE_10__ = type { double, double, i8* }

@TSDB_DATA_TYPE_TINYINT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_SMALLINT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_INT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BIGINT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_TIMESTAMP = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_FLOAT = common dso_local global i32 0, align 4
@DATA_SET_FLAG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @spread_function_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spread_function_f(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca double, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_12__* %9, i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @isNull(i8* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %135

24:                                               ; preds = %16, %2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = call i32 @SET_VAL(%struct.TYPE_12__* %25, i32 1, i32 1)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = call %struct.TYPE_11__* @GET_RES_INFO(%struct.TYPE_12__* %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %6, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TSDB_DATA_TYPE_TINYINT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i8*, i8** %5, align 8
  %39 = call double @GET_INT8_VAL(i8* %38)
  store double %39, double* %8, align 8
  br label %96

40:                                               ; preds = %24
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TSDB_DATA_TYPE_SMALLINT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** %5, align 8
  %48 = call double @GET_INT16_VAL(i8* %47)
  store double %48, double* %8, align 8
  br label %95

49:                                               ; preds = %40
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = call double @GET_INT32_VAL(i8* %56)
  store double %57, double* %8, align 8
  br label %94

58:                                               ; preds = %49
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TSDB_DATA_TYPE_BIGINT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TSDB_DATA_TYPE_TIMESTAMP, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64, %58
  %71 = load i8*, i8** %5, align 8
  %72 = call double @GET_INT64_VAL(i8* %71)
  store double %72, double* %8, align 8
  br label %93

73:                                               ; preds = %64
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i8*, i8** %5, align 8
  %81 = call double @GET_DOUBLE_VAL(i8* %80)
  store double %81, double* %8, align 8
  br label %92

82:                                               ; preds = %73
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @TSDB_DATA_TYPE_FLOAT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i8*, i8** %5, align 8
  %90 = call double @GET_FLOAT_VAL(i8* %89)
  store double %90, double* %8, align 8
  br label %91

91:                                               ; preds = %88, %82
  br label %92

92:                                               ; preds = %91, %79
  br label %93

93:                                               ; preds = %92, %70
  br label %94

94:                                               ; preds = %93, %55
  br label %95

95:                                               ; preds = %94, %46
  br label %96

96:                                               ; preds = %95, %37
  %97 = load double, double* %8, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load double, double* %99, align 8
  %101 = fcmp ogt double %97, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load double, double* %8, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store double %103, double* %105, align 8
  br label %106

106:                                              ; preds = %102, %96
  %107 = load double, double* %8, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load double, double* %109, align 8
  %111 = fcmp olt double %107, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load double, double* %8, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  store double %113, double* %115, align 8
  br label %116

116:                                              ; preds = %112, %106
  %117 = load i8*, i8** @DATA_SET_FLAG, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** @DATA_SET_FLAG, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %116
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = call i32 @memcpy(i32 %130, %struct.TYPE_10__* %133, i32 24)
  br label %135

135:                                              ; preds = %23, %127, %116
  ret void
}

declare dso_local i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @isNull(i8*, i32) #1

declare dso_local i32 @SET_VAL(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @GET_RES_INFO(%struct.TYPE_12__*) #1

declare dso_local double @GET_INT8_VAL(i8*) #1

declare dso_local double @GET_INT16_VAL(i8*) #1

declare dso_local double @GET_INT32_VAL(i8*) #1

declare dso_local double @GET_INT64_VAL(i8*) #1

declare dso_local double @GET_DOUBLE_VAL(i8*) #1

declare dso_local double @GET_FLOAT_VAL(i8*) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
