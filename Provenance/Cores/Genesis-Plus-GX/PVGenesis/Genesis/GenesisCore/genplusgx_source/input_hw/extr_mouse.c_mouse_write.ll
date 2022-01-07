; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/input_hw/extr_mouse.c_mouse_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/input_hw/extr_mouse.c_mouse_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32, i32 }

@mouse = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mouse_write(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse, i32 0, i32 0), align 4
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = xor i32 %8, -1
  %10 = and i32 %6, %9
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  %16 = or i32 %10, %15
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %3, align 1
  %18 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse, i32 0, i32 0), align 4
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %19, %21
  %23 = and i32 %22, 64
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 64
  %29 = ashr i32 %28, 6
  %30 = sub nsw i32 1, %29
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse, i32 0, i32 1), align 4
  br label %31

31:                                               ; preds = %25, %2
  %32 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse, i32 0, i32 0), align 4
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %3, align 1
  %35 = zext i8 %34 to i32
  %36 = xor i32 %33, %35
  %37 = and i32 %36, 32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse, i32 0, i32 1), align 4
  %44 = icmp slt i32 %43, 10
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse, i32 0, i32 1), align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse, i32 0, i32 1), align 4
  br label %48

48:                                               ; preds = %45, %42, %39
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse, i32 0, i32 2), align 4
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i8, i8* %3, align 1
  store i8 %50, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse, i32 0, i32 0), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
