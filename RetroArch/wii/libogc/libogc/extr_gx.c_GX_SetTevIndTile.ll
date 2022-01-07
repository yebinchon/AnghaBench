; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTevIndTile.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTevIndTile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GX_ITW_OFF = common dso_local global i32 0, align 4
@GX_ITW_16 = common dso_local global i32 0, align 4
@GX_ITW_32 = common dso_local global i32 0, align 4
@GX_ITW_64 = common dso_local global i32 0, align 4
@GX_ITW_128 = common dso_local global i32 0, align 4
@GX_ITW_256 = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4
@GX_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetTevIndTile(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [2 x [3 x float]], align 16
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca [2 x i32], align 4
  %27 = alloca [2 x i32], align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  store i32 1127219200, i32* %28, align 4
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  store i32 1127219200, i32* %31, align 4
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %32, align 4
  %34 = load i32, i32* @GX_ITW_OFF, align 4
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %37, label %39

37:                                               ; preds = %10
  %38 = load i32, i32* @GX_ITW_16, align 4
  store i32 %38, i32* %21, align 4
  br label %63

39:                                               ; preds = %10
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @GX_ITW_32, align 4
  store i32 %43, i32* %21, align 4
  br label %62

44:                                               ; preds = %39
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %45, 64
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @GX_ITW_64, align 4
  store i32 %48, i32* %21, align 4
  br label %61

49:                                               ; preds = %44
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 128
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @GX_ITW_128, align 4
  store i32 %53, i32* %21, align 4
  br label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 256
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @GX_ITW_256, align 4
  store i32 %58, i32* %21, align 4
  br label %59

59:                                               ; preds = %57, %54
  br label %60

60:                                               ; preds = %59, %52
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i32, i32* @GX_ITW_OFF, align 4
  store i32 %64, i32* %22, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp eq i32 %65, 16
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @GX_ITW_16, align 4
  store i32 %68, i32* %22, align 4
  br label %93

69:                                               ; preds = %63
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @GX_ITW_32, align 4
  store i32 %73, i32* %22, align 4
  br label %92

74:                                               ; preds = %69
  %75 = load i32, i32* %14, align 4
  %76 = icmp eq i32 %75, 64
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @GX_ITW_64, align 4
  store i32 %78, i32* %22, align 4
  br label %91

79:                                               ; preds = %74
  %80 = load i32, i32* %14, align 4
  %81 = icmp eq i32 %80, 128
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @GX_ITW_128, align 4
  store i32 %83, i32* %22, align 4
  br label %90

84:                                               ; preds = %79
  %85 = load i32, i32* %14, align 4
  %86 = icmp eq i32 %85, 256
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @GX_ITW_256, align 4
  store i32 %88, i32* %22, align 4
  br label %89

89:                                               ; preds = %87, %84
  br label %90

90:                                               ; preds = %89, %82
  br label %91

91:                                               ; preds = %90, %77
  br label %92

92:                                               ; preds = %91, %72
  br label %93

93:                                               ; preds = %92, %67
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %95 = bitcast i32* %94 to i8*
  %96 = bitcast i8* %95 to float*
  %97 = load float, float* %96, align 4
  store float %97, float* %24, align 4
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  %99 = bitcast i32* %98 to i8*
  %100 = bitcast i8* %99 to float*
  %101 = load float, float* %100, align 4
  store float %101, float* %25, align 4
  %102 = load float, float* %24, align 4
  %103 = fsub float %102, 0x4330000000000000
  %104 = fmul float %103, 0x3F50000000000000
  %105 = getelementptr inbounds [2 x [3 x float]], [2 x [3 x float]]* %23, i64 0, i64 0
  %106 = getelementptr inbounds [3 x float], [3 x float]* %105, i64 0, i64 0
  store float %104, float* %106, align 16
  %107 = getelementptr inbounds [2 x [3 x float]], [2 x [3 x float]]* %23, i64 0, i64 0
  %108 = getelementptr inbounds [3 x float], [3 x float]* %107, i64 0, i64 1
  store float 0.000000e+00, float* %108, align 4
  %109 = getelementptr inbounds [2 x [3 x float]], [2 x [3 x float]]* %23, i64 0, i64 0
  %110 = getelementptr inbounds [3 x float], [3 x float]* %109, i64 0, i64 2
  store float 0.000000e+00, float* %110, align 8
  %111 = getelementptr inbounds [2 x [3 x float]], [2 x [3 x float]]* %23, i64 0, i64 1
  %112 = getelementptr inbounds [3 x float], [3 x float]* %111, i64 0, i64 0
  store float 0.000000e+00, float* %112, align 4
  %113 = load float, float* %25, align 4
  %114 = fsub float %113, 0x4330000000000000
  %115 = fmul float %114, 0x3F50000000000000
  %116 = getelementptr inbounds [2 x [3 x float]], [2 x [3 x float]]* %23, i64 0, i64 1
  %117 = getelementptr inbounds [3 x float], [3 x float]* %116, i64 0, i64 1
  store float %115, float* %117, align 4
  %118 = getelementptr inbounds [2 x [3 x float]], [2 x [3 x float]]* %23, i64 0, i64 1
  %119 = getelementptr inbounds [3 x float], [3 x float]* %118, i64 0, i64 2
  store float 0.000000e+00, float* %119, align 4
  %120 = load i32, i32* %18, align 4
  %121 = getelementptr inbounds [2 x [3 x float]], [2 x [3 x float]]* %23, i64 0, i64 0
  %122 = bitcast [3 x float]* %121 to float**
  %123 = call i32 @GX_SetIndTexMatrix(i32 %120, float** %122, i32 10)
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* @GX_FALSE, align 4
  %132 = load i32, i32* @GX_TRUE, align 4
  %133 = load i32, i32* %20, align 4
  %134 = call i32 @GX_SetTevIndirect(i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  ret void
}

declare dso_local i32 @GX_SetIndTexMatrix(i32, float**, i32) #1

declare dso_local i32 @GX_SetTevIndirect(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
