; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_draw_htext16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_draw_htext16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64* }

@avpriv_cga_font = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, float, float, i8*, float*)* @draw_htext16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_htext16(%struct.TYPE_3__* %0, i32 %1, i32 %2, float %3, float %4, i8* %5, float* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i8*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store i8* %5, i8** %13, align 8
  store float* %6, float** %14, align 8
  %23 = load i32*, i32** @avpriv_cga_font, align 8
  store i32* %23, i32** %15, align 8
  store i32 8, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %24

24:                                               ; preds = %145, %7
  %25 = load i32, i32* %18, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %27, %24
  %37 = phi i1 [ false, %24 ], [ %35, %27 ]
  br i1 %37, label %38, label %148

38:                                               ; preds = %36
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %141, %38
  %40 = load i8*, i8** %13, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %144

46:                                               ; preds = %39
  %47 = load float*, float** %14, align 8
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fptosi float %51 to i32
  store i32 %52, i32* %21, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %60, %67
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %59, %69
  %71 = inttoptr i64 %70 to float*
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %17, align 4
  %74 = mul nsw i32 %73, 8
  %75 = add nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %71, i64 %76
  store float* %77, float** %22, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %19, align 4
  br label %80

80:                                               ; preds = %137, %46
  %81 = load i32, i32* %19, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %140

83:                                               ; preds = %80
  store i32 128, i32* %20, align 4
  br label %84

84:                                               ; preds = %121, %83
  %85 = load i32, i32* %20, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %124

87:                                               ; preds = %84
  %88 = load i32*, i32** %15, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = load i32, i32* %16, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %19, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %88, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %20, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %87
  %106 = load float*, float** %22, align 8
  %107 = getelementptr inbounds float, float* %106, i64 0
  %108 = load float, float* %107, align 4
  %109 = load float, float* %12, align 4
  %110 = fmul float %108, %109
  %111 = load i32, i32* %21, align 4
  %112 = sitofp i32 %111 to float
  %113 = load float, float* %11, align 4
  %114 = fmul float %112, %113
  %115 = fadd float %110, %114
  %116 = load float*, float** %22, align 8
  %117 = getelementptr inbounds float, float* %116, i64 0
  store float %115, float* %117, align 4
  br label %118

118:                                              ; preds = %105, %87
  %119 = load float*, float** %22, align 8
  %120 = getelementptr inbounds float, float* %119, i32 1
  store float* %120, float** %22, align 8
  br label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %20, align 4
  %123 = ashr i32 %122, 1
  store i32 %123, i32* %20, align 4
  br label %84

124:                                              ; preds = %84
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = sdiv i32 %131, 2
  %133 = sub nsw i32 %132, 8
  %134 = load float*, float** %22, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds float, float* %134, i64 %135
  store float* %136, float** %22, align 8
  br label %137

137:                                              ; preds = %124
  %138 = load i32, i32* %19, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %19, align 4
  br label %80

140:                                              ; preds = %80
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %17, align 4
  br label %39

144:                                              ; preds = %39
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %18, align 4
  br label %24

148:                                              ; preds = %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
