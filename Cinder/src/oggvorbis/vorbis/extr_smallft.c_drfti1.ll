; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_smallft.c_drfti1.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_smallft.c_drfti1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@drfti1.ntryh = internal global [4 x i32] [i32 4, i32 2, i32 3, i32 5], align 16
@drfti1.tpi = internal global float 0x401921FB60000000, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float*, i32*)* @drfti1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drfti1(i32 %0, float* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %13, align 4
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %30

30:                                               ; preds = %55, %3
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* @drfti1.ntryh, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 2
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %102, %43
  %45 = load i32, i32* %27, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* %27, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %22, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %23, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %30

56:                                               ; preds = %44
  %57 = load i32, i32* %28, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %28, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %28, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* %22, align 4
  store i32 %65, i32* %27, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %99

69:                                               ; preds = %56
  %70 = load i32, i32* %28, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %99

73:                                               ; preds = %69
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %28, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load i32, i32* %28, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %79, %80
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %87, i32* %92, align 4
  br label %93

93:                                               ; preds = %78
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %74

96:                                               ; preds = %74
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  store i32 2, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %72, %68
  %100 = load i32, i32* %27, align 4
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %44

103:                                              ; preds = %99
  %104 = load i32, i32* %4, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %28, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 %107, i32* %109, align 4
  %110 = load float, float* @drfti1.tpi, align 4
  %111 = load i32, i32* %4, align 4
  %112 = sitofp i32 %111 to float
  %113 = fdiv float %110, %112
  store float %113, float* %8, align 4
  store i32 0, i32* %21, align 4
  %114 = load i32, i32* %28, align 4
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %26, align 4
  store i32 1, i32* %15, align 4
  %116 = load i32, i32* %26, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  br label %191

119:                                              ; preds = %103
  store i32 0, i32* %14, align 4
  br label %120

120:                                              ; preds = %188, %119
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %26, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %191

124:                                              ; preds = %120
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %20, align 4
  store i32 0, i32* %18, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %20, align 4
  %133 = mul nsw i32 %131, %132
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* %16, align 4
  %136 = sdiv i32 %134, %135
  store i32 %136, i32* %24, align 4
  %137 = load i32, i32* %20, align 4
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %25, align 4
  store i32 0, i32* %13, align 4
  br label %139

139:                                              ; preds = %183, %124
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %25, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %186

143:                                              ; preds = %139
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %21, align 4
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %18, align 4
  %149 = sitofp i32 %148 to float
  %150 = load float, float* %8, align 4
  %151 = fmul float %149, %150
  store float %151, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  store i32 2, i32* %19, align 4
  br label %152

152:                                              ; preds = %176, %143
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %24, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %179

156:                                              ; preds = %152
  %157 = load float, float* %10, align 4
  %158 = fadd float %157, 1.000000e+00
  store float %158, float* %10, align 4
  %159 = load float, float* %10, align 4
  %160 = load float, float* %9, align 4
  %161 = fmul float %159, %160
  store float %161, float* %7, align 4
  %162 = load float, float* %7, align 4
  %163 = call float @cos(float %162)
  %164 = load float*, float** %5, align 8
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds float, float* %164, i64 %167
  store float %163, float* %168, align 4
  %169 = load float, float* %7, align 4
  %170 = call float @sin(float %169)
  %171 = load float*, float** %5, align 8
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds float, float* %171, i64 %174
  store float %170, float* %175, align 4
  br label %176

176:                                              ; preds = %156
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %177, 2
  store i32 %178, i32* %19, align 4
  br label %152

179:                                              ; preds = %152
  %180 = load i32, i32* %24, align 4
  %181 = load i32, i32* %21, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %21, align 4
  br label %183

183:                                              ; preds = %179
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %13, align 4
  br label %139

186:                                              ; preds = %139
  %187 = load i32, i32* %16, align 4
  store i32 %187, i32* %15, align 4
  br label %188

188:                                              ; preds = %186
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %14, align 4
  br label %120

191:                                              ; preds = %118, %120
  ret void
}

declare dso_local float @cos(float) #1

declare dso_local float @sin(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
