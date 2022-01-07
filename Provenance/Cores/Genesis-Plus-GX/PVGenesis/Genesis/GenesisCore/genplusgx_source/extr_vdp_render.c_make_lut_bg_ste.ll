; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_make_lut_bg_ste.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_make_lut_bg_ste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @make_lut_bg_ste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_lut_bg_ste(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 127
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 64
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 15
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 127
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 64
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  br label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  br label %58

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  br label %56

47:                                               ; preds = %35
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  br label %56

56:                                               ; preds = %54, %45
  %57 = phi i32 [ %46, %45 ], [ %55, %54 ]
  br label %58

58:                                               ; preds = %56, %33
  %59 = phi i32 [ %34, %33 ], [ %57, %56 ]
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %60, %61
  %63 = shl i32 %62, 1
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, 15
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 128
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %69, %58
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
