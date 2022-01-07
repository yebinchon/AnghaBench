; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_noisebias_setup.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_noisebias_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, i32**, i32, i32, i32 }
%struct.TYPE_12__ = type { i32** }
%struct.TYPE_11__ = type { i32, i32, i32 }

@P_NOISECURVES = common dso_local global i32 0, align 4
@P_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, double, i32, i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, double)* @vorbis_encode_noisebias_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vorbis_encode_noisebias_setup(%struct.TYPE_10__* %0, double %1, i32 %2, i32* %3, %struct.TYPE_12__* %4, %struct.TYPE_11__* %5, double %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store double %1, double* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %13, align 8
  store double %6, double* %14, align 8
  %22 = load double, double* %9, align 8
  %23 = fptosi double %22 to i32
  store i32 %23, i32* %16, align 4
  %24 = load double, double* %9, align 8
  %25 = load i32, i32* %16, align 4
  %26 = sitofp i32 %25 to double
  %27 = fsub double %24, %26
  store double %27, double* %18, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %19, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %33, i64 %35
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %20, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sitofp i32 %42 to double
  %44 = load double, double* %18, align 8
  %45 = fsub double 1.000000e+00, %44
  %46 = fmul double %43, %45
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %16, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sitofp i32 %52 to double
  %54 = load double, double* %18, align 8
  %55 = fmul double %53, %54
  %56 = fadd double %46, %55
  %57 = fptosi double %56 to i32
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %17, align 4
  br label %84

84:                                               ; preds = %146, %7
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* @P_NOISECURVES, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %149

88:                                               ; preds = %84
  store i32 0, i32* %15, align 4
  br label %89

89:                                               ; preds = %142, %88
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @P_BANDS, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %145

93:                                               ; preds = %89
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sitofp i32 %107 to double
  %109 = load double, double* %18, align 8
  %110 = fsub double 1.000000e+00, %109
  %111 = fmul double %108, %110
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = sitofp i32 %126 to double
  %128 = load double, double* %18, align 8
  %129 = fmul double %127, %128
  %130 = fadd double %111, %129
  %131 = fptosi double %130 to i32
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32**, i32*** %133, align 8
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %131, i32* %141, align 4
  br label %142

142:                                              ; preds = %93
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  br label %89

145:                                              ; preds = %89
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %17, align 4
  br label %84

149:                                              ; preds = %84
  store i32 0, i32* %17, align 4
  br label %150

150:                                              ; preds = %218, %149
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* @P_NOISECURVES, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %221

154:                                              ; preds = %150
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 6
  %165 = sitofp i32 %164 to float
  store float %165, float* %21, align 4
  store i32 0, i32* %15, align 4
  br label %166

166:                                              ; preds = %214, %154
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* @P_BANDS, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %217

170:                                              ; preds = %166
  %171 = load double, double* %14, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load i32**, i32*** %173, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = sitofp i32 %182 to double
  %184 = fadd double %183, %171
  %185 = fptosi double %184 to i32
  store i32 %185, i32* %181, align 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load i32**, i32*** %187, align 8
  %189 = load i32, i32* %17, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = sitofp i32 %196 to float
  %198 = load float, float* %21, align 4
  %199 = fcmp olt float %197, %198
  br i1 %199, label %200, label %213

200:                                              ; preds = %170
  %201 = load float, float* %21, align 4
  %202 = fptosi float %201 to i32
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i32**, i32*** %204, align 8
  %206 = load i32, i32* %17, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %15, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %202, i32* %212, align 4
  br label %213

213:                                              ; preds = %200, %170
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %15, align 4
  br label %166

217:                                              ; preds = %166
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %17, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %17, align 4
  br label %150

221:                                              ; preds = %150
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
