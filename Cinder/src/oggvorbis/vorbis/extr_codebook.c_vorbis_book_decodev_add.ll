; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_codebook.c_vorbis_book_decodev_add.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_codebook.c_vorbis_book_decodev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vorbis_book_decodev_add(%struct.TYPE_4__* %0, float* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store float* %1, float** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %210

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 8
  br i1 %22, label %23, label %68

23:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %66, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @decode_packed_entry_number(%struct.TYPE_4__* %29, i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i64 -1, i64* %5, align 8
  br label %211

35:                                               ; preds = %28
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load float*, float** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %38, i64 %44
  store float* %45, float** %13, align 8
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %52, %35
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load float*, float** %13, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds float, float* %53, i64 %56
  %58 = load float, float* %57, align 4
  %59 = load float*, float** %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds float, float* %59, i64 %62
  %64 = load float, float* %63, align 4
  %65 = fadd float %64, %58
  store float %65, float* %63, align 4
  br label %46

66:                                               ; preds = %46
  br label %24

67:                                               ; preds = %24
  br label %209

68:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %207, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %208

73:                                               ; preds = %69
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @decode_packed_entry_number(%struct.TYPE_4__* %74, i32* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i64 -1, i64* %5, align 8
  br label %211

80:                                               ; preds = %73
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load float*, float** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %83, i64 %89
  store float* %90, float** %13, align 8
  store i32 0, i32* %11, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %207 [
    i32 8, label %94
    i32 7, label %108
    i32 6, label %122
    i32 5, label %136
    i32 4, label %150
    i32 3, label %164
    i32 2, label %178
    i32 1, label %192
    i32 0, label %206
  ]

94:                                               ; preds = %80
  %95 = load float*, float** %13, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds float, float* %95, i64 %98
  %100 = load float, float* %99, align 4
  %101 = load float*, float** %7, align 8
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds float, float* %101, i64 %104
  %106 = load float, float* %105, align 4
  %107 = fadd float %106, %100
  store float %107, float* %105, align 4
  br label %108

108:                                              ; preds = %80, %94
  %109 = load float*, float** %13, align 8
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds float, float* %109, i64 %112
  %114 = load float, float* %113, align 4
  %115 = load float*, float** %7, align 8
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds float, float* %115, i64 %118
  %120 = load float, float* %119, align 4
  %121 = fadd float %120, %114
  store float %121, float* %119, align 4
  br label %122

122:                                              ; preds = %80, %108
  %123 = load float*, float** %13, align 8
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds float, float* %123, i64 %126
  %128 = load float, float* %127, align 4
  %129 = load float*, float** %7, align 8
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds float, float* %129, i64 %132
  %134 = load float, float* %133, align 4
  %135 = fadd float %134, %128
  store float %135, float* %133, align 4
  br label %136

136:                                              ; preds = %80, %122
  %137 = load float*, float** %13, align 8
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds float, float* %137, i64 %140
  %142 = load float, float* %141, align 4
  %143 = load float*, float** %7, align 8
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds float, float* %143, i64 %146
  %148 = load float, float* %147, align 4
  %149 = fadd float %148, %142
  store float %149, float* %147, align 4
  br label %150

150:                                              ; preds = %80, %136
  %151 = load float*, float** %13, align 8
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds float, float* %151, i64 %154
  %156 = load float, float* %155, align 4
  %157 = load float*, float** %7, align 8
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds float, float* %157, i64 %160
  %162 = load float, float* %161, align 4
  %163 = fadd float %162, %156
  store float %163, float* %161, align 4
  br label %164

164:                                              ; preds = %80, %150
  %165 = load float*, float** %13, align 8
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds float, float* %165, i64 %168
  %170 = load float, float* %169, align 4
  %171 = load float*, float** %7, align 8
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds float, float* %171, i64 %174
  %176 = load float, float* %175, align 4
  %177 = fadd float %176, %170
  store float %177, float* %175, align 4
  br label %178

178:                                              ; preds = %80, %164
  %179 = load float*, float** %13, align 8
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds float, float* %179, i64 %182
  %184 = load float, float* %183, align 4
  %185 = load float*, float** %7, align 8
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %10, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds float, float* %185, i64 %188
  %190 = load float, float* %189, align 4
  %191 = fadd float %190, %184
  store float %191, float* %189, align 4
  br label %192

192:                                              ; preds = %80, %178
  %193 = load float*, float** %13, align 8
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds float, float* %193, i64 %196
  %198 = load float, float* %197, align 4
  %199 = load float*, float** %7, align 8
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %10, align 4
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds float, float* %199, i64 %202
  %204 = load float, float* %203, align 4
  %205 = fadd float %204, %198
  store float %205, float* %203, align 4
  br label %206

206:                                              ; preds = %80, %192
  br label %207

207:                                              ; preds = %80, %206
  br label %69

208:                                              ; preds = %69
  br label %209

209:                                              ; preds = %208, %67
  br label %210

210:                                              ; preds = %209, %4
  store i64 0, i64* %5, align 8
  br label %211

211:                                              ; preds = %210, %79, %34
  %212 = load i64, i64* %5, align 8
  ret i64 %212
}

declare dso_local i32 @decode_packed_entry_number(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
