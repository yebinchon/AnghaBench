; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_addons.c_ccv_cnnp_dataframe_add_aux.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_addons.c_ccv_cnnp_dataframe_add_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@CCV_TENSOR_CPU_MEMORY = common dso_local global i64 0, align 8
@CCV_STREAM_CONTEXT_GPU = common dso_local global i32 0, align 4
@_ccv_cnnp_tensor_new = common dso_local global i32 0, align 4
@_ccv_cnnp_tensor_deinit = common dso_local global i32 0, align 4
@ccfree = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccv_cnnp_dataframe_add_aux(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store i32* %0, i32** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @CCV_TENSOR_GET_MEMORY(i32 %9)
  %11 = load i64, i64* @CCV_TENSOR_CPU_MEMORY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @CCV_STREAM_CONTEXT_GPU, align 4
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i32 [ 0, %13 ], [ %15, %14 ]
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @CCV_STREAM_CONTEXT_GPU, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CCV_TENSOR_GET_DEVICE_ID(i32 %24)
  %26 = call i32 @CCV_STREAM_SET_DEVICE_ID(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %16
  %28 = call i64 @ccmalloc(i32 4)
  %29 = inttoptr i64 %28 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %6, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = bitcast %struct.TYPE_4__* %31 to i8*
  %33 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @_ccv_cnnp_tensor_new, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @_ccv_cnnp_tensor_deinit, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = load i64, i64* @ccfree, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ccv_cnnp_dataframe_add(i32* %34, i32 %35, i32 %36, i32 %37, %struct.TYPE_4__* %38, i32 %40)
  ret i32 %41
}

declare dso_local i64 @CCV_TENSOR_GET_MEMORY(i32) #1

declare dso_local i32 @CCV_STREAM_SET_DEVICE_ID(i32, i32) #1

declare dso_local i32 @CCV_TENSOR_GET_DEVICE_ID(i32) #1

declare dso_local i64 @ccmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ccv_cnnp_dataframe_add(i32*, i32, i32, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
