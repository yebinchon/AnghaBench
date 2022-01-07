; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/snes_ntsc/extr_snes_ntsc.c_retroarch_snes_ntsc_blit_hires.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/snes_ntsc/extr_snes_ntsc.c_retroarch_snes_ntsc_blit_hires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@snes_ntsc_in_chunk = common dso_local global i32 0, align 4
@snes_ntsc_black = common dso_local global i32 0, align 4
@SNES_NTSC_OUT_DEPTH = common dso_local global i32 0, align 4
@snes_ntsc_burst_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @retroarch_snes_ntsc_blit_hires(i32* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, i8* %6, i64 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %25 = load i32, i32* %15, align 4
  %26 = sub nsw i32 %25, 2
  %27 = load i32, i32* @snes_ntsc_in_chunk, align 4
  %28 = mul nsw i32 %27, 2
  %29 = sdiv i32 %26, %28
  store i32 %29, i32* %21, align 4
  br label %30

30:                                               ; preds = %188, %10
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %191

33:                                               ; preds = %30
  %34 = load i32*, i32** %12, align 8
  store i32* %34, i32** %22, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @snes_ntsc_black, align 4
  %38 = load i32, i32* @snes_ntsc_black, align 4
  %39 = load i32, i32* @snes_ntsc_black, align 4
  %40 = load i32*, i32** %22, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SNES_NTSC_ADJ_IN(i32 %42)
  %44 = load i32*, i32** %22, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SNES_NTSC_ADJ_IN(i32 %46)
  %48 = call i32 @SNES_NTSC_HIRES_ROW(i32* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %43, i32 %47)
  %49 = load i8*, i8** %17, align 8
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %23, align 8
  %51 = load i32*, i32** %22, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32* %52, i32** %22, align 8
  %53 = load i32, i32* %21, align 4
  store i32 %53, i32* %24, align 4
  br label %54

54:                                               ; preds = %127, %33
  %55 = load i32, i32* %24, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %130

57:                                               ; preds = %54
  %58 = load i32*, i32** %22, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @SNES_NTSC_ADJ_IN(i32 %60)
  %62 = call i32 @SNES_NTSC_COLOR_IN(i32 0, i32 %61)
  %63 = load i32*, i32** %23, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %67 = call i32 @SNES_NTSC_HIRES_OUT(i32 0, i32 %65, i32 %66)
  %68 = load i32*, i32** %22, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SNES_NTSC_ADJ_IN(i32 %70)
  %72 = call i32 @SNES_NTSC_COLOR_IN(i32 1, i32 %71)
  %73 = load i32*, i32** %23, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %77 = call i32 @SNES_NTSC_HIRES_OUT(i32 1, i32 %75, i32 %76)
  %78 = load i32*, i32** %22, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @SNES_NTSC_ADJ_IN(i32 %80)
  %82 = call i32 @SNES_NTSC_COLOR_IN(i32 2, i32 %81)
  %83 = load i32*, i32** %23, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %87 = call i32 @SNES_NTSC_HIRES_OUT(i32 2, i32 %85, i32 %86)
  %88 = load i32*, i32** %22, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SNES_NTSC_ADJ_IN(i32 %90)
  %92 = call i32 @SNES_NTSC_COLOR_IN(i32 3, i32 %91)
  %93 = load i32*, i32** %23, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %97 = call i32 @SNES_NTSC_HIRES_OUT(i32 3, i32 %95, i32 %96)
  %98 = load i32*, i32** %22, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @SNES_NTSC_ADJ_IN(i32 %100)
  %102 = call i32 @SNES_NTSC_COLOR_IN(i32 4, i32 %101)
  %103 = load i32*, i32** %23, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %107 = call i32 @SNES_NTSC_HIRES_OUT(i32 4, i32 %105, i32 %106)
  %108 = load i32*, i32** %22, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 5
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @SNES_NTSC_ADJ_IN(i32 %110)
  %112 = call i32 @SNES_NTSC_COLOR_IN(i32 5, i32 %111)
  %113 = load i32*, i32** %23, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 5
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %117 = call i32 @SNES_NTSC_HIRES_OUT(i32 5, i32 %115, i32 %116)
  %118 = load i32*, i32** %23, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 6
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %122 = call i32 @SNES_NTSC_HIRES_OUT(i32 6, i32 %120, i32 %121)
  %123 = load i32*, i32** %22, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 6
  store i32* %124, i32** %22, align 8
  %125 = load i32*, i32** %23, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 7
  store i32* %126, i32** %23, align 8
  br label %127

127:                                              ; preds = %57
  %128 = load i32, i32* %24, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %24, align 4
  br label %54

130:                                              ; preds = %54
  %131 = load i32, i32* @snes_ntsc_black, align 4
  %132 = call i32 @SNES_NTSC_COLOR_IN(i32 0, i32 %131)
  %133 = load i32*, i32** %23, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %137 = call i32 @SNES_NTSC_HIRES_OUT(i32 0, i32 %135, i32 %136)
  %138 = load i32, i32* @snes_ntsc_black, align 4
  %139 = call i32 @SNES_NTSC_COLOR_IN(i32 1, i32 %138)
  %140 = load i32*, i32** %23, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %144 = call i32 @SNES_NTSC_HIRES_OUT(i32 1, i32 %142, i32 %143)
  %145 = load i32, i32* @snes_ntsc_black, align 4
  %146 = call i32 @SNES_NTSC_COLOR_IN(i32 2, i32 %145)
  %147 = load i32*, i32** %23, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %151 = call i32 @SNES_NTSC_HIRES_OUT(i32 2, i32 %149, i32 %150)
  %152 = load i32, i32* @snes_ntsc_black, align 4
  %153 = call i32 @SNES_NTSC_COLOR_IN(i32 3, i32 %152)
  %154 = load i32*, i32** %23, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %158 = call i32 @SNES_NTSC_HIRES_OUT(i32 3, i32 %156, i32 %157)
  %159 = load i32, i32* @snes_ntsc_black, align 4
  %160 = call i32 @SNES_NTSC_COLOR_IN(i32 4, i32 %159)
  %161 = load i32*, i32** %23, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 4
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %165 = call i32 @SNES_NTSC_HIRES_OUT(i32 4, i32 %163, i32 %164)
  %166 = load i32, i32* @snes_ntsc_black, align 4
  %167 = call i32 @SNES_NTSC_COLOR_IN(i32 5, i32 %166)
  %168 = load i32*, i32** %23, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 5
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %172 = call i32 @SNES_NTSC_HIRES_OUT(i32 5, i32 %170, i32 %171)
  %173 = load i32*, i32** %23, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 6
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %177 = call i32 @SNES_NTSC_HIRES_OUT(i32 6, i32 %175, i32 %176)
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  %180 = load i32, i32* @snes_ntsc_burst_count, align 4
  %181 = srem i32 %179, %180
  store i32 %181, i32* %14, align 4
  %182 = load i64, i64* %13, align 8
  %183 = load i32*, i32** %12, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 %182
  store i32* %184, i32** %12, align 8
  %185 = load i8*, i8** %17, align 8
  %186 = load i64, i64* %18, align 8
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  store i8* %187, i8** %17, align 8
  br label %188

188:                                              ; preds = %130
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %16, align 4
  br label %30

191:                                              ; preds = %30
  ret void
}

declare dso_local i32 @SNES_NTSC_HIRES_ROW(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SNES_NTSC_ADJ_IN(i32) #1

declare dso_local i32 @SNES_NTSC_COLOR_IN(i32, i32) #1

declare dso_local i32 @SNES_NTSC_HIRES_OUT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
