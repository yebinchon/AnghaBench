; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_md_cart_reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_md_cart_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@cart = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@m68k = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@svp = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@HW_LOCK_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_cart_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cart, i32 0, i32 3, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %23, %6
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 64
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cart, i32 0, i32 2), align 8
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 16
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cart, i32 0, i32 0), align 8
  %15 = and i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %11, %16
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m68k, i32 0, i32 0), align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i64 %17, i64* %22, align 8
  br label %23

23:                                               ; preds = %10
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %7

26:                                               ; preds = %7
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i64, i64* @svp, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (...) @svp_reset()
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 0), align 4
  switch i32 %33, label %67 [
    i32 129, label %34
    i32 130, label %37
    i32 128, label %40
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @ggenie_reset(i32 %35)
  br label %68

37:                                               ; preds = %32
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @areplay_reset(i32 %38)
  br label %68

40:                                               ; preds = %32
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cart, i32 0, i32 1), align 4
  %42 = load i32, i32* @HW_LOCK_ON, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  store i32 48, i32* %3, align 4
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 64
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cart, i32 0, i32 2), align 8
  %51 = load i32, i32* %3, align 4
  %52 = shl i32 %51, 16
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cart, i32 0, i32 0), align 8
  %54 = and i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %50, %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m68k, i32 0, i32 0), align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i64 %56, i64* %61, align 8
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %46

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65, %40
  br label %68

67:                                               ; preds = %32
  br label %68

68:                                               ; preds = %67, %66, %37, %34
  ret void
}

declare dso_local i32 @svp_reset(...) #1

declare dso_local i32 @ggenie_reset(i32) #1

declare dso_local i32 @areplay_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
