; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_blas.c_shortcut_cpu.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_blas.c_shortcut_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shortcut_cpu(i32 %0, i32 %1, i32 %2, i32 %3, float* %4, i32 %5, i32 %6, i32 %7, float %8, float %9, float* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store float* %4, float** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store float %8, float* %20, align 4
  store float %9, float* %21, align 4
  store float* %10, float** %22, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %17, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %23, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %13, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %24, align 4
  %40 = load i32, i32* %23, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %18, align 4
  %43 = sdiv i32 %41, %42
  %44 = icmp eq i32 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %24, align 4
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %14, align 4
  %50 = sdiv i32 %48, %49
  %51 = icmp eq i32 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %23, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %11
  store i32 1, i32* %23, align 4
  br label %57

57:                                               ; preds = %56, %11
  %58 = load i32, i32* %24, align 4
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* %24, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %13, align 4
  br label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %17, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %25, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %14, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %18, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %26, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %15, align 4
  br label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %19, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %27, align 4
  store i32 0, i32* %31, align 4
  br label %89

89:                                               ; preds = %174, %87
  %90 = load i32, i32* %31, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %177

93:                                               ; preds = %89
  store i32 0, i32* %30, align 4
  br label %94

94:                                               ; preds = %170, %93
  %95 = load i32, i32* %30, align 4
  %96 = load i32, i32* %27, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %173

98:                                               ; preds = %94
  store i32 0, i32* %29, align 4
  br label %99

99:                                               ; preds = %166, %98
  %100 = load i32, i32* %29, align 4
  %101 = load i32, i32* %26, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %169

103:                                              ; preds = %99
  store i32 0, i32* %28, align 4
  br label %104

104:                                              ; preds = %162, %103
  %105 = load i32, i32* %28, align 4
  %106 = load i32, i32* %25, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %165

108:                                              ; preds = %104
  %109 = load i32, i32* %28, align 4
  %110 = load i32, i32* %24, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %29, align 4
  %114 = load i32, i32* %24, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %30, align 4
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %31, align 4
  %120 = mul nsw i32 %118, %119
  %121 = add nsw i32 %117, %120
  %122 = mul nsw i32 %116, %121
  %123 = add nsw i32 %115, %122
  %124 = mul nsw i32 %112, %123
  %125 = add nsw i32 %111, %124
  store i32 %125, i32* %32, align 4
  %126 = load i32, i32* %28, align 4
  %127 = load i32, i32* %23, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %29, align 4
  %131 = load i32, i32* %23, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %30, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %31, align 4
  %137 = mul nsw i32 %135, %136
  %138 = add nsw i32 %134, %137
  %139 = mul nsw i32 %133, %138
  %140 = add nsw i32 %132, %139
  %141 = mul nsw i32 %129, %140
  %142 = add nsw i32 %128, %141
  store i32 %142, i32* %33, align 4
  %143 = load float, float* %20, align 4
  %144 = load float*, float** %22, align 8
  %145 = load i32, i32* %32, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %144, i64 %146
  %148 = load float, float* %147, align 4
  %149 = fmul float %143, %148
  %150 = load float, float* %21, align 4
  %151 = load float*, float** %16, align 8
  %152 = load i32, i32* %33, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %151, i64 %153
  %155 = load float, float* %154, align 4
  %156 = fmul float %150, %155
  %157 = fadd float %149, %156
  %158 = load float*, float** %22, align 8
  %159 = load i32, i32* %32, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %158, i64 %160
  store float %157, float* %161, align 4
  br label %162

162:                                              ; preds = %108
  %163 = load i32, i32* %28, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %28, align 4
  br label %104

165:                                              ; preds = %104
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %29, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %29, align 4
  br label %99

169:                                              ; preds = %99
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %30, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %30, align 4
  br label %94

173:                                              ; preds = %94
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %31, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %31, align 4
  br label %89

177:                                              ; preds = %89
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
