; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_mh_opt_sh2cycles.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_mh_opt_sh2cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MA_32XOPT_MSH2_CYCLES = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PBTN_LEFT = common dso_local global i32 0, align 4
@PBTN_RIGHT = common dso_local global i32 0, align 4
@PBTN_L = common dso_local global i32 0, align 4
@PBTN_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mh_opt_sh2cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mh_opt_sh2cycles(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MA_32XOPT_MSH2_CYCLES, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 1)
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PBTN_LEFT, align 4
  %13 = load i32, i32* @PBTN_RIGHT, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PBTN_LEFT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 -50, i32 50
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %17, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PBTN_L, align 4
  %30 = load i32, i32* @PBTN_R, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PBTN_L, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 -500, i32 500
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %34, %27
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  store i32 1, i32* %49, align 4
  br label %57

50:                                               ; preds = %44
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 2147483
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32*, i32** %5, align 8
  store i32 2147483, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %50
  br label %57

57:                                               ; preds = %56, %48
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
