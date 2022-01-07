; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_cmd.c_ccv_nnc_cmd_enforce_inplace.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_cmd.c_ccv_nnc_cmd_enforce_inplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32, i32, i32, i32)* }
%struct.TYPE_5__ = type { i64 }

@CCV_NNC_NOOP = common dso_local global i64 0, align 8
@CCV_NNC_CUSTOM_FORWARD = common dso_local global i64 0, align 8
@CCV_NNC_CUSTOM_BACKWARD = common dso_local global i64 0, align 8
@CCV_NNC_GRAPH_FORWARD = common dso_local global i64 0, align 8
@CCV_NNC_GRAPH_BACKWARD = common dso_local global i64 0, align 8
@init_map = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccv_nnc_cmd_enforce_inplace(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i64 %0, i64* %14, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CCV_NNC_NOOP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %39, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CCV_NNC_CUSTOM_FORWARD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CCV_NNC_CUSTOM_BACKWARD, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CCV_NNC_GRAPH_FORWARD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CCV_NNC_GRAPH_BACKWARD, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29, %24, %19, %5
  store i32 0, i32* %6, align 4
  br label %63

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @_ccv_nnc_cmd_ph(i64 %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @init_map, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = bitcast %struct.TYPE_6__* %13 to i8*
  %50 = bitcast %struct.TYPE_6__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %52 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %51, align 8
  %53 = icmp ne i32 (i32, i32, i32, i32)* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %56 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 %56(i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %63

62:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %54, %39
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @_ccv_nnc_cmd_ph(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
