; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_snes_ntscsnes_ntsc.c_retroarch_snes_ntsc_blit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_snes_ntscsnes_ntsc.c_retroarch_snes_ntsc_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@snes_ntsc_in_chunk = common dso_local global i32 0, align 4
@snes_ntsc_black = common dso_local global i32 0, align 4
@SNES_NTSC_OUT_DEPTH = common dso_local global i32 0, align 4
@snes_ntsc_burst_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @retroarch_snes_ntsc_blit(i32* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, i8* %6, i64 %7, i32 %8, i32 %9) #0 {
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
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* @snes_ntsc_in_chunk, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %21, align 4
  br label %29

29:                                               ; preds = %160, %10
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %163

32:                                               ; preds = %29
  %33 = load i32*, i32** %12, align 8
  store i32* %33, i32** %22, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @snes_ntsc_black, align 4
  %37 = load i32, i32* @snes_ntsc_black, align 4
  %38 = load i32*, i32** %22, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SNES_NTSC_ADJ_IN(i32 %39)
  %41 = call i32 @SNES_NTSC_BEGIN_ROW(i32* %34, i32 %35, i32 %36, i32 %37, i32 %40)
  %42 = load i8*, i8** %17, align 8
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %23, align 8
  %44 = load i32*, i32** %22, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %22, align 8
  %46 = load i32, i32* %21, align 4
  store i32 %46, i32* %24, align 4
  br label %47

47:                                               ; preds = %105, %32
  %48 = load i32, i32* %24, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %108

50:                                               ; preds = %47
  %51 = load i32*, i32** %22, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SNES_NTSC_ADJ_IN(i32 %53)
  %55 = call i32 @SNES_NTSC_COLOR_IN(i32 0, i32 %54)
  %56 = load i32*, i32** %23, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %60 = call i32 @SNES_NTSC_RGB_OUT(i32 0, i32 %58, i32 %59)
  %61 = load i32*, i32** %23, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %65 = call i32 @SNES_NTSC_RGB_OUT(i32 1, i32 %63, i32 %64)
  %66 = load i32*, i32** %22, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @SNES_NTSC_ADJ_IN(i32 %68)
  %70 = call i32 @SNES_NTSC_COLOR_IN(i32 1, i32 %69)
  %71 = load i32*, i32** %23, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %75 = call i32 @SNES_NTSC_RGB_OUT(i32 2, i32 %73, i32 %74)
  %76 = load i32*, i32** %23, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %80 = call i32 @SNES_NTSC_RGB_OUT(i32 3, i32 %78, i32 %79)
  %81 = load i32*, i32** %22, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SNES_NTSC_ADJ_IN(i32 %83)
  %85 = call i32 @SNES_NTSC_COLOR_IN(i32 2, i32 %84)
  %86 = load i32*, i32** %23, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %90 = call i32 @SNES_NTSC_RGB_OUT(i32 4, i32 %88, i32 %89)
  %91 = load i32*, i32** %23, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 5
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %95 = call i32 @SNES_NTSC_RGB_OUT(i32 5, i32 %93, i32 %94)
  %96 = load i32*, i32** %23, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 6
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %100 = call i32 @SNES_NTSC_RGB_OUT(i32 6, i32 %98, i32 %99)
  %101 = load i32*, i32** %22, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  store i32* %102, i32** %22, align 8
  %103 = load i32*, i32** %23, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 7
  store i32* %104, i32** %23, align 8
  br label %105

105:                                              ; preds = %50
  %106 = load i32, i32* %24, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %24, align 4
  br label %47

108:                                              ; preds = %47
  %109 = load i32, i32* @snes_ntsc_black, align 4
  %110 = call i32 @SNES_NTSC_COLOR_IN(i32 0, i32 %109)
  %111 = load i32*, i32** %23, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %115 = call i32 @SNES_NTSC_RGB_OUT(i32 0, i32 %113, i32 %114)
  %116 = load i32*, i32** %23, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %120 = call i32 @SNES_NTSC_RGB_OUT(i32 1, i32 %118, i32 %119)
  %121 = load i32, i32* @snes_ntsc_black, align 4
  %122 = call i32 @SNES_NTSC_COLOR_IN(i32 1, i32 %121)
  %123 = load i32*, i32** %23, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %127 = call i32 @SNES_NTSC_RGB_OUT(i32 2, i32 %125, i32 %126)
  %128 = load i32*, i32** %23, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %132 = call i32 @SNES_NTSC_RGB_OUT(i32 3, i32 %130, i32 %131)
  %133 = load i32, i32* @snes_ntsc_black, align 4
  %134 = call i32 @SNES_NTSC_COLOR_IN(i32 2, i32 %133)
  %135 = load i32*, i32** %23, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %139 = call i32 @SNES_NTSC_RGB_OUT(i32 4, i32 %137, i32 %138)
  %140 = load i32*, i32** %23, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 5
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %144 = call i32 @SNES_NTSC_RGB_OUT(i32 5, i32 %142, i32 %143)
  %145 = load i32*, i32** %23, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 6
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @SNES_NTSC_OUT_DEPTH, align 4
  %149 = call i32 @SNES_NTSC_RGB_OUT(i32 6, i32 %147, i32 %148)
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* @snes_ntsc_burst_count, align 4
  %153 = srem i32 %151, %152
  store i32 %153, i32* %14, align 4
  %154 = load i64, i64* %13, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 %154
  store i32* %156, i32** %12, align 8
  %157 = load i8*, i8** %17, align 8
  %158 = load i64, i64* %18, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8* %159, i8** %17, align 8
  br label %160

160:                                              ; preds = %108
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %16, align 4
  br label %29

163:                                              ; preds = %29
  ret void
}

declare dso_local i32 @SNES_NTSC_BEGIN_ROW(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @SNES_NTSC_ADJ_IN(i32) #1

declare dso_local i32 @SNES_NTSC_COLOR_IN(i32, i32) #1

declare dso_local i32 @SNES_NTSC_RGB_OUT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
