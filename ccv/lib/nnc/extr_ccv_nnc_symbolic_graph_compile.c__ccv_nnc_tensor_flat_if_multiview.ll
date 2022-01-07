; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c__ccv_nnc_tensor_flat_if_multiview.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c__ccv_nnc_tensor_flat_if_multiview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @_ccv_nnc_tensor_flat_if_multiview to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ccv_nnc_tensor_flat_if_multiview(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i8* @_ccv_nnc_tensor_metadata_get(i32* %14, i32 %15)
  %17 = bitcast i8* %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %6, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = call i32 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_7__* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %3, align 4
  br label %78

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %29, %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = call i32 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_7__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = bitcast %struct.TYPE_7__* %30 to i32*
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i64* @CCV_NNC_MULTIVIEW_DATA(i32* %33)
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i8* @_ccv_nnc_tensor_metadata_get(i32* %32, i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %6, align 8
  br label %25

40:                                               ; preds = %25
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = bitcast %struct.TYPE_7__* %9 to i8*
  %43 = bitcast %struct.TYPE_7__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @_ccv_nnc_tensor_metadata_pos_new(i32* %44, i32 16)
  store i32 %45, i32* %10, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i8* @_ccv_nnc_tensor_metadata_get(i32* %46, i32 %47)
  %49 = bitcast i8* %48 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %11, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call { i64, i64 } @ccv_nnc_tensor(i32 %53, i32 %55, i32 0)
  %57 = bitcast %struct.TYPE_7__* %12 to { i64, i64 }*
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 0
  %59 = extractvalue { i64, i64 } %56, 0
  store i64 %59, i64* %58, align 8
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 1
  %61 = extractvalue { i64, i64 } %56, 1
  store i64 %61, i64* %60, align 8
  %62 = bitcast %struct.TYPE_7__* %50 to i8*
  %63 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 16, i1 false)
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i8* @_ccv_nnc_tensor_metadata_get(i32* %64, i32 %65)
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** %13, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to %struct.TYPE_7__*
  %76 = call i32 @ccv_nnc_tensor_synchronize_to_multiview(i32* %72, %struct.TYPE_7__* %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %40, %22
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i8* @_ccv_nnc_tensor_metadata_get(i32*, i32) #1

declare dso_local i32 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_7__*) #1

declare dso_local i64* @CCV_NNC_MULTIVIEW_DATA(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_ccv_nnc_tensor_metadata_pos_new(i32*, i32) #1

declare dso_local { i64, i64 } @ccv_nnc_tensor(i32, i32, i32) #1

declare dso_local i32 @ccv_nnc_tensor_synchronize_to_multiview(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
