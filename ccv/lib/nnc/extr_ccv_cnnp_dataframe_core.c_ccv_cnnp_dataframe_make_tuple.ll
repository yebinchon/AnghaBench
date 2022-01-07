; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_core.c_ccv_cnnp_dataframe_make_tuple.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_core.c_ccv_cnnp_dataframe_make_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@_ccv_cnnp_make_tuple = common dso_local global i32 0, align 4
@_ccv_cnnp_tuple_deinit = common dso_local global i32 0, align 4
@ccfree = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccv_cnnp_dataframe_make_tuple(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i64 @ccmalloc(i32 4)
  %9 = inttoptr i64 %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @_ccv_cnnp_make_tuple, align 4
  %15 = load i32, i32* @_ccv_cnnp_tuple_deinit, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = load i64, i64* @ccfree, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @ccv_cnnp_dataframe_map(i32* %13, i32 %14, i32 0, i32 %15, i32* %16, i32 %17, %struct.TYPE_3__* %18, i32 %20)
  ret i32 %21
}

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @ccv_cnnp_dataframe_map(i32*, i32, i32, i32, i32*, i32, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
