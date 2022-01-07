; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_palette_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_palette_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pixel_lut = common dso_local global i8*** null, align 8
@pixel_lut_m4 = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @palette_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @palette_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %54, %0
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 512
  br i1 %7, label %8, label %57

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 0
  %11 = and i32 %10, 7
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 3
  %14 = and i32 %13, 7
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 6
  %17 = and i32 %16, 7
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i8* @MAKE_PIXEL(i32 %18, i32 %19, i32 %20)
  %22 = load i8***, i8**** @pixel_lut, align 8
  %23 = getelementptr inbounds i8**, i8*** %22, i64 0
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  store i8* %21, i8** %27, align 8
  %28 = load i32, i32* %1, align 4
  %29 = shl i32 %28, 1
  %30 = load i32, i32* %2, align 4
  %31 = shl i32 %30, 1
  %32 = load i32, i32* %3, align 4
  %33 = shl i32 %32, 1
  %34 = call i8* @MAKE_PIXEL(i32 %29, i32 %31, i32 %33)
  %35 = load i8***, i8**** @pixel_lut, align 8
  %36 = getelementptr inbounds i8**, i8*** %35, i64 1
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  store i8* %34, i8** %40, align 8
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 7
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 7
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 7
  %47 = call i8* @MAKE_PIXEL(i32 %42, i32 %44, i32 %46)
  %48 = load i8***, i8**** @pixel_lut, align 8
  %49 = getelementptr inbounds i8**, i8*** %48, i64 2
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* %47, i8** %53, align 8
  br label %54

54:                                               ; preds = %8
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %5

57:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %82, %57
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 64
  br i1 %60, label %61, label %85

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = ashr i32 %62, 0
  %64 = and i32 %63, 3
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* %4, align 4
  %66 = ashr i32 %65, 2
  %67 = and i32 %66, 3
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* %4, align 4
  %69 = ashr i32 %68, 4
  %70 = and i32 %69, 3
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %1, align 4
  %72 = shl i32 %71, 2
  %73 = load i32, i32* %2, align 4
  %74 = shl i32 %73, 2
  %75 = load i32, i32* %3, align 4
  %76 = shl i32 %75, 2
  %77 = call i8* @MAKE_PIXEL(i32 %72, i32 %74, i32 %76)
  %78 = load i8**, i8*** @pixel_lut_m4, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %77, i8** %81, align 8
  br label %82

82:                                               ; preds = %61
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %58

85:                                               ; preds = %58
  ret void
}

declare dso_local i8* @MAKE_PIXEL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
