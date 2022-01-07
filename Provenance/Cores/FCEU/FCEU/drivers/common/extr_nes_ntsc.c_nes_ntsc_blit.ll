; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/drivers/common/extr_nes_ntsc.c_nes_ntsc_blit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/drivers/common/extr_nes_ntsc.c_nes_ntsc_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nes_ntsc_in_chunk = common dso_local global i32 0, align 4
@nes_ntsc_black = common dso_local global i32 0, align 4
@OutputDepth = common dso_local global i32 0, align 4
@rescale_out = common dso_local global i32 0, align 4
@nes_ntsc_burst_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_ntsc_blit(i32* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i64 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i64 %8, i64* %18, align 8
  %23 = load i32, i32* %15, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @nes_ntsc_in_chunk, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* %19, align 4
  br label %27

27:                                               ; preds = %160, %9
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %163

30:                                               ; preds = %27
  %31 = load i32*, i32** %11, align 8
  store i32* %31, i32** %20, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @nes_ntsc_black, align 4
  %35 = load i32, i32* @nes_ntsc_black, align 4
  %36 = load i32*, i32** %20, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @NES_NTSC_ADJ_IN(i32 %37)
  %39 = call i32 @NES_NTSC_BEGIN_ROW(i32* %32, i32 %33, i32 %34, i32 %35, i32 %38)
  %40 = load i8*, i8** %17, align 8
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %21, align 8
  %42 = load i32*, i32** %20, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %20, align 8
  %44 = load i32, i32* %19, align 4
  store i32 %44, i32* %22, align 4
  br label %45

45:                                               ; preds = %105, %30
  %46 = load i32, i32* %22, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %108

48:                                               ; preds = %45
  %49 = load i32*, i32** %20, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @NES_NTSC_ADJ_IN(i32 %51)
  %53 = call i32 @NES_NTSC_COLOR_IN(i32 0, i32 %52)
  %54 = load i32*, i32** %21, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @OutputDepth, align 4
  %58 = call i32 @NES_NTSC_RGB_OUT(i32 0, i32 %56, i32 %57)
  %59 = load i32*, i32** %21, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OutputDepth, align 4
  %63 = call i32 @NES_NTSC_RGB_OUT(i32 1, i32 %61, i32 %62)
  %64 = load i32*, i32** %20, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @NES_NTSC_ADJ_IN(i32 %66)
  %68 = call i32 @NES_NTSC_COLOR_IN(i32 1, i32 %67)
  %69 = load i32*, i32** %21, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @OutputDepth, align 4
  %73 = call i32 @NES_NTSC_RGB_OUT(i32 2, i32 %71, i32 %72)
  %74 = load i32*, i32** %21, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @OutputDepth, align 4
  %78 = call i32 @NES_NTSC_RGB_OUT(i32 3, i32 %76, i32 %77)
  %79 = load i32*, i32** %20, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @NES_NTSC_ADJ_IN(i32 %81)
  %83 = call i32 @NES_NTSC_COLOR_IN(i32 2, i32 %82)
  %84 = load i32*, i32** %21, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @OutputDepth, align 4
  %88 = call i32 @NES_NTSC_RGB_OUT(i32 4, i32 %86, i32 %87)
  %89 = load i32*, i32** %21, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @OutputDepth, align 4
  %93 = call i32 @NES_NTSC_RGB_OUT(i32 5, i32 %91, i32 %92)
  %94 = load i32*, i32** %21, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 6
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @OutputDepth, align 4
  %98 = call i32 @NES_NTSC_RGB_OUT(i32 6, i32 %96, i32 %97)
  %99 = load i32*, i32** %20, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  store i32* %100, i32** %20, align 8
  %101 = load i32, i32* @rescale_out, align 4
  %102 = load i32*, i32** %21, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %21, align 8
  br label %105

105:                                              ; preds = %48
  %106 = load i32, i32* %22, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %22, align 4
  br label %45

108:                                              ; preds = %45
  %109 = load i32, i32* @nes_ntsc_black, align 4
  %110 = call i32 @NES_NTSC_COLOR_IN(i32 0, i32 %109)
  %111 = load i32*, i32** %21, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @OutputDepth, align 4
  %115 = call i32 @NES_NTSC_RGB_OUT(i32 0, i32 %113, i32 %114)
  %116 = load i32*, i32** %21, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @OutputDepth, align 4
  %120 = call i32 @NES_NTSC_RGB_OUT(i32 1, i32 %118, i32 %119)
  %121 = load i32, i32* @nes_ntsc_black, align 4
  %122 = call i32 @NES_NTSC_COLOR_IN(i32 1, i32 %121)
  %123 = load i32*, i32** %21, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @OutputDepth, align 4
  %127 = call i32 @NES_NTSC_RGB_OUT(i32 2, i32 %125, i32 %126)
  %128 = load i32*, i32** %21, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @OutputDepth, align 4
  %132 = call i32 @NES_NTSC_RGB_OUT(i32 3, i32 %130, i32 %131)
  %133 = load i32, i32* @nes_ntsc_black, align 4
  %134 = call i32 @NES_NTSC_COLOR_IN(i32 2, i32 %133)
  %135 = load i32*, i32** %21, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @OutputDepth, align 4
  %139 = call i32 @NES_NTSC_RGB_OUT(i32 4, i32 %137, i32 %138)
  %140 = load i32*, i32** %21, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 5
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @OutputDepth, align 4
  %144 = call i32 @NES_NTSC_RGB_OUT(i32 5, i32 %142, i32 %143)
  %145 = load i32*, i32** %21, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 6
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @OutputDepth, align 4
  %149 = call i32 @NES_NTSC_RGB_OUT(i32 6, i32 %147, i32 %148)
  %150 = load i8*, i8** %17, align 8
  %151 = load i64, i64* %18, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %17, align 8
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i32, i32* @nes_ntsc_burst_count, align 4
  %156 = srem i32 %154, %155
  store i32 %156, i32* %13, align 4
  %157 = load i64, i64* %12, align 8
  %158 = load i32*, i32** %11, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 %157
  store i32* %159, i32** %11, align 8
  br label %160

160:                                              ; preds = %108
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %16, align 4
  br label %27

163:                                              ; preds = %27
  ret void
}

declare dso_local i32 @NES_NTSC_BEGIN_ROW(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @NES_NTSC_ADJ_IN(i32) #1

declare dso_local i32 @NES_NTSC_COLOR_IN(i32, i32) #1

declare dso_local i32 @NES_NTSC_RGB_OUT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
