; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_draw_an_gtia11.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_draw_an_gtia11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GTIA_pm_scanline = common dso_local global i32* null, align 8
@right_border_start = common dso_local global i32 0, align 4
@scrn_ptr = common dso_local global i32* null, align 8
@an_scanline = common dso_local global i32* null, align 8
@ANTIC_lookup_gtia11 = common dso_local global i32* null, align 8
@pm_lookup_ptr = common dso_local global i32* null, align 8
@L_PF3 = common dso_local global i32 0, align 4
@ANTIC_cl = common dso_local global i32* null, align 8
@C_PF3 = common dso_local global i64 0, align 8
@GTIA_COLPF3 = common dso_local global i32 0, align 4
@colour_translation_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @draw_an_gtia11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_an_gtia11(i32* %0) #0 {
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

15:                                               ; preds = %141, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @right_border_start, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %144

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
  %38 = load i32*, i32** @ANTIC_lookup_gtia11, align 8
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
  br i1 %50, label %51, label %90

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
  br i1 %59, label %60, label %84

60:                                               ; preds = %51
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = shl i32 %65, 4
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 %67, 12
  %69 = or i32 %66, %68
  %70 = load i32*, i32** @ANTIC_cl, align 8
  %71 = load i64, i64* @C_PF3, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %69, %73
  br label %81

75:                                               ; preds = %60
  %76 = load i32*, i32** @ANTIC_cl, align 8
  %77 = load i64, i64* @C_PF3, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 61680
  br label %81

81:                                               ; preds = %75, %64
  %82 = phi i32 [ %74, %64 ], [ %80, %75 ]
  %83 = call i32 @WRITE_VIDEO(i32* %61, i32 %82)
  br label %89

84:                                               ; preds = %51
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @COLOUR(i32 %86)
  %88 = call i32 @WRITE_VIDEO(i32* %85, i32 %87)
  br label %89

89:                                               ; preds = %84, %81
  br label %90

90:                                               ; preds = %89, %19
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  %93 = load i32*, i32** @GTIA_pm_scanline, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %141

100:                                              ; preds = %90
  %101 = load i32*, i32** @pm_lookup_ptr, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @L_PF3, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %100
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load i32, i32* %5, align 4
  %116 = shl i32 %115, 4
  %117 = load i32, i32* %5, align 4
  %118 = shl i32 %117, 12
  %119 = or i32 %116, %118
  %120 = load i32*, i32** @ANTIC_cl, align 8
  %121 = load i64, i64* @C_PF3, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %119, %123
  br label %131

125:                                              ; preds = %109
  %126 = load i32*, i32** @ANTIC_cl, align 8
  %127 = load i64, i64* @C_PF3, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 61680
  br label %131

131:                                              ; preds = %125, %114
  %132 = phi i32 [ %124, %114 ], [ %130, %125 ]
  %133 = call i32 @WRITE_VIDEO(i32* %111, i32 %132)
  br label %140

134:                                              ; preds = %100
  %135 = load i32*, i32** %4, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @COLOUR(i32 %137)
  %139 = call i32 @WRITE_VIDEO(i32* %136, i32 %138)
  br label %140

140:                                              ; preds = %134, %131
  br label %141

141:                                              ; preds = %140, %90
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %15

144:                                              ; preds = %15
  %145 = call i32 (...) @do_border_gtia11()
  ret void
}

declare dso_local i32 @WRITE_VIDEO_LONG(i32*, i32) #1

declare dso_local i32 @WRITE_VIDEO(i32*, i32) #1

declare dso_local i32 @COLOUR(i32) #1

declare dso_local i32 @do_border_gtia11(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
