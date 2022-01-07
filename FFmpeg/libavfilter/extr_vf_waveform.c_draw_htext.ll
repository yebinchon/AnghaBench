; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_draw_htext.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_draw_htext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32* }

@avpriv_cga_font = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, float, float, i8*, i32*)* @draw_htext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_htext(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, float %4, float %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %25 = load i32*, i32** @avpriv_cga_font, align 8
  store i32* %25, i32** %17, align 8
  store i32 8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %26

26:                                               ; preds = %145, %8
  %27 = load i32, i32* %20, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %20, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br label %38

38:                                               ; preds = %29, %26
  %39 = phi i1 [ false, %26 ], [ %37, %29 ]
  br i1 %39, label %40, label %148

40:                                               ; preds = %38
  store i32 0, i32* %19, align 4
  br label %41

41:                                               ; preds = %141, %40
  %42 = load i8*, i8** %15, align 8
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %144

48:                                               ; preds = %41
  %49 = load i32*, i32** %16, align 8
  %50 = load i32, i32* %20, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %23, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %20, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %61, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %60, i64 %70
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %19, align 4
  %74 = mul nsw i32 %73, 8
  %75 = add nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  store i32* %77, i32** %24, align 8
  store i32 0, i32* %21, align 4
  br label %78

78:                                               ; preds = %137, %48
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %18, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %140

82:                                               ; preds = %78
  store i32 128, i32* %22, align 4
  br label %83

83:                                               ; preds = %122, %82
  %84 = load i32, i32* %22, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %125

86:                                               ; preds = %83
  %87 = load i32*, i32** %17, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = load i32, i32* %18, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %21, align 4
  %97 = add nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %87, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %22, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %86
  %105 = load i32*, i32** %24, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = sitofp i32 %107 to float
  %109 = load float, float* %14, align 4
  %110 = fmul float %108, %109
  %111 = load i32, i32* %23, align 4
  %112 = sitofp i32 %111 to float
  %113 = load float, float* %13, align 4
  %114 = fmul float %112, %113
  %115 = fadd float %110, %114
  %116 = fptosi float %115 to i32
  %117 = load i32*, i32** %24, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %104, %86
  %120 = load i32*, i32** %24, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %24, align 8
  br label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %22, align 4
  %124 = ashr i32 %123, 1
  store i32 %124, i32* %22, align 4
  br label %83

125:                                              ; preds = %83
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %20, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 8
  %134 = load i32*, i32** %24, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %24, align 8
  br label %137

137:                                              ; preds = %125
  %138 = load i32, i32* %21, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %21, align 4
  br label %78

140:                                              ; preds = %78
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %19, align 4
  br label %41

144:                                              ; preds = %41
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %20, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %20, align 4
  br label %26

148:                                              ; preds = %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
