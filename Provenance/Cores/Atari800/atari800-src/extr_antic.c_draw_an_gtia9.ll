; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_draw_an_gtia9.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_draw_an_gtia9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GTIA_pm_scanline = common dso_local global i32* null, align 8
@right_border_start = common dso_local global i32 0, align 4
@scrn_ptr = common dso_local global i32* null, align 8
@an_scanline = common dso_local global i32* null, align 8
@ANTIC_lookup_gtia9 = common dso_local global i32* null, align 8
@pm_lookup_ptr = common dso_local global i32* null, align 8
@L_PF3 = common dso_local global i32 0, align 4
@ANTIC_cl = common dso_local global i32* null, align 8
@C_PF3 = common dso_local global i64 0, align 8
@GTIA_COLPF3 = common dso_local global i32 0, align 4
@colour_translation_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @draw_an_gtia9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_an_gtia9(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32*, i32** @GTIA_pm_scanline, align 8
  %9 = ptrtoint i32* %7 to i64
  %10 = ptrtoint i32* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  %13 = and i64 %12, -2
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %117, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @right_border_start, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %120

19:                                               ; preds = %15
  %20 = load i32*, i32** @scrn_ptr, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** @an_scanline, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 2
  %30 = load i32*, i32** @an_scanline, align 8
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %29, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** @ANTIC_lookup_gtia9, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @WRITE_VIDEO_LONG(i32* %37, i32 %42)
  %44 = load i32*, i32** @GTIA_pm_scanline, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %19
  %52 = load i32*, i32** @pm_lookup_ptr, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @L_PF3, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %51
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = shl i32 %63, 8
  %65 = or i32 %62, %64
  %66 = load i32*, i32** @ANTIC_cl, align 8
  %67 = load i64, i64* @C_PF3, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %65, %69
  %71 = call i32 @WRITE_VIDEO(i32* %61, i32 %70)
  br label %77

72:                                               ; preds = %51
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @COLOUR(i32 %74)
  %76 = call i32 @WRITE_VIDEO(i32* %73, i32 %75)
  br label %77

77:                                               ; preds = %72, %60
  br label %78

78:                                               ; preds = %77, %19
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  %81 = load i32*, i32** @GTIA_pm_scanline, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %78
  %89 = load i32*, i32** @pm_lookup_ptr, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @L_PF3, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %88
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = shl i32 %101, 8
  %103 = or i32 %100, %102
  %104 = load i32*, i32** @ANTIC_cl, align 8
  %105 = load i64, i64* @C_PF3, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %103, %107
  %109 = call i32 @WRITE_VIDEO(i32* %99, i32 %108)
  br label %116

110:                                              ; preds = %88
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @COLOUR(i32 %113)
  %115 = call i32 @WRITE_VIDEO(i32* %112, i32 %114)
  br label %116

116:                                              ; preds = %110, %97
  br label %117

117:                                              ; preds = %116, %78
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  br label %15

120:                                              ; preds = %15
  %121 = call i32 (...) @do_border()
  ret void
}

declare dso_local i32 @WRITE_VIDEO_LONG(i32*, i32) #1

declare dso_local i32 @WRITE_VIDEO(i32*, i32) #1

declare dso_local i32 @COLOUR(i32) #1

declare dso_local i32 @do_border(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
