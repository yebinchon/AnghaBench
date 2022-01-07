; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_gfx.c_gfx_start.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_gfx.c_gfx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32* }

@scd = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@gfx = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfx_start(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 0), align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i64 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %77, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 1), align 8
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 %15, 2
  %17 = and i32 %16, 262136
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %14, %18
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 8), align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 44
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 1
  %27 = and i32 %26, 3
  switch i32 %27, label %32 [
    i32 0, label %28
    i32 1, label %29
    i32 2, label %30
    i32 3, label %31
  ]

28:                                               ; preds = %13
  store i32 524287, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 0), align 8
  store i32 15, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 1), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 2), align 8
  store i32 261632, i32* %5, align 4
  br label %32

29:                                               ; preds = %13
  store i32 524287, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 0), align 8
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 1), align 4
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 2), align 8
  store i32 262016, i32* %5, align 4
  br label %32

30:                                               ; preds = %13
  store i32 8388607, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 0), align 8
  store i32 15, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 1), align 4
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 2), align 8
  store i32 131072, i32* %5, align 4
  br label %32

31:                                               ; preds = %13
  store i32 8388607, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 0), align 8
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 1), align 4
  store i32 7, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 2), align 8
  store i32 229376, i32* %5, align 4
  br label %32

32:                                               ; preds = %13, %31, %30, %29, %28
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 1), align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 0), align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 45
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 2
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %33, %41
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 7), align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 0), align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 46
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 31
  %50 = add nsw i32 %49, 1
  %51 = shl i32 %50, 6
  %52 = sub nsw i32 %51, 7
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 3), align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 0), align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 47
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 3
  %58 = and i32 %57, 524224
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 4), align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 0), align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 48
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 63
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 4), align 8
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 4), align 8
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 5), align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 0), align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 49
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 20, %71
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx, i32 0, i32 6), align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 0), align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 44
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i32 128, i32* %76, align 4
  br label %77

77:                                               ; preds = %32, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
