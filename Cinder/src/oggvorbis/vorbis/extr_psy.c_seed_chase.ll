; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_seed_chase.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_seed_chase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, i64)* @seed_chase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seed_chase(float* %0, i32 %1, i64 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = mul i64 %13, 8
  %15 = call i8* @alloca(i64 %14)
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = mul i64 %17, 4
  %19 = call i8* @alloca(i64 %18)
  %20 = bitcast i8* %19 to float*
  store float* %20, float** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %21

21:                                               ; preds = %122, %3
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %125

25:                                               ; preds = %21
  %26 = load i64, i64* %9, align 8
  %27 = icmp slt i64 %26, 2
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load i64, i64* %11, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  store i64 %29, i64* %32, align 8
  %33 = load float*, float** %4, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds float, float* %33, i64 %34
  %36 = load float, float* %35, align 4
  %37 = load float*, float** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %9, align 8
  %40 = getelementptr inbounds float, float* %37, i64 %38
  store float %36, float* %40, align 4
  br label %121

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %103
  %43 = load float*, float** %4, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds float, float* %43, i64 %44
  %46 = load float, float* %45, align 4
  %47 = load float*, float** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = sub nsw i64 %48, 1
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fcmp olt float %46, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %42
  %54 = load i64, i64* %11, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 %54, i64* %57, align 8
  %58 = load float*, float** %4, align 8
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds float, float* %58, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load float*, float** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %9, align 8
  %65 = getelementptr inbounds float, float* %62, i64 %63
  store float %61, float* %65, align 4
  br label %120

66:                                               ; preds = %42
  %67 = load i64, i64* %11, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = load i64, i64* %9, align 8
  %70 = sub nsw i64 %69, 1
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = icmp slt i64 %67, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %66
  %78 = load i64, i64* %9, align 8
  %79 = icmp sgt i64 %78, 1
  br i1 %79, label %80, label %106

80:                                               ; preds = %77
  %81 = load float*, float** %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = sub nsw i64 %82, 1
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  %86 = load float*, float** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = sub nsw i64 %87, 2
  %89 = getelementptr inbounds float, float* %86, i64 %88
  %90 = load float, float* %89, align 4
  %91 = fcmp ole float %85, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %80
  %93 = load i64, i64* %11, align 8
  %94 = load i64*, i64** %7, align 8
  %95 = load i64, i64* %9, align 8
  %96 = sub nsw i64 %95, 2
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = icmp slt i64 %93, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load i64, i64* %9, align 8
  %105 = add nsw i64 %104, -1
  store i64 %105, i64* %9, align 8
  br label %42

106:                                              ; preds = %92, %80, %77
  br label %107

107:                                              ; preds = %106, %66
  %108 = load i64, i64* %11, align 8
  %109 = load i64*, i64** %7, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 %108, i64* %111, align 8
  %112 = load float*, float** %4, align 8
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr inbounds float, float* %112, i64 %113
  %115 = load float, float* %114, align 4
  %116 = load float*, float** %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %9, align 8
  %119 = getelementptr inbounds float, float* %116, i64 %117
  store float %115, float* %119, align 4
  br label %120

120:                                              ; preds = %107, %53
  br label %121

121:                                              ; preds = %120, %28
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %11, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %11, align 8
  br label %21

125:                                              ; preds = %21
  store i64 0, i64* %11, align 8
  br label %126

126:                                              ; preds = %184, %125
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %9, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %187

130:                                              ; preds = %126
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* %9, align 8
  %133 = sub nsw i64 %132, 1
  %134 = icmp slt i64 %131, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %130
  %136 = load float*, float** %8, align 8
  %137 = load i64, i64* %11, align 8
  %138 = add nsw i64 %137, 1
  %139 = getelementptr inbounds float, float* %136, i64 %138
  %140 = load float, float* %139, align 4
  %141 = load float*, float** %8, align 8
  %142 = load i64, i64* %11, align 8
  %143 = getelementptr inbounds float, float* %141, i64 %142
  %144 = load float, float* %143, align 4
  %145 = fcmp ogt float %140, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %135
  %147 = load i64*, i64** %7, align 8
  %148 = load i64, i64* %11, align 8
  %149 = add nsw i64 %148, 1
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %12, align 8
  br label %161

152:                                              ; preds = %135, %130
  %153 = load i64*, i64** %7, align 8
  %154 = load i64, i64* %11, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %156, %158
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %12, align 8
  br label %161

161:                                              ; preds = %152, %146
  %162 = load i64, i64* %12, align 8
  %163 = load i64, i64* %6, align 8
  %164 = icmp sgt i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i64, i64* %6, align 8
  store i64 %166, i64* %12, align 8
  br label %167

167:                                              ; preds = %165, %161
  br label %168

168:                                              ; preds = %180, %167
  %169 = load i64, i64* %10, align 8
  %170 = load i64, i64* %12, align 8
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %168
  %173 = load float*, float** %8, align 8
  %174 = load i64, i64* %11, align 8
  %175 = getelementptr inbounds float, float* %173, i64 %174
  %176 = load float, float* %175, align 4
  %177 = load float*, float** %4, align 8
  %178 = load i64, i64* %10, align 8
  %179 = getelementptr inbounds float, float* %177, i64 %178
  store float %176, float* %179, align 4
  br label %180

180:                                              ; preds = %172
  %181 = load i64, i64* %10, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %10, align 8
  br label %168

183:                                              ; preds = %168
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* %11, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* %11, align 8
  br label %126

187:                                              ; preds = %126
  ret void
}

declare dso_local i8* @alloca(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
