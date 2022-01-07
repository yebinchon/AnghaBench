; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_idraw_htext16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_idraw_htext16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64* }

@avpriv_cga_font = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, float, float, i8*, i32*)* @idraw_htext16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idraw_htext16(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, float %4, float %5, i8* %6, i32* %7) #0 {
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
  %24 = alloca float*, align 8
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

26:                                               ; preds = %151, %8
  %27 = load i32, i32* %20, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %20, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %29, %26
  %39 = phi i1 [ false, %26 ], [ %37, %29 ]
  br i1 %39, label %40, label %154

40:                                               ; preds = %38
  store i32 0, i32* %19, align 4
  br label %41

41:                                               ; preds = %147, %40
  %42 = load i8*, i8** %15, align 8
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %150

48:                                               ; preds = %41
  %49 = load i32*, i32** %16, align 8
  %50 = load i32, i32* %20, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %23, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %20, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %20, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %63, %70
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %62, %72
  %74 = inttoptr i64 %73 to float*
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %19, align 4
  %77 = mul nsw i32 %76, 8
  %78 = add nsw i32 %75, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %74, i64 %79
  store float* %80, float** %24, align 8
  store i32 0, i32* %21, align 4
  br label %81

81:                                               ; preds = %143, %48
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %146

85:                                               ; preds = %81
  store i32 128, i32* %22, align 4
  br label %86

86:                                               ; preds = %127, %85
  %87 = load i32, i32* %22, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %130

89:                                               ; preds = %86
  %90 = load i32*, i32** %17, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = load i32, i32* %18, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %21, align 4
  %100 = add nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %90, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %22, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %89
  %108 = load float*, float** %24, align 8
  %109 = getelementptr inbounds float, float* %108, i64 0
  %110 = load float, float* %109, align 4
  %111 = load float, float* %14, align 4
  %112 = fmul float %110, %111
  %113 = load i32, i32* %23, align 4
  %114 = sitofp i32 %113 to float
  %115 = load float*, float** %24, align 8
  %116 = getelementptr inbounds float, float* %115, i64 0
  %117 = load float, float* %116, align 4
  %118 = fsub float %114, %117
  %119 = load float, float* %13, align 4
  %120 = fmul float %118, %119
  %121 = fadd float %112, %120
  %122 = load float*, float** %24, align 8
  %123 = getelementptr inbounds float, float* %122, i64 0
  store float %121, float* %123, align 4
  br label %124

124:                                              ; preds = %107, %89
  %125 = load float*, float** %24, align 8
  %126 = getelementptr inbounds float, float* %125, i32 1
  store float* %126, float** %24, align 8
  br label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %22, align 4
  %129 = ashr i32 %128, 1
  store i32 %129, i32* %22, align 4
  br label %86

130:                                              ; preds = %86
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %20, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %137, 2
  %139 = sub nsw i32 %138, 8
  %140 = load float*, float** %24, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds float, float* %140, i64 %141
  store float* %142, float** %24, align 8
  br label %143

143:                                              ; preds = %130
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %21, align 4
  br label %81

146:                                              ; preds = %81
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %19, align 4
  br label %41

150:                                              ; preds = %41
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %20, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %20, align 4
  br label %26

154:                                              ; preds = %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
