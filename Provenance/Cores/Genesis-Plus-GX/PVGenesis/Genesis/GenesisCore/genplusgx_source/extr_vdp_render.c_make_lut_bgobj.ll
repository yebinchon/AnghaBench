; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_make_lut_bgobj.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_make_lut_bgobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @make_lut_bgobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_lut_bgobj(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 63
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 128
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 64
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 15
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 63
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 64
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 15
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %3, align 4
  br label %69

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %3, align 4
  br label %69

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  br label %58

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  br label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %11, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  br label %58

58:                                               ; preds = %56, %40
  %59 = phi i32 [ %41, %40 ], [ %57, %56 ]
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 128
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, 128
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %35, %30
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
