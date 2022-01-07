; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_color_update_m5.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_color_update_m5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = common dso_local global i32* null, align 8
@pixel_lut = common dso_local global i8*** null, align 8
@pixel = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @color_update_m5(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** @reg, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 73
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32*, i32** @reg, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 12
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %13
  %20 = load i8***, i8**** @pixel_lut, align 8
  %21 = getelementptr inbounds i8**, i8*** %20, i64 0
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = load i32*, i32** @pixel, align 8
  %29 = load i32, i32* %3, align 4
  %30 = or i32 0, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %27, i32* %32, align 4
  %33 = load i8***, i8**** @pixel_lut, align 8
  %34 = getelementptr inbounds i8**, i8*** %33, i64 1
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = load i32*, i32** @pixel, align 8
  %42 = load i32, i32* %3, align 4
  %43 = or i32 64, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %40, i32* %45, align 4
  %46 = load i8***, i8**** @pixel_lut, align 8
  %47 = getelementptr inbounds i8**, i8*** %46, i64 2
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load i32*, i32** @pixel, align 8
  %55 = load i32, i32* %3, align 4
  %56 = or i32 128, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %53, i32* %58, align 4
  br label %86

59:                                               ; preds = %13
  %60 = load i8***, i8**** @pixel_lut, align 8
  %61 = getelementptr inbounds i8**, i8*** %60, i64 1
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32*, i32** @pixel, align 8
  %70 = load i32, i32* %3, align 4
  %71 = or i32 0, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32*, i32** @pixel, align 8
  %76 = load i32, i32* %3, align 4
  %77 = or i32 64, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  store i32 %74, i32* %79, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32*, i32** @pixel, align 8
  %82 = load i32, i32* %3, align 4
  %83 = or i32 128, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  br label %86

86:                                               ; preds = %59, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
