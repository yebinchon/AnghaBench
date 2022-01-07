; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_dynamic_graph.c_ccv_nnc_tensor_variable_exchange_new.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_dynamic_graph.c_ccv_nnc_tensor_variable_exchange_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.ccv_nnc_tensor_variable_s = type { i64, i32, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@CCV_NNC_NO_TENSOR_SYMBOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ccv_nnc_tensor_variable_s* @ccv_nnc_tensor_variable_exchange_new(%struct.TYPE_9__* %0, %struct.ccv_nnc_tensor_variable_s* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.ccv_nnc_tensor_variable_s*, align 8
  %5 = alloca %struct.ccv_nnc_tensor_variable_s, align 8
  %6 = alloca %struct.ccv_nnc_tensor_variable_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.ccv_nnc_tensor_variable_s* %1, %struct.ccv_nnc_tensor_variable_s** %4, align 8
  %9 = load %struct.ccv_nnc_tensor_variable_s*, %struct.ccv_nnc_tensor_variable_s** %4, align 8
  %10 = bitcast %struct.ccv_nnc_tensor_variable_s* %5 to i8*
  %11 = bitcast %struct.ccv_nnc_tensor_variable_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 40, i1 false)
  %12 = getelementptr inbounds %struct.ccv_nnc_tensor_variable_s, %struct.ccv_nnc_tensor_variable_s* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ccv_nnc_tensor_variable_s, %struct.ccv_nnc_tensor_variable_s* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i64 @ccv_array_get(i32 %19, i64 %22)
  %24 = inttoptr i64 %23 to %struct.ccv_nnc_tensor_variable_s**
  %25 = load %struct.ccv_nnc_tensor_variable_s*, %struct.ccv_nnc_tensor_variable_s** %24, align 8
  %26 = getelementptr inbounds %struct.ccv_nnc_tensor_variable_s, %struct.ccv_nnc_tensor_variable_s* %5, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.ccv_nnc_tensor_variable_s, %struct.ccv_nnc_tensor_variable_s* %5, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.ccv_nnc_tensor_variable_s, %struct.ccv_nnc_tensor_variable_s* %5, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.ccv_nnc_tensor_variable_s* @ccv_nnc_tensor_variable_alias_new(%struct.TYPE_9__* %16, %struct.ccv_nnc_tensor_variable_s* %25, i32 %27, i32 %29, i32 %31)
  store %struct.ccv_nnc_tensor_variable_s* %32, %struct.ccv_nnc_tensor_variable_s** %6, align 8
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.ccv_nnc_tensor_variable_s, %struct.ccv_nnc_tensor_variable_s* %5, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.ccv_nnc_tensor_variable_s* @ccv_nnc_tensor_variable_new(%struct.TYPE_9__* %34, i32 %36)
  store %struct.ccv_nnc_tensor_variable_s* %37, %struct.ccv_nnc_tensor_variable_s** %6, align 8
  br label %38

38:                                               ; preds = %33, %15
  %39 = load %struct.ccv_nnc_tensor_variable_s*, %struct.ccv_nnc_tensor_variable_s** %4, align 8
  %40 = load %struct.ccv_nnc_tensor_variable_s*, %struct.ccv_nnc_tensor_variable_s** %6, align 8
  %41 = bitcast %struct.ccv_nnc_tensor_variable_s* %39 to i8*
  %42 = bitcast %struct.ccv_nnc_tensor_variable_s* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 40, i1 false)
  %43 = load %struct.ccv_nnc_tensor_variable_s*, %struct.ccv_nnc_tensor_variable_s** %6, align 8
  %44 = bitcast %struct.ccv_nnc_tensor_variable_s* %43 to i8*
  %45 = bitcast %struct.ccv_nnc_tensor_variable_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 40, i1 false)
  %46 = load %struct.ccv_nnc_tensor_variable_s*, %struct.ccv_nnc_tensor_variable_s** %6, align 8
  %47 = getelementptr inbounds %struct.ccv_nnc_tensor_variable_s, %struct.ccv_nnc_tensor_variable_s* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %7, align 4
  %49 = load %struct.ccv_nnc_tensor_variable_s*, %struct.ccv_nnc_tensor_variable_s** %4, align 8
  %50 = getelementptr inbounds %struct.ccv_nnc_tensor_variable_s, %struct.ccv_nnc_tensor_variable_s* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ccv_nnc_tensor_variable_s*, %struct.ccv_nnc_tensor_variable_s** %6, align 8
  %53 = getelementptr inbounds %struct.ccv_nnc_tensor_variable_s, %struct.ccv_nnc_tensor_variable_s* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ccv_nnc_tensor_variable_s*, %struct.ccv_nnc_tensor_variable_s** %6, align 8
  %55 = getelementptr inbounds %struct.ccv_nnc_tensor_variable_s, %struct.ccv_nnc_tensor_variable_s* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CCV_NNC_NO_TENSOR_SYMBOL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %38
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ccv_nnc_tensor_variable_s*, %struct.ccv_nnc_tensor_variable_s** %6, align 8
  %65 = getelementptr inbounds %struct.ccv_nnc_tensor_variable_s, %struct.ccv_nnc_tensor_variable_s* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @ccv_array_get(i32 %63, i64 %67)
  %69 = inttoptr i64 %68 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %8, align 8
  %70 = load %struct.ccv_nnc_tensor_variable_s*, %struct.ccv_nnc_tensor_variable_s** %6, align 8
  %71 = getelementptr inbounds %struct.ccv_nnc_tensor_variable_s, %struct.ccv_nnc_tensor_variable_s* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %60, %38
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.ccv_nnc_tensor_variable_s*, %struct.ccv_nnc_tensor_variable_s** %4, align 8
  %78 = getelementptr inbounds %struct.ccv_nnc_tensor_variable_s, %struct.ccv_nnc_tensor_variable_s* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ccv_nnc_tensor_variable_s*, %struct.ccv_nnc_tensor_variable_s** %6, align 8
  ret %struct.ccv_nnc_tensor_variable_s* %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.ccv_nnc_tensor_variable_s* @ccv_nnc_tensor_variable_alias_new(%struct.TYPE_9__*, %struct.ccv_nnc_tensor_variable_s*, i32, i32, i32) #2

declare dso_local i64 @ccv_array_get(i32, i64) #2

declare dso_local %struct.ccv_nnc_tensor_variable_s* @ccv_nnc_tensor_variable_new(%struct.TYPE_9__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
