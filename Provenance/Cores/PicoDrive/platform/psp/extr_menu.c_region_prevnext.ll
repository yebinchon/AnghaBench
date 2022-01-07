; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_region_prevnext.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_region_prevnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@region_prevnext.rgn_orders = internal global [6 x i32] [i32 328, i32 388, i32 2068, i32 1048, i32 2113, i32 1153], align 16
@PicoRegionOverride = common dso_local global i32 0, align 4
@PicoAutoRgnOrder = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @region_prevnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @region_prevnext(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = load i32, i32* @PicoRegionOverride, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %6
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %22, %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 6
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* @region_prevnext.rgn_orders, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PicoAutoRgnOrder, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %25

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %10

25:                                               ; preds = %20, %10
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 5
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* @region_prevnext.rgn_orders, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* @PicoAutoRgnOrder, align 4
  br label %35

34:                                               ; preds = %25
  store i32 1, i32* @PicoRegionOverride, align 4
  br label %35

35:                                               ; preds = %34, %28
  br label %39

36:                                               ; preds = %6
  %37 = load i32, i32* @PicoRegionOverride, align 4
  %38 = shl i32 %37, 1
  store i32 %38, i32* @PicoRegionOverride, align 4
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i32, i32* @PicoRegionOverride, align 4
  %41 = icmp sgt i32 %40, 8
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 8, i32* @PicoRegionOverride, align 4
  br label %43

43:                                               ; preds = %42, %39
  br label %77

44:                                               ; preds = %1
  %45 = load i32, i32* @PicoRegionOverride, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %73, label %47

47:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 6
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* @region_prevnext.rgn_orders, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PicoAutoRgnOrder, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %48

63:                                               ; preds = %58, %48
  %64 = load i32, i32* %3, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* @region_prevnext.rgn_orders, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* @PicoAutoRgnOrder, align 4
  br label %72

72:                                               ; preds = %66, %63
  br label %76

73:                                               ; preds = %44
  %74 = load i32, i32* @PicoRegionOverride, align 4
  %75 = ashr i32 %74, 1
  store i32 %75, i32* @PicoRegionOverride, align 4
  br label %76

76:                                               ; preds = %73, %72
  br label %77

77:                                               ; preds = %76, %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
