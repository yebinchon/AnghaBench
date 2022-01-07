; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_writeloadimdest.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_writeloadimdest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, i64*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ScuDsp = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @writeloadimdest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeloadimdest(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %143 [
    i32 0, label %6
    i32 1, label %31
    i32 2, label %56
    i32 3, label %81
    i32 4, label %106
    i32 5, label %110
    i32 6, label %115
    i32 7, label %121
    i32 10, label %127
    i32 12, label %131
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32**, i32*** %9, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %12, i64 %17
  store i32 %7, i32* %18, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = and i64 %29, 63
  store i64 %30, i64* %28, align 8
  br label %144

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  store i32 %32, i32* %43, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, 63
  store i64 %55, i64* %53, align 8
  br label %144

56:                                               ; preds = %2
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  store i32 %57, i32* %68, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 2
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  %79 = load i64, i64* %78, align 8
  %80 = and i64 %79, 63
  store i64 %80, i64* %78, align 8
  br label %144

81:                                               ; preds = %2
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 3
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 3
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  store i32 %82, i32* %93, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 3
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 3
  %104 = load i64, i64* %103, align 8
  %105 = and i64 %104, 63
  store i64 %105, i64* %103, align 8
  br label %144

106:                                              ; preds = %2
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %144

110:                                              ; preds = %2
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 10
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  br label %144

115:                                              ; preds = %2
  %116 = load i32, i32* %4, align 4
  %117 = and i32 %116, 33554431
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  br label %144

121:                                              ; preds = %2
  %122 = load i32, i32* %4, align 4
  %123 = and i32 %122, 33554431
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  br label %144

127:                                              ; preds = %2
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 9
  store i32 %128, i32* %130, align 4
  br label %144

131:                                              ; preds = %2
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 8
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 6
  store i32 0, i32* %142, align 8
  br label %144

143:                                              ; preds = %2
  br label %144

144:                                              ; preds = %6, %31, %56, %81, %106, %110, %115, %121, %127, %131, %143
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
