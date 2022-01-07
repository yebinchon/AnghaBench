; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiscudsp.c_scudspsetRegister.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiscudsp.c_scudspsetRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @scudspsetRegister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scudspsetRegister(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @ScuDspGetRegisters(%struct.TYPE_16__* %7)
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %132 [
    i32 0, label %10
    i32 1, label %15
    i32 2, label %20
    i32 3, label %25
    i32 4, label %30
    i32 5, label %35
    i32 6, label %40
    i32 7, label %45
    i32 8, label %50
    i32 9, label %55
    i32 10, label %60
    i32 11, label %65
    i32 12, label %70
    i32 13, label %73
    i32 14, label %76
    i32 15, label %100
    i32 16, label %103
    i32 17, label %106
    i32 18, label %109
    i32 19, label %112
    i32 20, label %117
    i32 21, label %122
    i32 22, label %127
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 9
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  br label %132

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  br label %132

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 9
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  br label %132

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 9
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  br label %132

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 9
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 4
  store i32 %31, i32* %34, align 8
  br label %132

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 9
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 5
  store i32 %36, i32* %39, align 4
  br label %132

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 9
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 6
  store i32 %41, i32* %44, align 8
  br label %132

45:                                               ; preds = %3
  %46 = load i32, i32* %6, align 4
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 9
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 7
  store i32 %46, i32* %49, align 4
  br label %132

50:                                               ; preds = %3
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 9
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 8
  store i32 %51, i32* %54, align 8
  br label %132

55:                                               ; preds = %3
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 9
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 9
  store i32 %56, i32* %59, align 4
  br label %132

60:                                               ; preds = %3
  %61 = load i32, i32* %6, align 4
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 9
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 10
  store i32 %61, i32* %64, align 8
  br label %132

65:                                               ; preds = %3
  %66 = load i32, i32* %6, align 4
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 9
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 11
  store i32 %66, i32* %69, align 4
  br label %132

70:                                               ; preds = %3
  %71 = load i32, i32* %6, align 4
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  br label %132

73:                                               ; preds = %3
  %74 = load i32, i32* %6, align 4
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  br label %132

76:                                               ; preds = %3
  %77 = load i32, i32* %6, align 4
  %78 = ashr i32 %77, 24
  %79 = and i32 %78, 255
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 255
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %90 = ashr i32 %89, 8
  %91 = and i32 %90, 255
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, 255
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  store i32 %96, i32* %99, align 4
  br label %132

100:                                              ; preds = %3
  %101 = load i32, i32* %6, align 4
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 3
  store i32 %101, i32* %102, align 8
  br label %132

103:                                              ; preds = %3
  %104 = load i32, i32* %6, align 4
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 4
  store i32 %104, i32* %105, align 4
  br label %132

106:                                              ; preds = %3
  %107 = load i32, i32* %6, align 4
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 5
  store i32 %107, i32* %108, align 8
  br label %132

109:                                              ; preds = %3
  %110 = load i32, i32* %6, align 4
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 6
  store i32 %110, i32* %111, align 4
  br label %132

112:                                              ; preds = %3
  %113 = load i32, i32* %6, align 4
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  br label %132

117:                                              ; preds = %3
  %118 = load i32, i32* %6, align 4
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  br label %132

122:                                              ; preds = %3
  %123 = load i32, i32* %6, align 4
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  br label %132

127:                                              ; preds = %3
  %128 = load i32, i32* %6, align 4
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 7
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  br label %132

132:                                              ; preds = %3, %127, %122, %117, %112, %109, %106, %103, %100, %76, %73, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %15, %10
  %133 = call i32 @ScuDspSetRegisters(%struct.TYPE_16__* %7)
  ret void
}

declare dso_local i32 @ScuDspGetRegisters(%struct.TYPE_16__*) #1

declare dso_local i32 @ScuDspSetRegisters(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
