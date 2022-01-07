; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_color_update_m4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_color_update_m4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@system_hw = common dso_local global i32 0, align 4
@tms_palette = common dso_local global i32* null, align 8
@reg = common dso_local global i32* null, align 8
@SYSTEM_MD = common dso_local global i32 0, align 4
@SYSTEM_GGMS = common dso_local global i32 0, align 4
@tms_crom = common dso_local global i32* null, align 8
@pixel_lut_m4 = common dso_local global i32* null, align 8
@pixel = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @color_update_m4(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @system_hw, align 4
  switch i32 %8, label %44 [
    i32 129, label %9
    i32 128, label %23
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = lshr i32 %10, 0
  %12 = and i32 %11, 15
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = lshr i32 %13, 4
  %15 = and i32 %14, 15
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = lshr i32 %16, 8
  %18 = and i32 %17, 15
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @MAKE_PIXEL(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %90

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 15
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32*, i32** @tms_palette, align 8
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 15
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  br label %43

34:                                               ; preds = %23
  %35 = load i32*, i32** @tms_palette, align 8
  %36 = load i32*, i32** @reg, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 7
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 15
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %34, %27
  br label %90

44:                                               ; preds = %2
  %45 = load i32*, i32** @reg, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %83, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @system_hw, align 4
  %52 = load i32, i32* @SYSTEM_MD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %82

56:                                               ; preds = %50
  %57 = load i32, i32* @system_hw, align 4
  %58 = load i32, i32* @SYSTEM_GGMS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, 15
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32*, i32** @tms_crom, align 8
  %66 = load i32, i32* %3, align 4
  %67 = and i32 %66, 15
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %4, align 4
  br label %80

71:                                               ; preds = %60
  %72 = load i32*, i32** @tms_crom, align 8
  %73 = load i32*, i32** @reg, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 7
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 15
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %71, %64
  br label %81

81:                                               ; preds = %80, %56
  br label %82

82:                                               ; preds = %81, %55
  br label %83

83:                                               ; preds = %82, %44
  %84 = load i32*, i32** @pixel_lut_m4, align 8
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, 63
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %83, %43, %9
  %91 = load i32*, i32** @reg, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %90
  %97 = load i32, i32* %4, align 4
  %98 = load i32*, i32** @pixel, align 8
  %99 = load i32, i32* %3, align 4
  %100 = or i32 0, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %97, i32* %102, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32*, i32** @pixel, align 8
  %105 = load i32, i32* %3, align 4
  %106 = or i32 32, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %103, i32* %108, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32*, i32** @pixel, align 8
  %111 = load i32, i32* %3, align 4
  %112 = or i32 128, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  store i32 %109, i32* %114, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32*, i32** @pixel, align 8
  %117 = load i32, i32* %3, align 4
  %118 = or i32 160, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %115, i32* %120, align 4
  br label %178

121:                                              ; preds = %90
  %122 = load i32, i32* %3, align 4
  %123 = icmp eq i32 %122, 64
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %3, align 4
  %126 = load i32*, i32** @reg, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 7
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 15
  %130 = or i32 16, %129
  %131 = icmp eq i32 %125, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %124, %121
  %133 = load i32, i32* %4, align 4
  %134 = load i32*, i32** @pixel, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 64
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %4, align 4
  %137 = load i32*, i32** @pixel, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 16
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32*, i32** @pixel, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 48
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load i32*, i32** @pixel, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 144
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %4, align 4
  %146 = load i32*, i32** @pixel, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 176
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %132, %124
  %149 = load i32, i32* %3, align 4
  %150 = and i32 %149, 15
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %177

152:                                              ; preds = %148
  %153 = load i32, i32* %4, align 4
  %154 = load i32*, i32** @pixel, align 8
  %155 = load i32, i32* %3, align 4
  %156 = or i32 0, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32 %153, i32* %158, align 4
  %159 = load i32, i32* %4, align 4
  %160 = load i32*, i32** @pixel, align 8
  %161 = load i32, i32* %3, align 4
  %162 = or i32 32, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  store i32 %159, i32* %164, align 4
  %165 = load i32, i32* %4, align 4
  %166 = load i32*, i32** @pixel, align 8
  %167 = load i32, i32* %3, align 4
  %168 = or i32 128, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 %165, i32* %170, align 4
  %171 = load i32, i32* %4, align 4
  %172 = load i32*, i32** @pixel, align 8
  %173 = load i32, i32* %3, align 4
  %174 = or i32 160, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  store i32 %171, i32* %176, align 4
  br label %177

177:                                              ; preds = %152, %148
  br label %178

178:                                              ; preds = %177, %96
  ret void
}

declare dso_local i32 @MAKE_PIXEL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
