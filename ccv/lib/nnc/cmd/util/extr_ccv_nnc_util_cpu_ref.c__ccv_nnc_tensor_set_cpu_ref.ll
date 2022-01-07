; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/cmd/util/extr_ccv_nnc_util_cpu_ref.c__ccv_nnc_tensor_set_cpu_ref.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/cmd/util/extr_ccv_nnc_util_cpu_ref.c__ccv_nnc_tensor_set_cpu_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { float* }

@CCV_NNC_MAX_DIM_ALLOC = common dso_local global i32 0, align 4
@CCV_NNC_MAX_DIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ccv_nnc_tensor_set_cpu_ref(%struct.TYPE_8__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca float, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store float %1, float* %4, align 4
  %14 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_8__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ccv_nnc_tensor_count(i32 %27)
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %42, %24
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load float, float* %4, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load float*, float** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  store float %34, float* %41, align 4
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %29

45:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  br label %221

46:                                               ; preds = %2
  %47 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = call i32 @ccv_nnc_tensor_view_get_dim(%struct.TYPE_8__* %51, i32* %17)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = call i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_8__* %53, i32* %20)
  %55 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %56 = add nsw i32 %55, 2
  %57 = zext i32 %56 to i64
  %58 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %11, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load float*, float** %61, align 8
  store float* %62, float** %12, align 8
  %63 = getelementptr inbounds i32, i32* %17, i64 2
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds i32, i32* %17, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %64, %66
  store i32 %67, i32* %13, align 4
  %68 = getelementptr inbounds i32, i32* %20, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds i32, i32* %17, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %136

73:                                               ; preds = %46
  %74 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 0, i32* %74, align 16
  br label %75

75:                                               ; preds = %131, %73
  %76 = getelementptr inbounds i32, i32* %58, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = getelementptr inbounds i32, i32* %17, i64 0
  %79 = load i32, i32* %78, align 16
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %135

81:                                               ; preds = %75
  %82 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %112, %81
  %84 = getelementptr inbounds i32, i32* %58, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds i32, i32* %17, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %83
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %100, %89
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load float, float* %4, align 4
  %96 = load float*, float** %12, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %96, i64 %98
  store float %95, float* %99, align 4
  br label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %90

103:                                              ; preds = %90
  %104 = getelementptr inbounds i32, i32* %20, i64 2
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds i32, i32* %20, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %105, %107
  %109 = load float*, float** %12, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds float, float* %109, i64 %110
  store float* %111, float** %12, align 8
  br label %112

112:                                              ; preds = %103
  %113 = getelementptr inbounds i32, i32* %58, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %83

116:                                              ; preds = %83
  %117 = getelementptr inbounds i32, i32* %20, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds i32, i32* %17, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %118, %120
  %122 = getelementptr inbounds i32, i32* %20, i64 2
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %121, %123
  %125 = getelementptr inbounds i32, i32* %20, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %124, %126
  %128 = load float*, float** %12, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds float, float* %128, i64 %129
  store float* %130, float** %12, align 8
  br label %131

131:                                              ; preds = %116
  %132 = getelementptr inbounds i32, i32* %58, i64 0
  %133 = load i32, i32* %132, align 16
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 16
  br label %75

135:                                              ; preds = %75
  store i32 1, i32* %10, align 4
  br label %221

136:                                              ; preds = %46
  %137 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 0, i32* %137, align 16
  br label %138

138:                                              ; preds = %216, %136
  %139 = getelementptr inbounds i32, i32* %58, i64 0
  %140 = load i32, i32* %139, align 16
  %141 = getelementptr inbounds i32, i32* %17, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = icmp slt i32 %140, %142
  br i1 %143, label %144, label %220

144:                                              ; preds = %138
  %145 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 0, i32* %145, align 4
  br label %146

146:                                              ; preds = %197, %144
  %147 = getelementptr inbounds i32, i32* %58, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds i32, i32* %17, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %152, label %201

152:                                              ; preds = %146
  %153 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 0, i32* %153, align 8
  br label %154

154:                                              ; preds = %181, %152
  %155 = getelementptr inbounds i32, i32* %58, i64 2
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds i32, i32* %17, i64 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %185

160:                                              ; preds = %154
  store i32 0, i32* %8, align 4
  br label %161

161:                                              ; preds = %172, %160
  %162 = load i32, i32* %8, align 4
  %163 = getelementptr inbounds i32, i32* %17, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %161
  %167 = load float, float* %4, align 4
  %168 = load float*, float** %12, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %168, i64 %170
  store float %167, float* %171, align 4
  br label %172

172:                                              ; preds = %166
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %161

175:                                              ; preds = %161
  %176 = getelementptr inbounds i32, i32* %20, i64 3
  %177 = load i32, i32* %176, align 4
  %178 = load float*, float** %12, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds float, float* %178, i64 %179
  store float* %180, float** %12, align 8
  br label %181

181:                                              ; preds = %175
  %182 = getelementptr inbounds i32, i32* %58, i64 2
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  br label %154

185:                                              ; preds = %154
  %186 = getelementptr inbounds i32, i32* %20, i64 2
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds i32, i32* %17, i64 2
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %187, %189
  %191 = getelementptr inbounds i32, i32* %20, i64 3
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %190, %192
  %194 = load float*, float** %12, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds float, float* %194, i64 %195
  store float* %196, float** %12, align 8
  br label %197

197:                                              ; preds = %185
  %198 = getelementptr inbounds i32, i32* %58, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  br label %146

201:                                              ; preds = %146
  %202 = getelementptr inbounds i32, i32* %20, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds i32, i32* %17, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %203, %205
  %207 = getelementptr inbounds i32, i32* %20, i64 2
  %208 = load i32, i32* %207, align 8
  %209 = mul nsw i32 %206, %208
  %210 = getelementptr inbounds i32, i32* %20, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %209, %211
  %213 = load float*, float** %12, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds float, float* %213, i64 %214
  store float* %215, float** %12, align 8
  br label %216

216:                                              ; preds = %201
  %217 = getelementptr inbounds i32, i32* %58, i64 0
  %218 = load i32, i32* %217, align 16
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 16
  br label %138

220:                                              ; preds = %138
  store i32 0, i32* %10, align 4
  br label %221

221:                                              ; preds = %220, %135, %45
  %222 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %10, align 4
  switch i32 %223, label %225 [
    i32 0, label %224
    i32 1, label %224
  ]

224:                                              ; preds = %221, %221
  ret void

225:                                              ; preds = %221
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_8__*) #2

declare dso_local i32 @ccv_nnc_tensor_count(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @ccv_nnc_tensor_view_get_dim(%struct.TYPE_8__*, i32*) #2

declare dso_local i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_8__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
