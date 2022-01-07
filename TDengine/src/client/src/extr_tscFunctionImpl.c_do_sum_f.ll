; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_do_sum_f.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_do_sum_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double*, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@TSDB_DATA_TYPE_TINYINT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_SMALLINT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_INT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BIGINT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_FLOAT = common dso_local global i32 0, align 4
@DATA_SET_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @do_sum_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sum_f(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_7__* %9, i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @isNull(i8* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %123

24:                                               ; preds = %16, %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = call i32 @SET_VAL(%struct.TYPE_7__* %25, i32 1, i32 1)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load double*, double** %28, align 8
  store double* %29, double** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TSDB_DATA_TYPE_TINYINT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @GET_INT8_VAL(i8* %36)
  %38 = sitofp i64 %37 to double
  %39 = load double*, double** %6, align 8
  %40 = load double, double* %39, align 8
  %41 = fadd double %40, %38
  store double %41, double* %39, align 8
  br label %118

42:                                               ; preds = %24
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TSDB_DATA_TYPE_SMALLINT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @GET_INT16_VAL(i8* %49)
  %51 = sitofp i64 %50 to double
  %52 = load double*, double** %6, align 8
  %53 = load double, double* %52, align 8
  %54 = fadd double %53, %51
  store double %54, double* %52, align 8
  br label %117

55:                                               ; preds = %42
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @GET_INT32_VAL(i8* %62)
  %64 = sitofp i64 %63 to double
  %65 = load double*, double** %6, align 8
  %66 = load double, double* %65, align 8
  %67 = fadd double %66, %64
  store double %67, double* %65, align 8
  br label %116

68:                                               ; preds = %55
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @TSDB_DATA_TYPE_BIGINT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load i8*, i8** %5, align 8
  %76 = call i64 @GET_INT64_VAL(i8* %75)
  %77 = sitofp i64 %76 to double
  %78 = load double*, double** %6, align 8
  %79 = load double, double* %78, align 8
  %80 = fadd double %79, %77
  store double %80, double* %78, align 8
  br label %115

81:                                               ; preds = %68
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load double*, double** %89, align 8
  store double* %90, double** %7, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = call i64 @GET_DOUBLE_VAL(i8* %91)
  %93 = sitofp i64 %92 to double
  %94 = load double*, double** %7, align 8
  %95 = load double, double* %94, align 8
  %96 = fadd double %95, %93
  store double %96, double* %94, align 8
  br label %114

97:                                               ; preds = %81
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @TSDB_DATA_TYPE_FLOAT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %97
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load double*, double** %105, align 8
  store double* %106, double** %8, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = call i64 @GET_FLOAT_VAL(i8* %107)
  %109 = sitofp i64 %108 to double
  %110 = load double*, double** %8, align 8
  %111 = load double, double* %110, align 8
  %112 = fadd double %111, %109
  store double %112, double* %110, align 8
  br label %113

113:                                              ; preds = %103, %97
  br label %114

114:                                              ; preds = %113, %87
  br label %115

115:                                              ; preds = %114, %74
  br label %116

116:                                              ; preds = %115, %61
  br label %117

117:                                              ; preds = %116, %48
  br label %118

118:                                              ; preds = %117, %35
  %119 = load i32, i32* @DATA_SET_FLAG, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %121 = call %struct.TYPE_8__* @GET_RES_INFO(%struct.TYPE_7__* %120)
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %118, %23
  ret void
}

declare dso_local i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @isNull(i8*, i32) #1

declare dso_local i32 @SET_VAL(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @GET_INT8_VAL(i8*) #1

declare dso_local i64 @GET_INT16_VAL(i8*) #1

declare dso_local i64 @GET_INT32_VAL(i8*) #1

declare dso_local i64 @GET_INT64_VAL(i8*) #1

declare dso_local i64 @GET_DOUBLE_VAL(i8*) #1

declare dso_local i64 @GET_FLOAT_VAL(i8*) #1

declare dso_local %struct.TYPE_8__* @GET_RES_INFO(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
