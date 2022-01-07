; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_mapper_8k_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_mapper_8k_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }

@slot = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@z80_readmap = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mapper_8k_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapper_8k_w(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @slot, i32 0, i32 0), align 8
  %9 = urem i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @slot, i32 0, i32 1), align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32 %10, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 3
  switch i32 %16, label %105 [
    i32 0, label %17
    i32 1, label %39
    i32 2, label %61
    i32 3, label %83
  ]

17:                                               ; preds = %2
  store i32 32, i32* %5, align 4
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 40
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @slot, i32 0, i32 2), align 8
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 13
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 7
  %27 = shl i32 %26, 10
  %28 = or i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %22, i64 %29
  %31 = load i32**, i32*** @z80_readmap, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  store i32* %30, i32** %34, align 8
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %18

38:                                               ; preds = %18
  br label %105

39:                                               ; preds = %2
  store i32 40, i32* %5, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 48
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @slot, i32 0, i32 2), align 8
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 %45, 13
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 7
  %49 = shl i32 %48, 10
  %50 = or i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %44, i64 %51
  %53 = load i32**, i32*** @z80_readmap, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  store i32* %52, i32** %56, align 8
  br label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %40

60:                                               ; preds = %40
  br label %105

61:                                               ; preds = %2
  store i32 16, i32* %5, align 4
  br label %62

62:                                               ; preds = %79, %61
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 24
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @slot, i32 0, i32 2), align 8
  %67 = load i32, i32* %6, align 4
  %68 = shl i32 %67, 13
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, 7
  %71 = shl i32 %70, 10
  %72 = or i32 %68, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %66, i64 %73
  %75 = load i32**, i32*** @z80_readmap, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* %74, i32** %78, align 8
  br label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %62

82:                                               ; preds = %62
  br label %105

83:                                               ; preds = %2
  store i32 24, i32* %5, align 4
  br label %84

84:                                               ; preds = %101, %83
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 32
  br i1 %86, label %87, label %104

87:                                               ; preds = %84
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @slot, i32 0, i32 2), align 8
  %89 = load i32, i32* %6, align 4
  %90 = shl i32 %89, 13
  %91 = load i32, i32* %5, align 4
  %92 = and i32 %91, 7
  %93 = shl i32 %92, 10
  %94 = or i32 %90, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %88, i64 %95
  %97 = load i32**, i32*** @z80_readmap, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  store i32* %96, i32** %100, align 8
  br label %101

101:                                              ; preds = %87
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %84

104:                                              ; preds = %84
  br label %105

105:                                              ; preds = %2, %104, %82, %60, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
