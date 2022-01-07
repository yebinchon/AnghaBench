; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lut = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %69, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %72

7:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %65, %7
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %68

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = shl i32 %12, 8
  %14 = load i32, i32* %2, align 4
  %15 = or i32 %13, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %3, align 8
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @make_lut_bg(i32 %17, i32 %18)
  %20 = load i32**, i32*** @lut, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %19, i32* %24, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @make_lut_bgobj(i32 %25, i32 %26)
  %28 = load i32**, i32*** @lut, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @make_lut_bg_ste(i32 %33, i32 %34)
  %36 = load i32**, i32*** @lut, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @make_lut_obj(i32 %41, i32 %42)
  %44 = load i32**, i32*** @lut, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @make_lut_bgobj_ste(i32 %49, i32 %50)
  %52 = load i32**, i32*** @lut, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @make_lut_bgobj_m4(i32 %57, i32 %58)
  %60 = load i32**, i32*** @lut, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 5
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %3, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %59, i32* %64, align 4
  br label %65

65:                                               ; preds = %11
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %8

68:                                               ; preds = %8
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %1, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %1, align 4
  br label %4

72:                                               ; preds = %4
  %73 = call i32 (...) @palette_init()
  %74 = call i32 (...) @make_name_lut()
  %75 = call i32 (...) @make_bp_lut()
  ret void
}

declare dso_local i32 @make_lut_bg(i32, i32) #1

declare dso_local i32 @make_lut_bgobj(i32, i32) #1

declare dso_local i32 @make_lut_bg_ste(i32, i32) #1

declare dso_local i32 @make_lut_obj(i32, i32) #1

declare dso_local i32 @make_lut_bgobj_ste(i32, i32) #1

declare dso_local i32 @make_lut_bgobj_m4(i32, i32) #1

declare dso_local i32 @palette_init(...) #1

declare dso_local i32 @make_name_lut(...) #1

declare dso_local i32 @make_bp_lut(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
