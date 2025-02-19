; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_simplify.c_ccv_nnc_symbolic_graph_simplify.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_simplify.c_ccv_nnc_symbolic_graph_simplify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_symbolic_graph_simplify(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %15, align 8
  %23 = load i32, i32* %16, align 4
  %24 = load i32*, i32** %17, align 8
  %25 = load i32, i32* %18, align 4
  %26 = call i32* @_ccv_nnc_symbolic_graph_simplify_new(i32* %21, i32* %22, i32 %23, i32* %24, i32 %25)
  store i32* %26, i32** %19, align 8
  store i32 0, i32* %20, align 4
  br label %27

27:                                               ; preds = %58, %9
  %28 = load i32, i32* %20, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %20, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %57 [
    i32 131, label %37
    i32 130, label %42
    i32 129, label %47
    i32 128, label %52
  ]

37:                                               ; preds = %31
  %38 = load i32*, i32** %19, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @_ccv_nnc_symbolic_graph_common_subexpression_elimination(i32* %38, i32* %39, i32 %40)
  br label %57

42:                                               ; preds = %31
  %43 = load i32*, i32** %19, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @_ccv_nnc_symbolic_graph_data_transfer_opt(i32* %43, i32* %44, i32 %45)
  br label %57

47:                                               ; preds = %31
  %48 = load i32*, i32** %19, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @_ccv_nnc_symbolic_graph_pruning(i32* %48, i32* %49, i32 %50)
  br label %57

52:                                               ; preds = %31
  %53 = load i32*, i32** %19, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @_ccv_nnc_symbolic_graph_ops_fusion(i32* %53, i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %31, %52, %47, %42, %37
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %20, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %20, align 4
  br label %27

61:                                               ; preds = %27
  %62 = load i32*, i32** %19, align 8
  %63 = call i32 @_ccv_nnc_symbolic_graph_simplify_apply(i32* %62)
  %64 = load i32*, i32** %19, align 8
  %65 = call i32 @_ccv_nnc_symbolic_graph_simplify_free(i32* %64)
  ret void
}

declare dso_local i32* @_ccv_nnc_symbolic_graph_simplify_new(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_common_subexpression_elimination(i32*, i32*, i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_data_transfer_opt(i32*, i32*, i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_pruning(i32*, i32*, i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_ops_fusion(i32*, i32*, i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_simplify_apply(i32*) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_simplify_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
