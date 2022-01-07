; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_mapper_smw_64_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_mapper_smw_64_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@sram = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mapper_smw_64_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_smw_64_r(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = ashr i32 %5, 16
  %7 = and i32 %6, 3
  switch i32 %7, label %122 [
    i32 2, label %8
    i32 3, label %50
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = ashr i32 %9, 1
  %11 = and i32 %10, 7
  switch i32 %11, label %49 [
    i32 0, label %12
    i32 1, label %16
    i32 2, label %21
    i32 3, label %25
    i32 4, label %30
    i32 5, label %34
    i32 6, label %39
    i32 7, label %44
  ]

12:                                               ; preds = %8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 6
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %2, align 4
  br label %123

16:                                               ; preds = %8
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 6
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %123

21:                                               ; preds = %8
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 7
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %123

25:                                               ; preds = %8
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 7
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %123

30:                                               ; preds = %8
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %2, align 4
  br label %123

34:                                               ; preds = %8
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %123

39:                                               ; preds = %8
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %2, align 4
  br label %123

44:                                               ; preds = %8
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 3
  store i32 %48, i32* %2, align 4
  br label %123

49:                                               ; preds = %8
  br label %50

50:                                               ; preds = %1, %49
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 128
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 64
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %65, %68
  br label %75

70:                                               ; preds = %56
  %71 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, 255
  br label %75

75:                                               ; preds = %70, %62
  %76 = phi i32 [ %69, %62 ], [ %74, %70 ]
  br label %78

77:                                               ; preds = %50
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i32 [ %76, %75 ], [ 0, %77 ]
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %3, align 4
  %81 = and i32 %80, 2
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, 127
  store i32 %85, i32* %4, align 4
  br label %120

86:                                               ; preds = %78
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 128
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %119

92:                                               ; preds = %86
  %93 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 5
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 2
  %103 = and i32 %102, 252
  %104 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 8
  store i32 %103, i32* %105, align 4
  br label %118

106:                                              ; preds = %92
  %107 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 1
  %114 = xor i32 %109, %113
  %115 = and i32 %114, 254
  %116 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sram, i32 0, i32 0), align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 6
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %106, %98
  br label %119

119:                                              ; preds = %118, %86
  br label %120

120:                                              ; preds = %119, %83
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %2, align 4
  br label %123

122:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %120, %44, %39, %34, %30, %25, %21, %16, %12
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
