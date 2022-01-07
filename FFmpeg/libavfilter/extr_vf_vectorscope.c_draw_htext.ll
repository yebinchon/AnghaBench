; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_draw_htext.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_draw_htext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32* }

@avpriv_cga_font = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, float, float, i8*, i32*)* @draw_htext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_htext(%struct.TYPE_3__* %0, i32 %1, i32 %2, float %3, float %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %23 = load i32*, i32** @avpriv_cga_font, align 8
  store i32* %23, i32** %15, align 8
  store i32 8, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %24

24:                                               ; preds = %144, %7
  %25 = load i32, i32* %18, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br label %36

36:                                               ; preds = %27, %24
  %37 = phi i1 [ false, %24 ], [ %35, %27 ]
  br i1 %37, label %38, label %147

38:                                               ; preds = %36
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %140, %38
  %40 = load i8*, i8** %13, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %143

46:                                               ; preds = %39
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %21, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %59, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %58, i64 %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %17, align 4
  %72 = mul nsw i32 %71, 8
  %73 = add nsw i32 %70, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  store i32* %75, i32** %22, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %19, align 4
  br label %78

78:                                               ; preds = %136, %46
  %79 = load i32, i32* %19, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %139

81:                                               ; preds = %78
  store i32 128, i32* %20, align 4
  br label %82

82:                                               ; preds = %121, %81
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %124

85:                                               ; preds = %82
  %86 = load i32*, i32** %15, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = load i32, i32* %16, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %19, align 4
  %96 = add nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %86, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %20, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %85
  %104 = load i32*, i32** %22, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = sitofp i32 %106 to float
  %108 = load float, float* %12, align 4
  %109 = fmul float %107, %108
  %110 = load i32, i32* %21, align 4
  %111 = sitofp i32 %110 to float
  %112 = load float, float* %11, align 4
  %113 = fmul float %111, %112
  %114 = fadd float %109, %113
  %115 = fptosi float %114 to i32
  %116 = load i32*, i32** %22, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %103, %85
  %119 = load i32*, i32** %22, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %22, align 8
  br label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %20, align 4
  %123 = ashr i32 %122, 1
  store i32 %123, i32* %20, align 4
  br label %82

124:                                              ; preds = %82
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %131, 8
  %133 = load i32*, i32** %22, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %22, align 8
  br label %136

136:                                              ; preds = %124
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %19, align 4
  br label %78

139:                                              ; preds = %78
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  br label %39

143:                                              ; preds = %39
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %18, align 4
  br label %24

147:                                              ; preds = %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
