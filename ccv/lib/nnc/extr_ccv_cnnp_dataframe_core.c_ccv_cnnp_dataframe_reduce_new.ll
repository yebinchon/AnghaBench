; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_core.c_ccv_cnnp_dataframe_reduce_new.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_core.c_ccv_cnnp_dataframe_reduce_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i32, i32, i64, i32*, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32, i32 }

@_ccv_cnnp_reducer_deinit = common dso_local global i32 0, align 4
@_ccv_cnnp_reducer_data_deinit = common dso_local global i32 0, align 4
@_ccv_cnnp_reducer_enum = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ccv_cnnp_dataframe_reduce_new(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp sgt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %12, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 8, %23
  %25 = add i64 48, %24
  %26 = trunc i64 %25 to i32
  %27 = call i64 @ccmalloc(i32 %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %15, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %53 = load i32, i32* @_ccv_cnnp_reducer_deinit, align 4
  store i32 %53, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %7
  %60 = load i32, i32* @_ccv_cnnp_reducer_data_deinit, align 4
  br label %62

61:                                               ; preds = %7
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  store i32 %63, i32* %56, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %65 = load i32, i32* @_ccv_cnnp_reducer_enum, align 4
  store i32 %65, i32* %64, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @ccv_cnnp_dataframe_row_count(i32* %66)
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %12, align 4
  %72 = sdiv i32 %70, %71
  %73 = call i32* @ccv_cnnp_dataframe_new(%struct.TYPE_5__* %16, i32 1, i32 %72)
  ret i32* %73
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32* @ccv_cnnp_dataframe_new(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ccv_cnnp_dataframe_row_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
