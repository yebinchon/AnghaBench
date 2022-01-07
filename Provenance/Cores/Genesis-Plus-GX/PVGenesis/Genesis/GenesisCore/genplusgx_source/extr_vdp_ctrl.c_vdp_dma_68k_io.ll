; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_dma_68k_io.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_dma_68k_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = common dso_local global i32* null, align 8
@dma_src = common dso_local global i32 0, align 4
@zstate = common dso_local global i32 0, align 4
@work_ram = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vdp_dma_68k_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdp_dma_68k_io(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32*, i32** @reg, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 23
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 %7, 17
  %9 = load i32, i32* @dma_src, align 4
  %10 = shl i32 %9, 1
  %11 = or i32 %8, %10
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %63, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 10551295
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i32, i32* @zstate, align 4
  %17 = xor i32 %16, 3
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i64, i64* @work_ram, align 8
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 65535
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* %25, align 4
  br label %28

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %19
  %29 = phi i32 [ %26, %19 ], [ 65535, %27 ]
  store i32 %29, i32* %3, align 4
  br label %51

30:                                               ; preds = %12
  %31 = load i32, i32* %4, align 4
  %32 = icmp sle i32 %31, 10551327
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 1
  %36 = and i32 %35, 15
  %37 = call i32 @io_68k_read(i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = shl i32 %38, 8
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %3, align 4
  br label %50

42:                                               ; preds = %30
  %43 = load i64, i64* @work_ram, align 8
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 65535
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = inttoptr i64 %47 to i32*
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %33
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 2
  store i32 %53, i32* %4, align 4
  %54 = load i32*, i32** @reg, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 23
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 17
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 131071
  %60 = or i32 %57, %59
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @vdp_bus_w(i32 %61)
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %2, align 4
  %65 = add i32 %64, -1
  store i32 %65, i32* %2, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %12, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = ashr i32 %68, 1
  %70 = and i32 %69, 65535
  store i32 %70, i32* @dma_src, align 4
  ret void
}

declare dso_local i32 @io_68k_read(i32) #1

declare dso_local i32 @vdp_bus_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
