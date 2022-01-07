; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_setup_art_colours.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_setup_art_colours.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@setup_art_colours.art_colpf1_save = internal global i32* @art_normal_colpf1_save, align 8
@art_normal_colpf1_save = common dso_local global i32 0, align 4
@setup_art_colours.art_colpf2_save = internal global i32* @art_normal_colpf2_save, align 8
@art_normal_colpf2_save = common dso_local global i32 0, align 4
@ANTIC_cl = common dso_local global i32* null, align 8
@C_PF1 = common dso_local global i64 0, align 8
@C_PF2 = common dso_local global i64 0, align 8
@art_reverse_colpf1_save = common dso_local global i32 0, align 4
@art_reverse_colpf2_save = common dso_local global i32 0, align 4
@art_lookup_reverse = common dso_local global i32* null, align 8
@art_curtable = common dso_local global i32* null, align 8
@art_lummask_reverse = common dso_local global i32* null, align 8
@art_curlummask = common dso_local global i32* null, align 8
@art_bkmask_reverse = common dso_local global i32* null, align 8
@art_curbkmask = common dso_local global i32* null, align 8
@art_lookup_normal = common dso_local global i32* null, align 8
@art_lummask_normal = common dso_local global i32* null, align 8
@art_bkmask_normal = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_art_colours to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_art_colours() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32*, i32** @ANTIC_cl, align 8
  %7 = load i64, i64* @C_PF1, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 3855
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32*, i32** @setup_art_colours.art_colpf1_save, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %0
  %16 = load i32*, i32** @ANTIC_cl, align 8
  %17 = load i64, i64* @C_PF2, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @setup_art_colours.art_colpf2_save, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %125

23:                                               ; preds = %15, %0
  %24 = load i32, i32* %1, align 4
  %25 = load i32*, i32** @ANTIC_cl, align 8
  %26 = load i64, i64* @C_PF2, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 3855
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  store i32* @art_reverse_colpf1_save, i32** @setup_art_colours.art_colpf1_save, align 8
  store i32* @art_reverse_colpf2_save, i32** @setup_art_colours.art_colpf2_save, align 8
  %32 = load i32*, i32** @art_lookup_reverse, align 8
  store i32* %32, i32** @art_curtable, align 8
  %33 = load i32*, i32** @art_lummask_reverse, align 8
  store i32* %33, i32** @art_curlummask, align 8
  %34 = load i32*, i32** @art_bkmask_reverse, align 8
  store i32* %34, i32** @art_curbkmask, align 8
  br label %39

35:                                               ; preds = %23
  store i32* @art_normal_colpf1_save, i32** @setup_art_colours.art_colpf1_save, align 8
  store i32* @art_normal_colpf2_save, i32** @setup_art_colours.art_colpf2_save, align 8
  %36 = load i32*, i32** @art_lookup_normal, align 8
  store i32* %36, i32** @art_curtable, align 8
  %37 = load i32*, i32** @art_lummask_normal, align 8
  store i32* %37, i32** @art_curlummask, align 8
  %38 = load i32*, i32** @art_bkmask_normal, align 8
  store i32* %38, i32** @art_curbkmask, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %1, align 4
  %41 = load i32*, i32** @setup_art_colours.art_colpf1_save, align 8
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %39
  %46 = load i32, i32* %1, align 4
  %47 = load i32*, i32** @setup_art_colours.art_colpf1_save, align 8
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %46, %48
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = shl i32 %50, 16
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %1, align 4
  %55 = load i32*, i32** @setup_art_colours.art_colpf1_save, align 8
  store i32 %54, i32* %55, align 4
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %73, %45
  %57 = load i32, i32* %2, align 4
  %58 = icmp sle i32 %57, 255
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i32*, i32** @art_curlummask, align 8
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %64, %65
  %67 = load i32*, i32** @art_curtable, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = xor i32 %71, %66
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %2, align 4
  br label %56

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76, %39
  %78 = load i32*, i32** @ANTIC_cl, align 8
  %79 = load i64, i64* @C_PF2, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** @setup_art_colours.art_colpf2_save, align 8
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %124

86:                                               ; preds = %77
  %87 = load i32*, i32** @ANTIC_cl, align 8
  %88 = load i64, i64* @C_PF2, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** @setup_art_colours.art_colpf2_save, align 8
  %92 = load i32, i32* %91, align 4
  %93 = xor i32 %90, %92
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = shl i32 %94, 16
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load i32*, i32** @ANTIC_cl, align 8
  %99 = load i64, i64* @C_PF2, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** @setup_art_colours.art_colpf2_save, align 8
  store i32 %101, i32* %102, align 4
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %120, %86
  %104 = load i32, i32* %4, align 4
  %105 = icmp sle i32 %104, 255
  br i1 %105, label %106, label %123

106:                                              ; preds = %103
  %107 = load i32*, i32** @art_curbkmask, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %111, %112
  %114 = load i32*, i32** @art_curtable, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = xor i32 %118, %113
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %106
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %103

123:                                              ; preds = %103
  br label %124

124:                                              ; preds = %123, %77
  br label %125

125:                                              ; preds = %124, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
