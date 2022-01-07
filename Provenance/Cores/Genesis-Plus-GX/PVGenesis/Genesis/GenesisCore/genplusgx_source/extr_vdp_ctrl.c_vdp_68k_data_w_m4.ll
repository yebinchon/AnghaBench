; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_68k_data_w_m4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_68k_data_w_m4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pending = common dso_local global i64 0, align 8
@status = common dso_local global i32 0, align 4
@reg = common dso_local global i32* null, align 8
@m68k = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@fifo_write_cnt = common dso_local global i32 0, align 4
@fifo_latency = common dso_local global i64 0, align 8
@fifo_lastwrite = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@cram = common dso_local global i32* null, align 8
@bordrr = common dso_local global i32 0, align 4
@vram = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vdp_68k_data_w_m4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdp_68k_data_w_m4(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* @pending, align 8
  %8 = load i32, i32* @status, align 4
  %9 = and i32 %8, 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %40, label %11

11:                                               ; preds = %1
  %12 = load i32*, i32** @reg, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 64
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68k, i32 0, i32 0), align 4
  %19 = call i32 @vdp_fifo_update(i32 %18)
  %20 = load i32, i32* @status, align 4
  %21 = and i32 %20, 65023
  store i32 %21, i32* @status, align 4
  %22 = load i32, i32* @fifo_write_cnt, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load i32, i32* @fifo_write_cnt, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @fifo_write_cnt, align 4
  %27 = load i32, i32* @fifo_write_cnt, align 4
  %28 = and i32 %27, 4
  %29 = shl i32 %28, 6
  %30 = load i32, i32* @status, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* @status, align 4
  br label %39

32:                                               ; preds = %17
  %33 = load i64, i64* @fifo_latency, align 8
  %34 = load i32, i32* @fifo_lastwrite, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* @fifo_lastwrite, align 4
  %38 = load i32, i32* @fifo_lastwrite, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68k, i32 0, i32 0), align 4
  br label %39

39:                                               ; preds = %32, %24
  br label %40

40:                                               ; preds = %39, %11, %1
  %41 = load i32, i32* @code, align 4
  %42 = and i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %40
  %45 = load i32, i32* @addr, align 4
  %46 = and i32 %45, 31
  store i32 %46, i32* %3, align 4
  %47 = load i32*, i32** @cram, align 8
  %48 = load i32, i32* %3, align 4
  %49 = shl i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32* %51, i32** %4, align 8
  %52 = load i32, i32* %2, align 4
  %53 = and i32 %52, 3584
  %54 = lshr i32 %53, 3
  %55 = load i32, i32* %2, align 4
  %56 = and i32 %55, 63
  %57 = or i32 %54, %56
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %44
  %63 = load i32, i32* %2, align 4
  %64 = load i32*, i32** %4, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @color_update_m4(i32 %65, i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @bordrr, align 4
  %70 = and i32 %69, 15
  %71 = or i32 16, %70
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @color_update_m4(i32 64, i32 %74)
  br label %76

76:                                               ; preds = %73, %62
  br label %77

77:                                               ; preds = %76, %44
  br label %114

78:                                               ; preds = %40
  %79 = load i32, i32* @addr, align 4
  %80 = shl i32 %79, 1
  %81 = and i32 %80, 1020
  %82 = load i32, i32* @addr, align 4
  %83 = and i32 %82, 512
  %84 = ashr i32 %83, 8
  %85 = or i32 %81, %84
  %86 = load i32, i32* @addr, align 4
  %87 = and i32 %86, 15360
  %88 = or i32 %85, %87
  store i32 %88, i32* %5, align 4
  %89 = load i32*, i32** @vram, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32* %92, i32** %6, align 8
  %93 = load i32, i32* @addr, align 4
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %78
  %97 = load i32, i32* %2, align 4
  %98 = lshr i32 %97, 8
  %99 = load i32, i32* %2, align 4
  %100 = shl i32 %99, 8
  %101 = or i32 %98, %100
  %102 = and i32 %101, 65535
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %96, %78
  %104 = load i32, i32* %2, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* %2, align 4
  %110 = load i32*, i32** %6, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @MARK_BG_DIRTY(i32 %111)
  br label %113

113:                                              ; preds = %108, %103
  br label %114

114:                                              ; preds = %113, %77
  %115 = load i32*, i32** @reg, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 15
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* @addr, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* @addr, align 4
  ret void
}

declare dso_local i32 @vdp_fifo_update(i32) #1

declare dso_local i32 @color_update_m4(i32, i32) #1

declare dso_local i32 @MARK_BG_DIRTY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
