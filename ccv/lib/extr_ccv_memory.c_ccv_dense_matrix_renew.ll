; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_memory.c_ccv_dense_matrix_renew.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_memory.c_ccv_dense_matrix_renew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64 }

@CCV_EOF_SIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ccv_dense_matrix_renew(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %56

15:                                               ; preds = %6
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @CCV_GET_DATA_TYPE(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @CCV_GET_CHANNEL(i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @CCV_GET_CHANNEL(i32 %40)
  %42 = icmp eq i32 %39, %41
  br label %43

43:                                               ; preds = %35, %27, %21, %15
  %44 = phi i1 [ false, %27 ], [ false, %21 ], [ false, %15 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @CCV_GET_DATA_TYPE(i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @CCV_GET_CHANNEL(i32 %53)
  %55 = or i32 %50, %54
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %43, %6
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = bitcast i32* %11 to i8*
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* @CCV_EOF_SIGN, align 4
  %63 = call i64 @ccv_cache_generate_signature(i8* %60, i32 4, i64 %61, i32 %62)
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %59, %56
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = icmp eq %struct.TYPE_5__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i64, i64* %12, align 8
  %72 = call %struct.TYPE_5__* @ccv_dense_matrix_new(i32 %68, i32 %69, i32 %70, i32 0, i64 %71)
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %7, align 8
  br label %77

73:                                               ; preds = %64
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %67
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %78
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CCV_GET_DATA_TYPE(i32) #1

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local i64 @ccv_cache_generate_signature(i8*, i32, i64, i32) #1

declare dso_local %struct.TYPE_5__* @ccv_dense_matrix_new(i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
