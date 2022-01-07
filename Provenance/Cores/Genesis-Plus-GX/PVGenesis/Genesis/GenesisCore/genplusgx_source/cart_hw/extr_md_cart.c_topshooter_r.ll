; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_topshooter_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_topshooter_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@input = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@INPUT_A = common dso_local global i32 0, align 4
@INPUT_B = common dso_local global i32 0, align 4
@INPUT_START = common dso_local global i32 0, align 4
@INPUT_UP = common dso_local global i32 0, align 4
@INPUT_DOWN = common dso_local global i32 0, align 4
@INPUT_RIGHT = common dso_local global i32 0, align 4
@INPUT_LEFT = common dso_local global i32 0, align 4
@INPUT_C = common dso_local global i32 0, align 4
@sram = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @topshooter_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @topshooter_r(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 2105344
  br i1 %6, label %7, label %100

7:                                                ; preds = %1
  store i32 255, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 255
  switch i32 %9, label %95 [
    i32 67, label %10
    i32 69, label %41
    i32 71, label %62
    i32 73, label %73
    i32 81, label %94
  ]

10:                                               ; preds = %7
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 0), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @INPUT_A, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, -129
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %10
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @INPUT_B, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, -17
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 0), align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @INPUT_START, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, -33
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %30
  br label %98

41:                                               ; preds = %7
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 0), align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @INPUT_UP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, -9
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 0), align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @INPUT_DOWN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, -17
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %51
  br label %98

62:                                               ; preds = %7
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 0), align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @INPUT_RIGHT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, -4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %62
  br label %98

73:                                               ; preds = %7
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 0), align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @INPUT_LEFT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %81, -4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %73
  %84 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 0), align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @INPUT_C, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, -2
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %83
  br label %98

94:                                               ; preds = %7
  store i32 165, i32* %4, align 4
  br label %98

95:                                               ; preds = %7
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @m68k_read_bus_8(i32 %96)
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %95, %94, %93, %72, %61, %40
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %105

100:                                              ; preds = %1
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sram, i32 0, i32 0), align 4
  %102 = load i32, i32* %3, align 4
  %103 = and i32 %102, 65535
  %104 = call i32 @READ_BYTE(i32 %101, i32 %103)
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %100, %98
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @m68k_read_bus_8(i32) #1

declare dso_local i32 @READ_BYTE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
