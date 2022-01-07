; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_z80_data_w_m5.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_z80_data_w_m5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pending = common dso_local global i64 0, align 8
@code = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@sat_base_mask = common dso_local global i32 0, align 4
@satb = common dso_local global i32 0, align 4
@sat = common dso_local global i32 0, align 4
@sat_addr_mask = common dso_local global i32 0, align 4
@vram = common dso_local global i32 0, align 4
@cram = common dso_local global i32* null, align 8
@bordrr = common dso_local global i32 0, align 4
@vsram = common dso_local global i32 0, align 4
@reg = common dso_local global i32* null, align 8
@dmafill = common dso_local global i32 0, align 4
@dma_length = common dso_local global i32 0, align 4
@dma_type = common dso_local global i32 0, align 4
@Z80 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vdp_z80_data_w_m5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdp_z80_data_w_m5(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* @pending, align 8
  %7 = load i32, i32* @code, align 4
  %8 = and i32 %7, 15
  switch i32 %8, label %101 [
    i32 1, label %9
    i32 3, label %38
    i32 5, label %94
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @addr, align 4
  %11 = xor i32 %10, 1
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @sat_base_mask, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @satb, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %9
  %18 = load i32, i32* @sat, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @sat_addr_mask, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @WRITE_BYTE(i32 %18, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %9
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @vram, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @READ_BYTE(i32 %26, i32 %27)
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @vram, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @WRITE_BYTE(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @MARK_BG_DIRTY(i32 %35)
  br label %37

37:                                               ; preds = %30, %24
  br label %101

38:                                               ; preds = %1
  %39 = load i32*, i32** @cram, align 8
  %40 = load i32, i32* @addr, align 4
  %41 = and i32 %40, 126
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32* %43, i32** %5, align 8
  %44 = load i32, i32* @addr, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 63
  %51 = load i32, i32* %2, align 4
  %52 = and i32 %51, 14
  %53 = shl i32 %52, 5
  %54 = or i32 %50, %53
  store i32 %54, i32* %2, align 4
  br label %67

55:                                               ; preds = %38
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 448
  %59 = load i32, i32* %2, align 4
  %60 = and i32 %59, 14
  %61 = lshr i32 %60, 1
  %62 = or i32 %58, %61
  %63 = load i32, i32* %2, align 4
  %64 = and i32 %63, 224
  %65 = lshr i32 %64, 2
  %66 = or i32 %62, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %55, %47
  %68 = load i32, i32* %2, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %67
  %73 = load i32, i32* @addr, align 4
  %74 = ashr i32 %73, 1
  %75 = and i32 %74, 63
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %2, align 4
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 15
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @color_update_m5(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %72
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @bordrr, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @color_update_m5(i32 0, i32 %90)
  br label %92

92:                                               ; preds = %89, %85
  br label %93

93:                                               ; preds = %92, %67
  br label %101

94:                                               ; preds = %1
  %95 = load i32, i32* @vsram, align 4
  %96 = load i32, i32* @addr, align 4
  %97 = and i32 %96, 127
  %98 = xor i32 %97, 1
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @WRITE_BYTE(i32 %95, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %1, %94, %93, %37
  %102 = load i32*, i32** @reg, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 15
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @addr, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* @addr, align 4
  %107 = load i32, i32* @dmafill, align 4
  %108 = and i32 %107, 256
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %101
  %111 = load i32, i32* %2, align 4
  store i32 %111, i32* @dmafill, align 4
  %112 = load i32*, i32** @reg, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 20
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 8
  %116 = load i32*, i32** @reg, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 19
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %115, %118
  store i32 %119, i32* @dma_length, align 4
  %120 = load i32, i32* @dma_length, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %110
  store i32 65536, i32* @dma_length, align 4
  br label %123

123:                                              ; preds = %122, %110
  store i32 2, i32* @dma_type, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 4
  %125 = call i32 @vdp_dma_update(i32 %124)
  br label %126

126:                                              ; preds = %123, %101
  ret void
}

declare dso_local i32 @WRITE_BYTE(i32, i32, i32) #1

declare dso_local i32 @READ_BYTE(i32, i32) #1

declare dso_local i32 @MARK_BG_DIRTY(i32) #1

declare dso_local i32 @color_update_m5(i32, i32) #1

declare dso_local i32 @vdp_dma_update(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
