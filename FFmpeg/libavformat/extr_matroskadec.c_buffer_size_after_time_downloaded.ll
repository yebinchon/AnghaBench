; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_buffer_size_after_time_downloaded.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_buffer_size_after_time_downloaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, double, double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double, double, double, double*, double*, i32*, double)* @buffer_size_after_time_downloaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_size_after_time_downloaded(double %0, double %1, double %2, double %3, double* %4, double* %5, i32* %6, double %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca %struct.TYPE_3__, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca %struct.TYPE_3__, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca %struct.TYPE_3__, align 8
  store double %0, double* %10, align 8
  store double %1, double* %11, align 8
  store double %2, double* %12, align 8
  store double %3, double* %13, align 8
  store double* %4, double** %14, align 8
  store double* %5, double** %15, align 8
  store i32* %6, i32** %16, align 8
  store double %7, double* %17, align 8
  store double 1.000000e+09, double* %18, align 8
  %40 = load double, double* %10, align 8
  %41 = load double, double* %18, align 8
  %42 = fdiv double %40, %41
  store double %42, double* %19, align 8
  store i32 0, i32* %20, align 4
  %43 = load double, double* %11, align 8
  %44 = load double, double* %18, align 8
  %45 = fmul double %43, %44
  store double %45, double* %21, align 8
  %46 = load double, double* %10, align 8
  %47 = load double, double* %21, align 8
  %48 = fadd double %46, %47
  store double %48, double* %22, align 8
  store double 0.000000e+00, double* %23, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = load double, double* %10, align 8
  %51 = load double, double* %17, align 8
  call void @get_cue_desc(%struct.TYPE_3__* sret %24, i32* %49, double %50, double %51)
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %221

56:                                               ; preds = %8
  %57 = load double*, double** %15, align 8
  store double 0.000000e+00, double* %57, align 8
  %58 = load double, double* %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sitofp i32 %60 to double
  %62 = fcmp ogt double %58, %61
  br i1 %62, label %63, label %135

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %65 = load double, double* %64, align 8
  %66 = load double, double* %10, align 8
  %67 = fsub double %65, %66
  store double %67, double* %25, align 8
  %68 = load double, double* %25, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %70 = load double, double* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sitofp i32 %72 to double
  %74 = fsub double %70, %73
  %75 = fdiv double %68, %74
  store double %75, double* %26, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %77 = load double, double* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %79 = load double, double* %78, align 8
  %80 = fsub double %77, %79
  %81 = load double, double* %26, align 8
  %82 = fmul double %80, %81
  store double %82, double* %27, align 8
  %83 = load double, double* %27, align 8
  %84 = fmul double %83, 8.000000e+00
  %85 = load double, double* %12, align 8
  %86 = fdiv double %84, %85
  store double %86, double* %28, align 8
  %87 = load double, double* %25, align 8
  %88 = load double, double* %18, align 8
  %89 = fdiv double %87, %88
  %90 = load double, double* %28, align 8
  %91 = fsub double %89, %90
  %92 = load double, double* %23, align 8
  %93 = fadd double %92, %91
  store double %93, double* %23, align 8
  %94 = load double, double* %28, align 8
  %95 = load double*, double** %15, align 8
  %96 = load double, double* %95, align 8
  %97 = fadd double %96, %94
  store double %97, double* %95, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %99 = load double, double* %98, align 8
  %100 = load double, double* %22, align 8
  %101 = fcmp oge double %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %63
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %104 = load double, double* %103, align 8
  %105 = load double, double* %18, align 8
  %106 = fdiv double %104, %105
  store double %106, double* %29, align 8
  %107 = load double, double* %11, align 8
  %108 = load double, double* %29, align 8
  %109 = load double, double* %19, align 8
  %110 = fsub double %108, %109
  %111 = fdiv double %107, %110
  store double %111, double* %30, align 8
  %112 = load double, double* %30, align 8
  %113 = load double, double* %23, align 8
  %114 = fmul double %112, %113
  store double %114, double* %23, align 8
  %115 = load double, double* %30, align 8
  %116 = load double*, double** %15, align 8
  %117 = load double, double* %116, align 8
  %118 = fmul double %115, %117
  %119 = load double*, double** %15, align 8
  store double %118, double* %119, align 8
  br label %120

120:                                              ; preds = %102, %63
  %121 = load double, double* %23, align 8
  %122 = load double*, double** %14, align 8
  %123 = load double, double* %122, align 8
  %124 = fadd double %121, %123
  %125 = load double, double* %13, align 8
  %126 = fcmp ole double %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  store i32 1, i32* %9, align 4
  br label %221

128:                                              ; preds = %120
  %129 = load i32*, i32** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %131 = load double, double* %130, align 8
  %132 = load double, double* %17, align 8
  call void @get_cue_desc(%struct.TYPE_3__* sret %31, i32* %129, double %131, double %132)
  %133 = bitcast %struct.TYPE_3__* %24 to i8*
  %134 = bitcast %struct.TYPE_3__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 32, i1 false)
  br label %135

135:                                              ; preds = %128, %56
  br label %136

136:                                              ; preds = %207, %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, -1
  br i1 %139, label %140, label %214

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %142 = load double, double* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %144 = load double, double* %143, align 8
  %145 = fsub double %142, %144
  store double %145, double* %32, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %147 = load double, double* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sitofp i32 %149 to double
  %151 = fsub double %147, %150
  store double %151, double* %33, align 8
  %152 = load double, double* %33, align 8
  %153 = load double, double* %18, align 8
  %154 = fdiv double %152, %153
  store double %154, double* %34, align 8
  %155 = load double, double* %32, align 8
  %156 = fmul double %155, 8.000000e+00
  store double %156, double* %35, align 8
  %157 = load double, double* %35, align 8
  %158 = load double, double* %12, align 8
  %159 = fdiv double %157, %158
  store double %159, double* %36, align 8
  %160 = load double, double* %34, align 8
  %161 = load double, double* %36, align 8
  %162 = fsub double %160, %161
  %163 = load double, double* %23, align 8
  %164 = fadd double %163, %162
  store double %164, double* %23, align 8
  %165 = load double, double* %36, align 8
  %166 = load double*, double** %15, align 8
  %167 = load double, double* %166, align 8
  %168 = fadd double %167, %165
  store double %168, double* %166, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %170 = load double, double* %169, align 8
  %171 = load double, double* %22, align 8
  %172 = fcmp oge double %170, %171
  br i1 %172, label %173, label %199

173:                                              ; preds = %140
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %175 = load double, double* %174, align 8
  %176 = load double, double* %18, align 8
  %177 = fdiv double %175, %176
  store double %177, double* %37, align 8
  %178 = load double, double* %11, align 8
  %179 = load double, double* %37, align 8
  %180 = load double, double* %19, align 8
  %181 = fsub double %179, %180
  %182 = fdiv double %178, %181
  store double %182, double* %38, align 8
  %183 = load double, double* %38, align 8
  %184 = load double, double* %23, align 8
  %185 = fmul double %183, %184
  store double %185, double* %23, align 8
  %186 = load double, double* %38, align 8
  %187 = load double*, double** %15, align 8
  %188 = load double, double* %187, align 8
  %189 = fmul double %186, %188
  %190 = load double*, double** %15, align 8
  store double %189, double* %190, align 8
  %191 = load double, double* %23, align 8
  %192 = load double*, double** %14, align 8
  %193 = load double, double* %192, align 8
  %194 = fadd double %191, %193
  %195 = load double, double* %13, align 8
  %196 = fcmp ole double %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %173
  store i32 1, i32* %20, align 4
  br label %198

198:                                              ; preds = %197, %173
  br label %214

199:                                              ; preds = %140
  %200 = load double, double* %23, align 8
  %201 = load double*, double** %14, align 8
  %202 = load double, double* %201, align 8
  %203 = fadd double %200, %202
  %204 = load double, double* %13, align 8
  %205 = fcmp ole double %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  store i32 1, i32* %20, align 4
  br label %214

207:                                              ; preds = %199
  %208 = load i32*, i32** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %210 = load double, double* %209, align 8
  %211 = load double, double* %17, align 8
  call void @get_cue_desc(%struct.TYPE_3__* sret %39, i32* %208, double %210, double %211)
  %212 = bitcast %struct.TYPE_3__* %24 to i8*
  %213 = bitcast %struct.TYPE_3__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %212, i8* align 8 %213, i64 32, i1 false)
  br label %136

214:                                              ; preds = %206, %198, %136
  %215 = load double*, double** %14, align 8
  %216 = load double, double* %215, align 8
  %217 = load double, double* %23, align 8
  %218 = fadd double %216, %217
  %219 = load double*, double** %14, align 8
  store double %218, double* %219, align 8
  %220 = load i32, i32* %20, align 4
  store i32 %220, i32* %9, align 4
  br label %221

221:                                              ; preds = %214, %127, %55
  %222 = load i32, i32* %9, align 4
  ret i32 %222
}

declare dso_local void @get_cue_desc(%struct.TYPE_3__* sret, i32*, double, double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
