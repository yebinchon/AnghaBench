; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_readgensrc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_readgensrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, %struct.TYPE_5__, i32** }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ScuDsp = common dso_local global %struct.TYPE_6__* null, align 8
@incFlg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @readgensrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readgensrc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %135 [
    i32 0, label %6
    i32 1, label %19
    i32 2, label %32
    i32 3, label %45
    i32 4, label %58
    i32 5, label %74
    i32 6, label %90
    i32 7, label %106
    i32 9, label %122
    i32 10, label %128
  ]

6:                                                ; preds = %1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load i32**, i32*** %8, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i64 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %11, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %2, align 4
  br label %137

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %2, align 4
  br label %137

32:                                               ; preds = %1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %2, align 4
  br label %137

45:                                               ; preds = %1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 3
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 3
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %2, align 4
  br label %137

58:                                               ; preds = %1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32**, i32*** %60, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %4, align 4
  %71 = load i32*, i32** @incFlg, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 1, i32* %72, align 4
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %137

74:                                               ; preds = %1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %4, align 4
  %87 = load i32*, i32** @incFlg, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 1, i32* %88, align 4
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %137

90:                                               ; preds = %1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32**, i32*** %92, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 2
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %95, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %4, align 4
  %103 = load i32*, i32** @incFlg, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  store i32 1, i32* %104, align 4
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %137

106:                                              ; preds = %1
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 3
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 3
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %4, align 4
  %119 = load i32*, i32** @incFlg, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  store i32 1, i32* %120, align 4
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %2, align 4
  br label %137

122:                                              ; preds = %1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %2, align 4
  br label %137

128:                                              ; preds = %1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, -65536
  %134 = ashr i32 %133, 16
  store i32 %134, i32* %2, align 4
  br label %137

135:                                              ; preds = %1
  br label %136

136:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %136, %128, %122, %106, %90, %74, %58, %45, %32, %19, %6
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
