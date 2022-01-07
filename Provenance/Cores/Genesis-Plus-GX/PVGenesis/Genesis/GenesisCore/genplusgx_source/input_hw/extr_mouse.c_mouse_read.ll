; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/input_hw/extr_mouse.c_mouse_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/input_hw/extr_mouse.c_mouse_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, i32* }
%struct.TYPE_3__ = type { i64, i32, i32, i64 }

@input = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@mouse = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @mouse_read() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mouse, i32 0, i32 0), align 8
  %6 = getelementptr inbounds i32*, i32** %4, i64 %5
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %2, align 4
  %10 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 0), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mouse, i32 0, i32 0), align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mouse, i32 0, i32 1), align 8
  switch i32 %16, label %54 [
    i32 0, label %17
    i32 1, label %18
    i32 2, label %19
    i32 3, label %20
    i32 4, label %21
    i32 5, label %33
    i32 6, label %40
    i32 7, label %44
    i32 8, label %47
    i32 9, label %51
  ]

17:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %54

18:                                               ; preds = %0
  store i32 11, i32* %1, align 4
  br label %54

19:                                               ; preds = %0
  store i32 15, i32* %1, align 4
  br label %54

20:                                               ; preds = %0
  store i32 15, i32* %1, align 4
  br label %54

21:                                               ; preds = %0
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %1, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = shl i32 %29, 1
  %31 = load i32, i32* %1, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %1, align 4
  br label %54

33:                                               ; preds = %0
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 1), align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mouse, i32 0, i32 0), align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 4
  %39 = and i32 %38, 15
  store i32 %39, i32* %1, align 4
  br label %54

40:                                               ; preds = %0
  %41 = load i32, i32* %2, align 4
  %42 = ashr i32 %41, 4
  %43 = and i32 %42, 15
  store i32 %43, i32* %1, align 4
  br label %54

44:                                               ; preds = %0
  %45 = load i32, i32* %2, align 4
  %46 = and i32 %45, 15
  store i32 %46, i32* %1, align 4
  br label %54

47:                                               ; preds = %0
  %48 = load i32, i32* %3, align 4
  %49 = ashr i32 %48, 4
  %50 = and i32 %49, 15
  store i32 %50, i32* %1, align 4
  br label %54

51:                                               ; preds = %0
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, 15
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %0, %51, %47, %44, %40, %33, %21, %20, %19, %18, %17
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mouse, i32 0, i32 3), align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mouse, i32 0, i32 3), align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mouse, i32 0, i32 2), align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %59, 32
  %61 = ashr i32 %60, 1
  %62 = load i32, i32* %1, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %1, align 4
  br label %70

64:                                               ; preds = %54
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mouse, i32 0, i32 2), align 4
  %66 = and i32 %65, 32
  %67 = ashr i32 %66, 1
  %68 = load i32, i32* %1, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %1, align 4
  br label %70

70:                                               ; preds = %64, %57
  %71 = load i32, i32* %1, align 4
  %72 = trunc i32 %71 to i8
  ret i8 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
