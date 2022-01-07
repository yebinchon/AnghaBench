; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_patches_menu_loop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_patches_menu_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PBTN_UP = common dso_local global i64 0, align 8
@PBTN_DOWN = common dso_local global i64 0, align 8
@PBTN_LEFT = common dso_local global i64 0, align 8
@PBTN_RIGHT = common dso_local global i64 0, align 8
@PBTN_L = common dso_local global i64 0, align 8
@PBTN_R = common dso_local global i64 0, align 8
@PBTN_X = common dso_local global i64 0, align 8
@PBTN_CIRCLE = common dso_local global i64 0, align 8
@PicoPatchCount = common dso_local global i32 0, align 4
@PicoPatches = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @patches_menu_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @patches_menu_loop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %109, %0
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @draw_patchlist(i32 %4)
  %6 = load i64, i64* @PBTN_UP, align 8
  %7 = load i64, i64* @PBTN_DOWN, align 8
  %8 = or i64 %6, %7
  %9 = load i64, i64* @PBTN_LEFT, align 8
  %10 = or i64 %8, %9
  %11 = load i64, i64* @PBTN_RIGHT, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* @PBTN_L, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @PBTN_R, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @PBTN_X, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @PBTN_CIRCLE, align 8
  %20 = or i64 %18, %19
  %21 = call i64 @in_menu_wait(i64 %20, i32 0)
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @PBTN_UP, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @PicoPatchCount, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %31, %26
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* @PBTN_DOWN, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @PicoPatchCount, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %1, align 4
  br label %46

46:                                               ; preds = %45, %39
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @PBTN_LEFT, align 8
  %50 = load i64, i64* @PBTN_L, align 8
  %51 = or i64 %49, %50
  %52 = and i64 %48, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i32, i32* %1, align 4
  %56 = sub nsw i32 %55, 10
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %59, %54
  br label %61

61:                                               ; preds = %60, %47
  %62 = load i64, i64* %2, align 8
  %63 = load i64, i64* @PBTN_RIGHT, align 8
  %64 = load i64, i64* @PBTN_R, align 8
  %65 = or i64 %63, %64
  %66 = and i64 %62, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 10
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %1, align 4
  %72 = load i32, i32* @PicoPatchCount, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @PicoPatchCount, align 4
  store i32 %75, i32* %1, align 4
  br label %76

76:                                               ; preds = %74, %68
  br label %77

77:                                               ; preds = %76, %61
  %78 = load i64, i64* %2, align 8
  %79 = load i64, i64* @PBTN_CIRCLE, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %77
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @PicoPatchCount, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PicoPatches, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PicoPatches, align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32 %95, i32* %100, align 4
  br label %102

101:                                              ; preds = %82
  br label %110

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %77
  %104 = load i64, i64* %2, align 8
  %105 = load i64, i64* @PBTN_X, align 8
  %106 = and i64 %104, %105
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %110

109:                                              ; preds = %103
  br label %3

110:                                              ; preds = %108, %101
  ret void
}

declare dso_local i32 @draw_patchlist(i32) #1

declare dso_local i64 @in_menu_wait(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
