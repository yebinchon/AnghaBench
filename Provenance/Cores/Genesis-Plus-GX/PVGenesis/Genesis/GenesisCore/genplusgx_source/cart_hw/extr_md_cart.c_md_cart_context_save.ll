; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_md_cart_context_save.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_md_cart_context_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32*, i32* }

@m68k = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@sram = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cart = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@svp = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_cart_context_save(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %41, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 64
  br i1 %8, label %9, label %44

9:                                                ; preds = %6
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @m68k, i32 0, i32 0), align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sram, i32 0, i32 0), align 8
  %18 = icmp eq i32* %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %9
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 255, i32* %24, align 4
  br label %40

25:                                               ; preds = %9
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cart, i32 0, i32 0), align 8
  %28 = ptrtoint i32* %26 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 4
  %32 = ashr i64 %31, 16
  %33 = and i64 %32, 255
  %34 = trunc i64 %33 to i32
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %34, i32* %39, align 4
  br label %40

40:                                               ; preds = %25, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %6

44:                                               ; preds = %6
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cart, i32 0, i32 1, i32 0), align 8
  %46 = call i32 @save_param(i32* %45, i32 8)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @svp, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @svp, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @save_param(i32* %52, i32 2048)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @svp, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @save_param(i32* %56, i32 8)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** @svp, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = call i32 @save_param(i32* %59, i32 4)
  br label %61

61:                                               ; preds = %49, %44
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @save_param(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
