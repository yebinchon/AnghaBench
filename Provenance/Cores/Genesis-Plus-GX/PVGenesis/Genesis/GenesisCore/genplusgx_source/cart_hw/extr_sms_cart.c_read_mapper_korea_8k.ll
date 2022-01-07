; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_read_mapper_korea_8k.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_read_mapper_korea_8k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@z80_readmap = common dso_local global i8** null, align 8
@slot = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @read_mapper_korea_8k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @read_mapper_korea_8k(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %5 = load i8**, i8*** @z80_readmap, align 8
  %6 = load i32, i32* %2, align 4
  %7 = lshr i32 %6, 10
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8*, i8** %5, i64 %8
  %10 = load i8*, i8** %9, align 8
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 1023
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %3, align 1
  %16 = load i32, i32* %2, align 4
  %17 = lshr i32 %16, 14
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %4, align 1
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @slot, i32 0, i32 0), align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 128
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %22, %1
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %79

32:                                               ; preds = %28
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @slot, i32 0, i32 0), align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %79

38:                                               ; preds = %32, %22
  %39 = load i8, i8* %3, align 1
  %40 = zext i8 %39 to i32
  %41 = ashr i32 %40, 7
  %42 = and i32 %41, 1
  %43 = load i8, i8* %3, align 1
  %44 = zext i8 %43 to i32
  %45 = ashr i32 %44, 5
  %46 = and i32 %45, 2
  %47 = or i32 %42, %46
  %48 = load i8, i8* %3, align 1
  %49 = zext i8 %48 to i32
  %50 = ashr i32 %49, 3
  %51 = and i32 %50, 4
  %52 = or i32 %47, %51
  %53 = load i8, i8* %3, align 1
  %54 = zext i8 %53 to i32
  %55 = ashr i32 %54, 1
  %56 = and i32 %55, 8
  %57 = or i32 %52, %56
  %58 = load i8, i8* %3, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 1
  %61 = and i32 %60, 16
  %62 = or i32 %57, %61
  %63 = load i8, i8* %3, align 1
  %64 = zext i8 %63 to i32
  %65 = shl i32 %64, 3
  %66 = and i32 %65, 32
  %67 = or i32 %62, %66
  %68 = load i8, i8* %3, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 5
  %71 = and i32 %70, 64
  %72 = or i32 %67, %71
  %73 = load i8, i8* %3, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 7
  %76 = and i32 %75, 128
  %77 = or i32 %72, %76
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %3, align 1
  br label %79

79:                                               ; preds = %38, %32, %28
  %80 = load i8, i8* %3, align 1
  ret i8 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
