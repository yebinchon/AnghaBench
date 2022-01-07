; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetIndTexOrder.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetIndTexOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@__gx = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetIndTexOrder(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %116 [
    i32 131, label %8
    i32 130, label %35
    i32 129, label %62
    i32 128, label %89
  ]

8:                                                ; preds = %3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, -8
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 7
  %17 = or i32 %14, %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %17, i32* %21, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, -57
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @_SHIFTL(i32 %28, i32 3, i32 3)
  %30 = or i32 %27, %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %30, i32* %34, align 4
  br label %116

35:                                               ; preds = %3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, -449
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @_SHIFTL(i32 %42, i32 6, i32 3)
  %44 = or i32 %41, %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %44, i32* %48, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, -3585
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @_SHIFTL(i32 %55, i32 9, i32 3)
  %57 = or i32 %54, %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32 %57, i32* %61, align 4
  br label %116

62:                                               ; preds = %3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, -28673
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @_SHIFTL(i32 %69, i32 12, i32 3)
  %71 = or i32 %68, %70
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %71, i32* %75, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, -229377
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @_SHIFTL(i32 %82, i32 15, i32 3)
  %84 = or i32 %81, %83
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32 %84, i32* %88, align 4
  br label %116

89:                                               ; preds = %3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, -1835009
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @_SHIFTL(i32 %96, i32 18, i32 3)
  %98 = or i32 %95, %97
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32 %98, i32* %102, align 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, -14680065
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @_SHIFTL(i32 %109, i32 21, i32 3)
  %111 = or i32 %108, %110
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %3, %89, %62, %35, %8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @GX_LOAD_BP_REG(i32 %121)
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, 3
  store i32 %126, i32* %124, align 8
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
