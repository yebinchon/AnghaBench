; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_memory.c_ccv_matrix_free.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_memory.c_ccv_matrix_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32, i64, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32 }

@CCV_UNMANAGED = common dso_local global i32 0, align 4
@CCV_MATRIX_DENSE = common dso_local global i32 0, align 4
@ccv_cache_opt = common dso_local global i32 0, align 4
@CCV_REUSABLE = common dso_local global i32 0, align 4
@CCV_NO_DATA_ALLOC = common dso_local global i32 0, align 4
@CCV_8U = common dso_local global i64 0, align 8
@CCV_32S = common dso_local global i64 0, align 8
@CCV_32F = common dso_local global i64 0, align 8
@CCV_64S = common dso_local global i64 0, align 8
@CCV_64F = common dso_local global i64 0, align 8
@ccv_cache = common dso_local global i32 0, align 4
@CCV_MATRIX_SPARSE = common dso_local global i32 0, align 4
@CCV_MATRIX_CSR = common dso_local global i32 0, align 4
@CCV_MATRIX_CSC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_matrix_free(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @CCV_UNMANAGED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @CCV_MATRIX_DENSE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %107

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %4, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @ccv_cache_opt, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CCV_REUSABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CCV_NO_DATA_ALLOC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41, %36, %29, %22
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = call i32 @ccfree(%struct.TYPE_6__* %49)
  br label %106

51:                                               ; preds = %41
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @CCV_GET_DATA_TYPE(i32 %54)
  %56 = load i64, i64* @CCV_8U, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %86, label %58

58:                                               ; preds = %51
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @CCV_GET_DATA_TYPE(i32 %61)
  %63 = load i64, i64* @CCV_32S, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %86, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @CCV_GET_DATA_TYPE(i32 %68)
  %70 = load i64, i64* @CCV_32F, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %86, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @CCV_GET_DATA_TYPE(i32 %75)
  %77 = load i64, i64* @CCV_64S, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @CCV_GET_DATA_TYPE(i32 %82)
  %84 = load i64, i64* @CCV_64F, align 8
  %85 = icmp eq i64 %83, %84
  br label %86

86:                                               ; preds = %79, %72, %65, %58, %51
  %87 = phi i1 [ true, %72 ], [ true, %65 ], [ true, %58 ], [ true, %51 ], [ %85, %79 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @ccv_compute_dense_matrix_size(i32 %92, i32 %95, i32 %98)
  store i64 %99, i64* %5, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @ccv_cache_put(i32* @ccv_cache, i64 %102, %struct.TYPE_6__* %103, i64 %104, i32 0)
  br label %106

106:                                              ; preds = %86, %48
  br label %175

107:                                              ; preds = %1
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @CCV_MATRIX_SPARSE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %156

112:                                              ; preds = %107
  %113 = load i32*, i32** %2, align 8
  %114 = bitcast i32* %113 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %142, %112
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %145

121:                                              ; preds = %115
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 6
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %141

131:                                              ; preds = %121
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 6
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = call i32 @ccfree(%struct.TYPE_6__* %139)
  br label %141

141:                                              ; preds = %131, %121
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %115

145:                                              ; preds = %115
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 6
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = call i32 @ccfree(%struct.TYPE_6__* %148)
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 5
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = call i32 @ccfree(%struct.TYPE_6__* %152)
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %155 = call i32 @ccfree(%struct.TYPE_6__* %154)
  br label %174

156:                                              ; preds = %107
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* @CCV_MATRIX_CSR, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %3, align 4
  %163 = load i32, i32* @CCV_MATRIX_CSC, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %161, %156
  %167 = load i32*, i32** %2, align 8
  %168 = bitcast i32* %167 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %168, %struct.TYPE_6__** %8, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 4
  store i64 0, i64* %170, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %172 = call i32 @ccfree(%struct.TYPE_6__* %171)
  br label %173

173:                                              ; preds = %166, %161
  br label %174

174:                                              ; preds = %173, %145
  br label %175

175:                                              ; preds = %174, %106
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccfree(%struct.TYPE_6__*) #1

declare dso_local i64 @CCV_GET_DATA_TYPE(i32) #1

declare dso_local i64 @ccv_compute_dense_matrix_size(i32, i32, i32) #1

declare dso_local i32 @ccv_cache_put(i32*, i64, %struct.TYPE_6__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
