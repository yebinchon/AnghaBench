; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__ov_splice.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__ov_splice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float**, float**, i32, i32, i32, i32, float*, float*)* @_ov_splice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ov_splice(float** %0, float** %1, i32 %2, i32 %3, i32 %4, i32 %5, float* %6, float* %7) #0 {
  %9 = alloca float**, align 8
  %10 = alloca float**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float*, align 8
  %26 = alloca float, align 4
  store float** %0, float*** %9, align 8
  store float** %1, float*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  %27 = load float*, float** %15, align 8
  store float* %27, float** %19, align 8
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %20, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %8
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %20, align 4
  %34 = load float*, float** %16, align 8
  store float* %34, float** %19, align 8
  br label %35

35:                                               ; preds = %32, %8
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %100, %35
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ false, %36 ], [ %43, %40 ]
  br i1 %45, label %46, label %103

46:                                               ; preds = %44
  %47 = load float**, float*** %10, align 8
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float*, float** %47, i64 %49
  %51 = load float*, float** %50, align 8
  store float* %51, float** %21, align 8
  %52 = load float**, float*** %9, align 8
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float*, float** %52, i64 %54
  %56 = load float*, float** %55, align 8
  store float* %56, float** %22, align 8
  store i32 0, i32* %17, align 4
  br label %57

57:                                               ; preds = %96, %46
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %20, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %99

61:                                               ; preds = %57
  %62 = load float*, float** %19, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = load float*, float** %19, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %67, i64 %69
  %71 = load float, float* %70, align 4
  %72 = fmul float %66, %71
  store float %72, float* %23, align 4
  %73 = load float, float* %23, align 4
  %74 = fpext float %73 to double
  %75 = fsub double 1.000000e+00, %74
  %76 = fptrunc double %75 to float
  store float %76, float* %24, align 4
  %77 = load float*, float** %22, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = load float, float* %23, align 4
  %83 = fmul float %81, %82
  %84 = load float*, float** %21, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = load float, float* %87, align 4
  %89 = load float, float* %24, align 4
  %90 = fmul float %88, %89
  %91 = fadd float %83, %90
  %92 = load float*, float** %22, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %92, i64 %94
  store float %91, float* %95, align 4
  br label %96

96:                                               ; preds = %61
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %17, align 4
  br label %57

99:                                               ; preds = %57
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %18, align 4
  br label %36

103:                                              ; preds = %44
  br label %104

104:                                              ; preds = %145, %103
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %148

108:                                              ; preds = %104
  %109 = load float**, float*** %9, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float*, float** %109, i64 %111
  %113 = load float*, float** %112, align 8
  store float* %113, float** %25, align 8
  store i32 0, i32* %17, align 4
  br label %114

114:                                              ; preds = %141, %108
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %20, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %144

118:                                              ; preds = %114
  %119 = load float*, float** %19, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %119, i64 %121
  %123 = load float, float* %122, align 4
  %124 = load float*, float** %19, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %124, i64 %126
  %128 = load float, float* %127, align 4
  %129 = fmul float %123, %128
  store float %129, float* %26, align 4
  %130 = load float*, float** %25, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %130, i64 %132
  %134 = load float, float* %133, align 4
  %135 = load float, float* %26, align 4
  %136 = fmul float %134, %135
  %137 = load float*, float** %25, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %137, i64 %139
  store float %136, float* %140, align 4
  br label %141

141:                                              ; preds = %118
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %17, align 4
  br label %114

144:                                              ; preds = %114
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %18, align 4
  br label %104

148:                                              ; preds = %104
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
