; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_custom_regs_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_md_cart.c_custom_regs_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@cart = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @custom_regs_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @custom_regs_w(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = ashr i32 %6, 16
  %8 = icmp sgt i32 %7, 111
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @mapper_32k_w(i32 %10)
  br label %76

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @default_regs_w(i32 %13, i32 %14)
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 0, i32 0), align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 0, i32 0), align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 3
  switch i32 %22, label %42 [
    i32 0, label %23
    i32 1, label %28
    i32 2, label %33
  ]

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 1
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 0, i32 0), align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %25, i32* %27, align 4
  br label %76

28:                                               ; preds = %12
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 1
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 0, i32 0), align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %30, i32* %32, align 4
  br label %76

33:                                               ; preds = %12
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 15
  %38 = shl i32 %37, 4
  %39 = or i32 %35, %38
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 0, i32 0), align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %39, i32* %41, align 4
  br label %76

42:                                               ; preds = %12
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, 7
  %45 = and i32 %44, 1
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 5
  %48 = and i32 %47, 2
  %49 = or i32 %45, %48
  %50 = load i32, i32* %5, align 4
  %51 = ashr i32 %50, 3
  %52 = and i32 %51, 4
  %53 = or i32 %49, %52
  %54 = load i32, i32* %5, align 4
  %55 = ashr i32 %54, 1
  %56 = and i32 %55, 8
  %57 = or i32 %53, %56
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 %58, 1
  %60 = and i32 %59, 16
  %61 = or i32 %57, %60
  %62 = load i32, i32* %5, align 4
  %63 = shl i32 %62, 3
  %64 = and i32 %63, 32
  %65 = or i32 %61, %64
  %66 = load i32, i32* %5, align 4
  %67 = shl i32 %66, 5
  %68 = and i32 %67, 64
  %69 = or i32 %65, %68
  %70 = load i32, i32* %5, align 4
  %71 = shl i32 %70, 7
  %72 = and i32 %71, 128
  %73 = or i32 %69, %72
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 0, i32 0), align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %9, %28, %33, %42, %23
  ret void
}

declare dso_local i32 @mapper_32k_w(i32) #1

declare dso_local i32 @default_regs_w(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
