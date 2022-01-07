; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_estimate_affine_2d.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_estimate_affine_2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_13__*, i32, double*, double, i32, double)* @estimate_affine_2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimate_affine_2d(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, %struct.TYPE_13__* %2, i32 %3, double* %4, double %5, i32 %6, double %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca [6 x double], align 16
  %20 = alloca [6 x double], align 16
  %21 = alloca [3 x %struct.TYPE_11__], align 4
  %22 = alloca [3 x %struct.TYPE_11__], align 4
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
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %12, align 8
  store i32 %3, i32* %13, align 4
  store double* %4, double** %14, align 8
  store double %5, double* %15, align 8
  store i32 %6, i32* %16, align 4
  store double %7, double* %17, align 8
  store i32 0, i32* %18, align 4
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @FFMAX(i32 %33, i32 1)
  store i32 %34, i32* %24, align 4
  store i32 0, i32* %26, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %38

37:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %192

38:                                               ; preds = %8
  %39 = load i32, i32* %13, align 4
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %43 = load double*, double** %14, align 8
  %44 = call i32 @run_estimate_kernel(%struct.TYPE_11__* %42, double* %43)
  store i32 0, i32* %27, align 4
  br label %45

45:                                               ; preds = %54, %41
  %46 = load i32, i32* %27, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %50 = load i32, i32* %27, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %27, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %27, align 4
  br label %45

57:                                               ; preds = %45
  store i32 1, i32* %9, align 4
  br label %192

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58
  store i32 0, i32* %23, align 4
  br label %60

60:                                               ; preds = %138, %59
  %61 = load i32, i32* %23, align 4
  %62 = load i32, i32* %24, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %141

64:                                               ; preds = %60
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %68 = load i32, i32* %13, align 4
  %69 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %21, i64 0, i64 0
  %70 = call i32 @get_subset(i32* %66, %struct.TYPE_11__* %67, i32 %68, %struct.TYPE_11__* %69, i32 10000)
  store i32 %70, i32* %28, align 4
  %71 = load i32, i32* %28, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %23, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %192

77:                                               ; preds = %73
  br label %141

78:                                               ; preds = %64
  %79 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %21, i64 0, i64 0
  %80 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 0
  %81 = call i32 @run_estimate_kernel(%struct.TYPE_11__* %79, double* %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %83 = load i32, i32* %13, align 4
  %84 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load double, double* %15, align 8
  %89 = call i32 @find_inliers(%struct.TYPE_11__* %82, i32 %83, double* %84, i32 %87, double %88)
  store i32 %89, i32* %25, align 4
  %90 = load i32, i32* %25, align 4
  %91 = load i32, i32* %26, align 4
  %92 = call i32 @FFMAX(i32 %91, i32 2)
  %93 = icmp sgt i32 %90, %92
  br i1 %93, label %94, label %137

94:                                               ; preds = %78
  store i32 0, i32* %29, align 4
  br label %95

95:                                               ; preds = %106, %94
  %96 = load i32, i32* %29, align 4
  %97 = icmp slt i32 %96, 6
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load i32, i32* %29, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 %100
  %102 = load double, double* %101, align 8
  %103 = load i32, i32* %29, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [6 x double], [6 x double]* %19, i64 0, i64 %104
  store double %102, double* %105, align 8
  br label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %29, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %29, align 4
  br label %95

109:                                              ; preds = %95
  store i32 0, i32* %30, align 4
  br label %110

110:                                              ; preds = %122, %109
  %111 = load i32, i32* %30, align 4
  %112 = icmp slt i32 %111, 3
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = load i32, i32* %30, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %22, i64 0, i64 %115
  %117 = load i32, i32* %30, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %21, i64 0, i64 %118
  %120 = bitcast %struct.TYPE_11__* %116 to i8*
  %121 = bitcast %struct.TYPE_11__* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %120, i8* align 4 %121, i64 4, i1 false)
  br label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %30, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %30, align 4
  br label %110

125:                                              ; preds = %110
  %126 = load i32, i32* %25, align 4
  store i32 %126, i32* %26, align 4
  %127 = load double, double* %17, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %25, align 4
  %130 = sub nsw i32 %128, %129
  %131 = sitofp i32 %130 to double
  %132 = load i32, i32* %13, align 4
  %133 = sitofp i32 %132 to double
  %134 = fdiv double %131, %133
  %135 = load i32, i32* %24, align 4
  %136 = call i32 @ransac_update_num_iters(double %127, double %134, i32 %135)
  store i32 %136, i32* %24, align 4
  br label %137

137:                                              ; preds = %125, %78
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %23, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %23, align 4
  br label %60

141:                                              ; preds = %77, %60
  %142 = load i32, i32* %26, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %190

144:                                              ; preds = %141
  store i32 0, i32* %31, align 4
  br label %145

145:                                              ; preds = %157, %144
  %146 = load i32, i32* %31, align 4
  %147 = icmp slt i32 %146, 6
  br i1 %147, label %148, label %160

148:                                              ; preds = %145
  %149 = load i32, i32* %31, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [6 x double], [6 x double]* %19, i64 0, i64 %150
  %152 = load double, double* %151, align 8
  %153 = load double*, double** %14, align 8
  %154 = load i32, i32* %31, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds double, double* %153, i64 %155
  store double %152, double* %156, align 8
  br label %157

157:                                              ; preds = %148
  %158 = load i32, i32* %31, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %31, align 4
  br label %145

160:                                              ; preds = %145
  store i32 0, i32* %32, align 4
  br label %161

161:                                              ; preds = %176, %160
  %162 = load i32, i32* %32, align 4
  %163 = icmp slt i32 %162, 3
  br i1 %163, label %164, label %179

164:                                              ; preds = %161
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = load i32, i32* %32, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i64 %169
  %171 = load i32, i32* %32, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %22, i64 0, i64 %172
  %174 = bitcast %struct.TYPE_11__* %170 to i8*
  %175 = bitcast %struct.TYPE_11__* %173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %174, i8* align 4 %175, i64 4, i1 false)
  br label %176

176:                                              ; preds = %164
  %177 = load i32, i32* %32, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %32, align 4
  br label %161

179:                                              ; preds = %161
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  store i32 3, i32* %181, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %183 = load i32, i32* %13, align 4
  %184 = getelementptr inbounds [6 x double], [6 x double]* %19, i64 0, i64 0
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load double, double* %15, align 8
  %189 = call i32 @find_inliers(%struct.TYPE_11__* %182, i32 %183, double* %184, i32 %187, double %188)
  store i32 1, i32* %18, align 4
  br label %190

190:                                              ; preds = %179, %141
  %191 = load i32, i32* %18, align 4
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %190, %76, %57, %37
  %193 = load i32, i32* %9, align 4
  ret i32 %193
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @run_estimate_kernel(%struct.TYPE_11__*, double*) #1

declare dso_local i32 @get_subset(i32*, %struct.TYPE_11__*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @find_inliers(%struct.TYPE_11__*, i32, double*, i32, double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ransac_update_num_iters(double, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
