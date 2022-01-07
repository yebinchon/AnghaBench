; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_make_name_lut.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_make_name_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@name_lut = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @make_name_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_name_lut() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %67, %0
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %11, label %70

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 3
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %7, align 4
  %15 = ashr i32 %14, 2
  %16 = and i32 %15, 3
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 4
  %19 = and i32 %18, 3
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 6
  %22 = and i32 %21, 3
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 9
  %28 = and i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %11
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %11
  %37 = load i32*, i32** @name_lut, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 -1, i32* %40, align 4
  br label %66

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %1, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %2, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  %60 = mul nsw i32 %57, %59
  %61 = add nsw i32 %56, %60
  %62 = load i32*, i32** @name_lut, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %55, %36
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %8

70:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
