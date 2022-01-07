; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_clauses.c_citus_evaluate_expr.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_clauses.c_citus_evaluate_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32, %struct.TYPE_8__*)* @citus_evaluate_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @citus_evaluate_expr(i32* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %10, align 8
  %19 = call %struct.TYPE_9__* (...) @CreateExecutorState()
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %11, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @MemoryContextSwitchTo(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @fix_opfuncids(i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %28 = call i32* @ExecInitExpr(i32* %26, %struct.TYPE_8__* %27)
  store i32* %28, i32** %12, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %13, align 8
  br label %38

35:                                               ; preds = %5
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %37 = call i32* @GetPerTupleExprContext(%struct.TYPE_9__* %36)
  store i32* %37, i32** %13, align 8
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @ExecEvalExprSwitchContext(i32* %39, i32* %40, i32* %16)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @get_typlenbyval(i32 %42, i32* %17, i32* %18)
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @MemoryContextSwitchTo(i32 %44)
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %17, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @PG_DETOAST_DATUM_COPY(i32 %52)
  %54 = call i32 @PointerGetDatum(i32 %53)
  store i32 %54, i32* %15, align 4
  br label %60

55:                                               ; preds = %48
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @datumCopy(i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %55, %51
  br label %61

61:                                               ; preds = %60, %38
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %63 = call i32 @FreeExecutorState(%struct.TYPE_9__* %62)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %18, align 4
  %71 = call i64 @makeConst(i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = inttoptr i64 %71 to i32*
  ret i32* %72
}

declare dso_local %struct.TYPE_9__* @CreateExecutorState(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @fix_opfuncids(i32*) #1

declare dso_local i32* @ExecInitExpr(i32*, %struct.TYPE_8__*) #1

declare dso_local i32* @GetPerTupleExprContext(%struct.TYPE_9__*) #1

declare dso_local i32 @ExecEvalExprSwitchContext(i32*, i32*, i32*) #1

declare dso_local i32 @get_typlenbyval(i32, i32*, i32*) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @PG_DETOAST_DATUM_COPY(i32) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

declare dso_local i32 @FreeExecutorState(%struct.TYPE_9__*) #1

declare dso_local i64 @makeConst(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
