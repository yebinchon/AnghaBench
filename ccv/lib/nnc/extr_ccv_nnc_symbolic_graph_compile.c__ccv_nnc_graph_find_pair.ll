; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c__ccv_nnc_graph_find_pair.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c__ccv_nnc_graph_find_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__**, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*)* @_ccv_nnc_graph_find_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_ccv_nnc_graph_find_pair(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %3, align 8
  br label %53

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %49, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %27, i64 %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %36, i64 %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32* @_ccv_nnc_graph_find_pair(%struct.TYPE_3__* %40, i32* %41)
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32*, i32** %7, align 8
  store i32* %46, i32** %3, align 8
  br label %53

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %24
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %18

52:                                               ; preds = %18
  store i32* null, i32** %3, align 8
  br label %53

53:                                               ; preds = %52, %45, %13
  %54 = load i32*, i32** %3, align 8
  ret i32* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
