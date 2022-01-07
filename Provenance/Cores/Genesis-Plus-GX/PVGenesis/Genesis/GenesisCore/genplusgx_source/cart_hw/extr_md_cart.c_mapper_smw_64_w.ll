; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_mapper_smw_64_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_mapper_smw_64_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@sram = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@cart = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@m68k = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mapper_smw_64_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapper_smw_64_w(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = ashr i32 %5, 16
  %7 = and i32 %6, 7
  switch i32 %7, label %109 [
    i32 0, label %8
    i32 1, label %58
    i32 4, label %67
    i32 6, label %80
    i32 7, label %81
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 2
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sram, i32 0, i32 0), align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 7
  switch i32 %16, label %48 [
    i32 0, label %17
    i32 1, label %30
    i32 7, label %35
  ]

17:                                               ; preds = %12
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sram, i32 0, i32 0), align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 6
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sram, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %20, %23
  %25 = load i32, i32* %4, align 4
  %26 = xor i32 %24, %25
  %27 = and i32 %26, 254
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sram, i32 0, i32 0), align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 6
  store i32 %27, i32* %29, align 4
  br label %49

30:                                               ; preds = %12
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 254
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sram, i32 0, i32 0), align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 7
  store i32 %32, i32* %34, align 4
  br label %49

35:                                               ; preds = %12
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cart, i32 0, i32 0), align 4
  %37 = add nsw i32 %36, 524288
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 28
  %40 = shl i32 %39, 14
  %41 = add nsw i32 %37, %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 105
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 97
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %41, i32* %47, align 4
  br label %49

48:                                               ; preds = %12
  br label %49

49:                                               ; preds = %48, %35, %30, %17
  %50 = load i32, i32* %4, align 4
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sram, i32 0, i32 0), align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %50, i32* %52, align 4
  br label %57

53:                                               ; preds = %8
  %54 = load i32, i32* %4, align 4
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sram, i32 0, i32 0), align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %49
  br label %113

58:                                               ; preds = %2
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, 2
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sram, i32 0, i32 0), align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %58
  br label %113

67:                                               ; preds = %2
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sram, i32 0, i32 0), align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  store i32 %72, i32* %74, align 4
  br label %79

75:                                               ; preds = %67
  %76 = load i32, i32* %4, align 4
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sram, i32 0, i32 0), align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %71
  br label %113

80:                                               ; preds = %2
  br label %113

81:                                               ; preds = %2
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, 2
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %108, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %4, align 4
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sram, i32 0, i32 0), align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sram, i32 0, i32 0), align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 128
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %85
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cart, i32 0, i32 0), align 4
  %96 = add nsw i32 %95, 524288
  %97 = load i32, i32* %4, align 4
  %98 = and i32 %97, 28
  %99 = shl i32 %98, 14
  %100 = add nsw i32 %96, %99
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 104
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 96
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 %100, i32* %106, align 4
  br label %107

107:                                              ; preds = %94, %85
  br label %108

108:                                              ; preds = %107, %81
  br label %113

109:                                              ; preds = %2
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @m68k_unused_8_w(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %108, %80, %79, %66, %57
  ret void
}

declare dso_local i32 @m68k_unused_8_w(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
