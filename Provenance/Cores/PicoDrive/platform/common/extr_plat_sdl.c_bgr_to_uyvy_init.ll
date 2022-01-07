; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_plat_sdl.c_bgr_to_uyvy_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_plat_sdl.c_bgr_to_uyvy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yuv_ry = common dso_local global i32* null, align 8
@yuv_gy = common dso_local global i32* null, align 8
@yuv_by = common dso_local global i32* null, align 8
@yuv_u = common dso_local global i32* null, align 8
@yuv_v = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bgr_to_uyvy_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %37, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 32
  br i1 %5, label %6, label %40

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sitofp i32 %7 to float
  %9 = fmul float 0x3FD322D0E0000000, %8
  %10 = fmul float %9, 6.553600e+04
  %11 = fadd float %10, 5.000000e-01
  %12 = fptosi float %11 to i32
  %13 = load i32*, i32** @yuv_ry, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* %1, align 4
  %18 = sitofp i32 %17 to float
  %19 = fmul float 0x3FE2C8B440000000, %18
  %20 = fmul float %19, 6.553600e+04
  %21 = fadd float %20, 5.000000e-01
  %22 = fptosi float %21 to i32
  %23 = load i32*, i32** @yuv_gy, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* %1, align 4
  %28 = sitofp i32 %27 to float
  %29 = fmul float 0x3FBD2F1AA0000000, %28
  %30 = fmul float %29, 6.553600e+04
  %31 = fadd float %30, 5.000000e-01
  %32 = fptosi float %31 to i32
  %33 = load i32*, i32** @yuv_by, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %6
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %3

40:                                               ; preds = %3
  store i32 -32, i32* %1, align 4
  br label %41

41:                                               ; preds = %83, %40
  %42 = load i32, i32* %1, align 4
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %44, label %86

44:                                               ; preds = %41
  %45 = load i32, i32* %1, align 4
  %46 = sitofp i32 %45 to float
  %47 = fmul float 0x4012147AE0000000, %46
  %48 = fptosi float %47 to i32
  %49 = add nsw i32 %48, 128
  store i32 %49, i32* %2, align 4
  %50 = load i32, i32* %2, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %44
  %54 = load i32, i32* %2, align 4
  %55 = icmp sgt i32 %54, 255
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 255, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* %2, align 4
  %59 = load i32*, i32** @yuv_u, align 8
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 32
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* %1, align 4
  %65 = sitofp i32 %64 to float
  %66 = fmul float 0x4016D0E560000000, %65
  %67 = fptosi float %66 to i32
  %68 = add nsw i32 %67, 128
  store i32 %68, i32* %2, align 4
  %69 = load i32, i32* %2, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %57
  %73 = load i32, i32* %2, align 4
  %74 = icmp sgt i32 %73, 255
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 255, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %2, align 4
  %78 = load i32*, i32** @yuv_v, align 8
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 32
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %77, i32* %82, align 4
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %1, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %1, align 4
  br label %41

86:                                               ; preds = %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
