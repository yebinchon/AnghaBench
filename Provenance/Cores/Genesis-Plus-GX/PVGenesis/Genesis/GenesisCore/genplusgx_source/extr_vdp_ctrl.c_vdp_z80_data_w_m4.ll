; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_z80_data_w_m4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_z80_data_w_m4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pending = common dso_local global i64 0, align 8
@code = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@cram = common dso_local global i32* null, align 8
@bordrr = common dso_local global i32 0, align 4
@vram = common dso_local global i32* null, align 8
@reg = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vdp_z80_data_w_m4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdp_z80_data_w_m4(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* @pending, align 8
  %7 = load i32, i32* @code, align 4
  %8 = and i32 %7, 2
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load i32, i32* @addr, align 4
  %12 = and i32 %11, 31
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** @cram, align 8
  %14 = load i32, i32* %3, align 4
  %15 = shl i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32* %17, i32** %4, align 8
  %18 = load i32, i32* %2, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %10
  %23 = load i32, i32* %2, align 4
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @color_update_m4(i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @bordrr, align 4
  %30 = and i32 %29, 15
  %31 = or i32 16, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @color_update_m4(i32 64, i32 %34)
  br label %36

36:                                               ; preds = %33, %22
  br label %37

37:                                               ; preds = %36, %10
  br label %57

38:                                               ; preds = %1
  %39 = load i32, i32* @addr, align 4
  %40 = and i32 %39, 16383
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load i32*, i32** @vram, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %41, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load i32, i32* %2, align 4
  %50 = load i32*, i32** @vram, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @MARK_BG_DIRTY(i32 %54)
  br label %56

56:                                               ; preds = %48, %38
  br label %57

57:                                               ; preds = %56, %37
  %58 = load i64*, i64** @reg, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 15
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  %62 = load i32, i32* @addr, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* @addr, align 4
  ret void
}

declare dso_local i32 @color_update_m4(i32, i32) #1

declare dso_local i32 @MARK_BG_DIRTY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
