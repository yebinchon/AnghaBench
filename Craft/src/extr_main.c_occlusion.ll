; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_occlusion.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_occlusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@occlusion.lookup3 = internal constant [6 x [4 x [3 x i32]]] [[4 x [3 x i32]] [[3 x i32] [i32 0, i32 1, i32 3], [3 x i32] [i32 2, i32 1, i32 5], [3 x i32] [i32 6, i32 3, i32 7], [3 x i32] [i32 8, i32 5, i32 7]], [4 x [3 x i32]] [[3 x i32] [i32 18, i32 19, i32 21], [3 x i32] [i32 20, i32 19, i32 23], [3 x i32] [i32 24, i32 21, i32 25], [3 x i32] [i32 26, i32 23, i32 25]], [4 x [3 x i32]] [[3 x i32] [i32 6, i32 7, i32 15], [3 x i32] [i32 8, i32 7, i32 17], [3 x i32] [i32 24, i32 15, i32 25], [3 x i32] [i32 26, i32 17, i32 25]], [4 x [3 x i32]] [[3 x i32] [i32 0, i32 1, i32 9], [3 x i32] [i32 2, i32 1, i32 11], [3 x i32] [i32 18, i32 9, i32 19], [3 x i32] [i32 20, i32 11, i32 19]], [4 x [3 x i32]] [[3 x i32] [i32 0, i32 3, i32 9], [3 x i32] [i32 6, i32 3, i32 15], [3 x i32] [i32 18, i32 9, i32 21], [3 x i32] [i32 24, i32 15, i32 21]], [4 x [3 x i32]] [[3 x i32] [i32 2, i32 5, i32 11], [3 x i32] [i32 8, i32 5, i32 17], [3 x i32] [i32 20, i32 11, i32 23], [3 x i32] [i32 26, i32 17, i32 23]]], align 16
@occlusion.lookup4 = internal constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 3, i32 4], [4 x i32] [i32 1, i32 2, i32 4, i32 5], [4 x i32] [i32 3, i32 4, i32 6, i32 7], [4 x i32] [i32 4, i32 5, i32 7, i32 8]], [4 x [4 x i32]] [[4 x i32] [i32 18, i32 19, i32 21, i32 22], [4 x i32] [i32 19, i32 20, i32 22, i32 23], [4 x i32] [i32 21, i32 22, i32 24, i32 25], [4 x i32] [i32 22, i32 23, i32 25, i32 26]], [4 x [4 x i32]] [[4 x i32] [i32 6, i32 7, i32 15, i32 16], [4 x i32] [i32 7, i32 8, i32 16, i32 17], [4 x i32] [i32 15, i32 16, i32 24, i32 25], [4 x i32] [i32 16, i32 17, i32 25, i32 26]], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 9, i32 10], [4 x i32] [i32 1, i32 2, i32 10, i32 11], [4 x i32] [i32 9, i32 10, i32 18, i32 19], [4 x i32] [i32 10, i32 11, i32 19, i32 20]], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 3, i32 9, i32 12], [4 x i32] [i32 3, i32 6, i32 12, i32 15], [4 x i32] [i32 9, i32 12, i32 18, i32 21], [4 x i32] [i32 12, i32 15, i32 21, i32 24]], [4 x [4 x i32]] [[4 x i32] [i32 2, i32 5, i32 11, i32 14], [4 x i32] [i32 5, i32 8, i32 14, i32 17], [4 x i32] [i32 11, i32 14, i32 20, i32 23], [4 x i32] [i32 14, i32 17, i32 23, i32 26]]], align 16
@occlusion.curve = internal constant [4 x float] [float 0.000000e+00, float 2.500000e-01, float 5.000000e-01, float 7.500000e-01], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @occlusion(i8* %0, i8* %1, float* %2, [4 x float]* %3, [4 x float]* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca float*, align 8
  %9 = alloca [4 x float]*, align 8
  %10 = alloca [4 x float]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store float* %2, float** %8, align 8
  store [4 x float]* %3, [4 x float]** %9, align 8
  store [4 x float]* %4, [4 x float]** %10, align 8
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %170, %5
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 6
  br i1 %24, label %25, label %173

25:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %166, %25
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %169

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [6 x [4 x [3 x i32]]], [6 x [4 x [3 x i32]]]* @occlusion.lookup3, i64 0, i64 %32
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* %33, i64 0, i64 %35
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %30, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [6 x [4 x [3 x i32]]], [6 x [4 x [3 x i32]]]* @occlusion.lookup3, i64 0, i64 %45
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* %46, i64 0, i64 %48
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %49, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %43, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  store i32 %55, i32* %14, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [6 x [4 x [3 x i32]]], [6 x [4 x [3 x i32]]]* @occlusion.lookup3, i64 0, i64 %58
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* %59, i64 0, i64 %61
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %62, i64 0, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %56, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %29
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %81

75:                                               ; preds = %71, %29
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %78, %79
  br label %81

81:                                               ; preds = %75, %74
  %82 = phi i32 [ 3, %74 ], [ %80, %75 ]
  store i32 %82, i32* %16, align 4
  store float 0.000000e+00, float* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 13
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 15
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %89

89:                                               ; preds = %127, %81
  %90 = load i32, i32* %20, align 4
  %91 = icmp slt i32 %90, 4
  br i1 %91, label %92, label %130

92:                                               ; preds = %89
  %93 = load float*, float** %8, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @occlusion.lookup4, i64 0, i64 %95
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %96, i64 0, i64 %98
  %100 = load i32, i32* %20, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %99, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %93, i64 %104
  %106 = load float, float* %105, align 4
  %107 = load float, float* %17, align 4
  %108 = fadd float %107, %106
  store float %108, float* %17, align 4
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @occlusion.lookup4, i64 0, i64 %111
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %112, i64 0, i64 %114
  %116 = load i32, i32* %20, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %115, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %109, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = sitofp i32 %123 to float
  %125 = load float, float* %18, align 4
  %126 = fadd float %125, %124
  store float %126, float* %18, align 4
  br label %127

127:                                              ; preds = %92
  %128 = load i32, i32* %20, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %20, align 4
  br label %89

130:                                              ; preds = %89
  %131 = load i32, i32* %19, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store float 6.000000e+02, float* %18, align 4
  br label %134

134:                                              ; preds = %133, %130
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x float], [4 x float]* @occlusion.curve, i64 0, i64 %136
  %138 = load float, float* %137, align 4
  %139 = fpext float %138 to double
  %140 = load float, float* %17, align 4
  %141 = fpext float %140 to double
  %142 = fdiv double %141, 4.000000e+00
  %143 = fadd double %139, %142
  %144 = fptrunc double %143 to float
  store float %144, float* %21, align 4
  %145 = load float, float* %21, align 4
  %146 = call float @MIN(float %145, double 1.000000e+00)
  %147 = load [4 x float]*, [4 x float]** %9, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x float], [4 x float]* %147, i64 %149
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [4 x float], [4 x float]* %150, i64 0, i64 %152
  store float %146, float* %153, align 4
  %154 = load float, float* %18, align 4
  %155 = fpext float %154 to double
  %156 = fdiv double %155, 1.500000e+01
  %157 = fdiv double %156, 4.000000e+00
  %158 = fptrunc double %157 to float
  %159 = load [4 x float]*, [4 x float]** %10, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x float], [4 x float]* %159, i64 %161
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [4 x float], [4 x float]* %162, i64 0, i64 %164
  store float %158, float* %165, align 4
  br label %166

166:                                              ; preds = %134
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %26

169:                                              ; preds = %26
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  br label %22

173:                                              ; preds = %22
  ret void
}

declare dso_local float @MIN(float, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
