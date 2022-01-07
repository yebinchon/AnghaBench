; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_memory.c_ccv_dense_matrix_new.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_memory.c_ccv_dense_matrix_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@ccv_cache_opt = common dso_local global i64 0, align 8
@CCV_NO_DATA_ALLOC = common dso_local global i32 0, align 4
@ccv_cache = common dso_local global i32 0, align 4
@CCV_GARBAGE = common dso_local global i32 0, align 4
@CCV_MATRIX_DENSE = common dso_local global i32 0, align 4
@CCV_UNMANAGED = common dso_local global i32 0, align 4
@CCV_REUSABLE = common dso_local global i32 0, align 4
@CCV_TENSOR_CPU_MEMORY = common dso_local global i32 0, align 4
@CCV_TENSOR_FORMAT_NHWC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ccv_dense_matrix_new(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* @ccv_cache_opt, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %5
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @CCV_NO_DATA_ALLOC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @ccv_cache_out(i32* @ccv_cache, i64 %29, i64* %13)
  %31 = inttoptr i64 %30 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %12, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load i64, i64* %13, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* @CCV_GARBAGE, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %6, align 8
  br label %136

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %23, %20, %17, %5
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @CCV_NO_DATA_ALLOC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = call i8* @ccmalloc(i32 72)
  %55 = bitcast i8* %54 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %12, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @CCV_GET_CHANNEL(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @CCV_GET_DATA_TYPE(i32 %58)
  %60 = or i32 %57, %59
  %61 = load i32, i32* @CCV_MATRIX_DENSE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @CCV_NO_DATA_ALLOC, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @CCV_GARBAGE, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 12
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  br label %118

74:                                               ; preds = %48
  store i64 80, i64* %14, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i8*, i8** %10, align 8
  br label %85

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @ccv_compute_dense_matrix_size(i32 %80, i32 %81, i32 %82)
  %84 = call i8* @ccmalloc(i32 %83)
  br label %85

85:                                               ; preds = %79, %77
  %86 = phi i8* [ %78, %77 ], [ %84, %79 ]
  %87 = bitcast i8* %86 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %12, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @CCV_GET_CHANNEL(i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @CCV_GET_DATA_TYPE(i32 %90)
  %92 = or i32 %89, %91
  %93 = load i32, i32* @CCV_MATRIX_DENSE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @CCV_GARBAGE, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %85
  %103 = load i32, i32* @CCV_UNMANAGED, align 4
  br label %106

104:                                              ; preds = %85
  %105 = load i32, i32* @CCV_REUSABLE, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %113 = bitcast %struct.TYPE_5__* %112 to i8*
  %114 = getelementptr inbounds i8, i8* %113, i64 80
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 12
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i8* %114, i8** %117, align 8
  br label %118

118:                                              ; preds = %106, %53
  %119 = load i64, i64* %11, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 11
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @CCV_GET_STEP(i32 %128, i32 %129)
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %135, %struct.TYPE_5__** %6, align 8
  br label %136

136:                                              ; preds = %118, %34
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %137
}

declare dso_local i64 @ccv_cache_out(i32*, i64, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @ccmalloc(i32) #1

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local i32 @CCV_GET_DATA_TYPE(i32) #1

declare dso_local i32 @ccv_compute_dense_matrix_size(i32, i32, i32) #1

declare dso_local i32 @CCV_GET_STEP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
