; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_gblur.c_do_vertical_columns.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_gblur.c_do_vertical_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, i32, i32, i32, i32, float, float, i32)* @do_vertical_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_vertical_columns(float* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, float %6, float %7, i32 %8) #0 {
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float*, align 8
  store float* %0, float** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %21, align 4
  br label %29

29:                                               ; preds = %159, %9
  %30 = load i32, i32* %21, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %163

33:                                               ; preds = %29
  store i32 0, i32* %23, align 4
  br label %34

34:                                               ; preds = %156, %33
  %35 = load i32, i32* %23, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %159

38:                                               ; preds = %34
  %39 = load float*, float** %10, align 8
  %40 = load i32, i32* %21, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %39, i64 %41
  store float* %42, float** %24, align 8
  store i32 0, i32* %22, align 4
  br label %43

43:                                               ; preds = %55, %38
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* %18, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load float, float* %17, align 4
  %49 = load float*, float** %24, align 8
  %50 = load i32, i32* %22, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  %53 = load float, float* %52, align 4
  %54 = fmul float %53, %48
  store float %54, float* %52, align 4
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %22, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %22, align 4
  br label %43

58:                                               ; preds = %43
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %20, align 4
  br label %60

60:                                               ; preds = %93, %58
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %60
  store i32 0, i32* %22, align 4
  br label %65

65:                                               ; preds = %89, %64
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %65
  %70 = load float, float* %16, align 4
  %71 = load float*, float** %24, align 8
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load i32, i32* %22, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %71, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fmul float %70, %79
  %81 = load float*, float** %24, align 8
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %22, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %81, i64 %85
  %87 = load float, float* %86, align 4
  %88 = fadd float %87, %80
  store float %88, float* %86, align 4
  br label %89

89:                                               ; preds = %69
  %90 = load i32, i32* %22, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %22, align 4
  br label %65

92:                                               ; preds = %65
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %20, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %20, align 4
  br label %60

97:                                               ; preds = %60
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %101

101:                                              ; preds = %115, %97
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = load float, float* %17, align 4
  %107 = load float*, float** %24, align 8
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %22, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %107, i64 %111
  %113 = load float, float* %112, align 4
  %114 = fmul float %113, %106
  store float %114, float* %112, align 4
  br label %115

115:                                              ; preds = %105
  %116 = load i32, i32* %22, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %22, align 4
  br label %101

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %151, %118
  %120 = load i32, i32* %20, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %155

122:                                              ; preds = %119
  store i32 0, i32* %22, align 4
  br label %123

123:                                              ; preds = %147, %122
  %124 = load i32, i32* %22, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %123
  %128 = load float, float* %16, align 4
  %129 = load float*, float** %24, align 8
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %22, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %129, i64 %133
  %135 = load float, float* %134, align 4
  %136 = fmul float %128, %135
  %137 = load float*, float** %24, align 8
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %11, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load i32, i32* %22, align 4
  %142 = add nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %137, i64 %143
  %145 = load float, float* %144, align 4
  %146 = fadd float %145, %136
  store float %146, float* %144, align 4
  br label %147

147:                                              ; preds = %127
  %148 = load i32, i32* %22, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %22, align 4
  br label %123

150:                                              ; preds = %123
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %20, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %20, align 4
  br label %119

155:                                              ; preds = %119
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %23, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %23, align 4
  br label %34

159:                                              ; preds = %34
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* %21, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %21, align 4
  br label %29

163:                                              ; preds = %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
