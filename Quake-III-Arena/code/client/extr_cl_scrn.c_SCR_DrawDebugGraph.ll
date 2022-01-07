; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_scrn.c_SCR_DrawDebugGraph.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_scrn.c_SCR_DrawDebugGraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*)* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { float, i32 }
%struct.TYPE_13__ = type { float }
%struct.TYPE_12__ = type { float }

@cls = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@re = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@g_color_table = common dso_local global i32** null, align 8
@cl_graphheight = common dso_local global %struct.TYPE_14__* null, align 8
@current = common dso_local global i32 0, align 4
@values = common dso_local global %struct.TYPE_9__* null, align 8
@cl_graphscale = common dso_local global %struct.TYPE_13__* null, align 8
@cl_graphshift = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCR_DrawDebugGraph() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 1, i32 0), align 4
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %2, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 1, i32 1), align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @re, i32 0, i32 1), align 8
  %12 = load i32**, i32*** @g_color_table, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 %11(i32* %14)
  %16 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @re, i32 0, i32 0), align 8
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cl_graphheight, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cl_graphheight, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 0), align 4
  %28 = call i32 %16(i32 %17, i32 %22, i32 %23, i32 %26, i32 0, i32 0, i32 0, i32 0, i32 %27)
  %29 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @re, i32 0, i32 1), align 8
  %30 = call i32 %29(i32* null)
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %102, %0
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %105

35:                                               ; preds = %31
  %36 = load i32, i32* @current, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %1, align 4
  %39 = sub nsw i32 %37, %38
  %40 = add nsw i32 %39, 1024
  %41 = and i32 %40, 1023
  store i32 %41, i32* %5, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @values, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load float, float* %46, align 4
  store float %47, float* %7, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @values, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  %54 = load float, float* %7, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_graphscale, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load float, float* %56, align 4
  %58 = fmul float %54, %57
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_graphshift, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load float, float* %60, align 4
  %62 = fadd float %58, %61
  store float %62, float* %7, align 4
  %63 = load float, float* %7, align 4
  %64 = fcmp olt float %63, 0.000000e+00
  br i1 %64, label %65, label %82

65:                                               ; preds = %35
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cl_graphheight, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load float, float* %7, align 4
  %70 = fneg float %69
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cl_graphheight, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sitofp i32 %73 to float
  %75 = fdiv float %70, %74
  %76 = fptosi float %75 to i32
  %77 = add nsw i32 1, %76
  %78 = mul nsw i32 %68, %77
  %79 = sitofp i32 %78 to float
  %80 = load float, float* %7, align 4
  %81 = fadd float %80, %79
  store float %81, float* %7, align 4
  br label %82

82:                                               ; preds = %65, %35
  %83 = load float, float* %7, align 4
  %84 = fptosi float %83 to i32
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cl_graphheight, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = srem i32 %84, %87
  store i32 %88, i32* %6, align 4
  %89 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @re, i32 0, i32 0), align 8
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %90, %91
  %93 = sub nsw i32 %92, 1
  %94 = load i32, i32* %1, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 0), align 4
  %101 = call i32 %89(i32 %95, i32 %98, i32 1, i32 %99, i32 0, i32 0, i32 0, i32 0, i32 %100)
  br label %102

102:                                              ; preds = %82
  %103 = load i32, i32* %1, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %1, align 4
  br label %31

105:                                              ; preds = %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
