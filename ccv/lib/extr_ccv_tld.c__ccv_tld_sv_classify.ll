; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_sv_classify.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_sv_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_14__**, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { float }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32*, i32*)* @_ccv_tld_sv_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @_ccv_tld_sv_classify(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca float, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %6
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %32, %36
  br label %38

38:                                               ; preds = %29, %6
  %39 = phi i1 [ false, %6 ], [ %37, %29 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %47, i64 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  br label %62

52:                                               ; preds = %38
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %56, i64 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ccv_min(i32 %53, i32 %60)
  br label %62

62:                                               ; preds = %52, %44
  %63 = phi i32 [ %51, %44 ], [ %61, %52 ]
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store float 0.000000e+00, float* %7, align 4
  br label %189

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %73, i64 0
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  br label %88

78:                                               ; preds = %67
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %82, i64 0
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ccv_min(i32 %79, i32 %86)
  br label %88

88:                                               ; preds = %78, %70
  %89 = phi i32 [ %77, %70 ], [ %87, %78 ]
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store float 1.000000e+00, float* %7, align 4
  br label %189

93:                                               ; preds = %88
  store float -1.000000e+00, float* %15, align 4
  store i32 0, i32* %14, align 4
  br label %94

94:                                               ; preds = %117, %93
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %101, i64 1
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i64 @ccv_array_get(%struct.TYPE_14__* %103, i32 %104)
  %106 = inttoptr i64 %105 to %struct.TYPE_13__**
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %16, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %110 = call float @_ccv_tld_norm_cross_correlate(%struct.TYPE_13__* %108, %struct.TYPE_13__* %109)
  store float %110, float* %17, align 4
  %111 = load float, float* %17, align 4
  %112 = load float, float* %15, align 4
  %113 = fcmp ogt float %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %98
  %115 = load float, float* %17, align 4
  store float %115, float* %15, align 4
  br label %116

116:                                              ; preds = %114, %98
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %94

120:                                              ; preds = %94
  %121 = load float, float* %15, align 4
  %122 = fadd float %121, 1.000000e+00
  %123 = fpext float %122 to double
  %124 = fmul double %123, 5.000000e-01
  %125 = fptrunc double %124 to float
  store float %125, float* %15, align 4
  %126 = load i32*, i32** %12, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %120
  %129 = load float, float* %15, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load float, float* %132, align 8
  %134 = fcmp ogt float %129, %133
  %135 = zext i1 %134 to i32
  %136 = load i32*, i32** %12, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %128, %120
  store float -1.000000e+00, float* %18, align 4
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %161, %137
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %164

142:                                              ; preds = %138
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %145, i64 0
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = load i32, i32* %14, align 4
  %149 = call i64 @ccv_array_get(%struct.TYPE_14__* %147, i32 %148)
  %150 = inttoptr i64 %149 to %struct.TYPE_13__**
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  store %struct.TYPE_13__* %151, %struct.TYPE_13__** %19, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %154 = call float @_ccv_tld_norm_cross_correlate(%struct.TYPE_13__* %152, %struct.TYPE_13__* %153)
  store float %154, float* %20, align 4
  %155 = load float, float* %20, align 4
  %156 = load float, float* %18, align 4
  %157 = fcmp ogt float %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %142
  %159 = load float, float* %20, align 4
  store float %159, float* %18, align 4
  br label %160

160:                                              ; preds = %158, %142
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %14, align 4
  br label %138

164:                                              ; preds = %138
  %165 = load float, float* %18, align 4
  %166 = fadd float %165, 1.000000e+00
  %167 = fpext float %166 to double
  %168 = fmul double %167, 5.000000e-01
  %169 = fptrunc double %168 to float
  store float %169, float* %18, align 4
  %170 = load i32*, i32** %13, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %181

172:                                              ; preds = %164
  %173 = load float, float* %18, align 4
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load float, float* %176, align 8
  %178 = fcmp ogt float %173, %177
  %179 = zext i1 %178 to i32
  %180 = load i32*, i32** %13, align 8
  store i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %172, %164
  %182 = load float, float* %18, align 4
  %183 = fsub float 1.000000e+00, %182
  %184 = load float, float* %18, align 4
  %185 = fsub float 2.000000e+00, %184
  %186 = load float, float* %15, align 4
  %187 = fsub float %185, %186
  %188 = fdiv float %183, %187
  store float %188, float* %7, align 4
  br label %189

189:                                              ; preds = %181, %92, %66
  %190 = load float, float* %7, align 4
  ret float %190
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_min(i32, i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_14__*, i32) #1

declare dso_local float @_ccv_tld_norm_cross_correlate(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
