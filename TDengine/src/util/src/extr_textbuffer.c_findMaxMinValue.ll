; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_findMaxMinValue.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_findMaxMinValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { double, double, double, double, i64, i64 }

@DBL_MAX = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, double*, double*)* @findMaxMinValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findMaxMinValue(%struct.TYPE_7__* %0, double* %1, double* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i64, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i64, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %18 = load double, double* @DBL_MAX, align 8
  %19 = load double*, double** %6, align 8
  store double %18, double* %19, align 8
  %20 = load double, double* @DBL_MAX, align 8
  %21 = fneg double %20
  %22 = load double*, double** %5, align 8
  store double %21, double* %22, align 8
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %173, %3
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %176

29:                                               ; preds = %23
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %33
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %8, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %173

40:                                               ; preds = %29
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %172 [
    i32 130, label %44
    i32 129, label %44
    i32 128, label %44
    i32 132, label %86
    i32 131, label %86
    i32 133, label %128
  ]

44:                                               ; preds = %40, %40, %40
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %82, %44
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %45
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  store double %58, double* %10, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load double, double* %64, align 8
  store double %65, double* %11, align 8
  %66 = load double*, double** %6, align 8
  %67 = load double, double* %66, align 8
  %68 = load double, double* %10, align 8
  %69 = fcmp ogt double %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load double, double* %10, align 8
  %72 = load double*, double** %6, align 8
  store double %71, double* %72, align 8
  br label %73

73:                                               ; preds = %70, %51
  %74 = load double*, double** %5, align 8
  %75 = load double, double* %74, align 8
  %76 = load double, double* %11, align 8
  %77 = fcmp olt double %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load double, double* %11, align 8
  %80 = load double*, double** %5, align 8
  store double %79, double* %80, align 8
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %9, align 8
  br label %45

85:                                               ; preds = %45
  br label %172

86:                                               ; preds = %40, %40
  store i64 0, i64* %12, align 8
  br label %87

87:                                               ; preds = %124, %86
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %127

93:                                               ; preds = %87
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load double, double* %99, align 8
  store double %100, double* %13, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load double, double* %106, align 8
  store double %107, double* %14, align 8
  %108 = load double*, double** %6, align 8
  %109 = load double, double* %108, align 8
  %110 = load double, double* %13, align 8
  %111 = fcmp ogt double %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %93
  %113 = load double, double* %13, align 8
  %114 = load double*, double** %6, align 8
  store double %113, double* %114, align 8
  br label %115

115:                                              ; preds = %112, %93
  %116 = load double*, double** %5, align 8
  %117 = load double, double* %116, align 8
  %118 = load double, double* %14, align 8
  %119 = fcmp olt double %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load double, double* %14, align 8
  %122 = load double*, double** %5, align 8
  store double %121, double* %122, align 8
  br label %123

123:                                              ; preds = %120, %115
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %12, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %12, align 8
  br label %87

127:                                              ; preds = %87
  br label %172

128:                                              ; preds = %40
  store i64 0, i64* %15, align 8
  br label %129

129:                                              ; preds = %168, %128
  %130 = load i64, i64* %15, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ult i64 %130, %133
  br i1 %134, label %135, label %171

135:                                              ; preds = %129
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load i64, i64* %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = sitofp i64 %142 to double
  store double %143, double* %16, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load i64, i64* %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = sitofp i64 %150 to double
  store double %151, double* %17, align 8
  %152 = load double*, double** %6, align 8
  %153 = load double, double* %152, align 8
  %154 = load double, double* %16, align 8
  %155 = fcmp ogt double %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %135
  %157 = load double, double* %16, align 8
  %158 = load double*, double** %6, align 8
  store double %157, double* %158, align 8
  br label %159

159:                                              ; preds = %156, %135
  %160 = load double*, double** %5, align 8
  %161 = load double, double* %160, align 8
  %162 = load double, double* %17, align 8
  %163 = fcmp olt double %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load double, double* %17, align 8
  %166 = load double*, double** %5, align 8
  store double %165, double* %166, align 8
  br label %167

167:                                              ; preds = %164, %159
  br label %168

168:                                              ; preds = %167
  %169 = load i64, i64* %15, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %15, align 8
  br label %129

171:                                              ; preds = %129
  br label %172

172:                                              ; preds = %40, %171, %127, %85
  br label %173

173:                                              ; preds = %172, %39
  %174 = load i64, i64* %7, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %7, align 8
  br label %23

176:                                              ; preds = %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
