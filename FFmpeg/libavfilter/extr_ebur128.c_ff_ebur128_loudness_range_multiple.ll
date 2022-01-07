; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_ebur128.c_ff_ebur128_loudness_range_multiple.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_ebur128.c_ff_ebur128_loudness_range_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }

@FF_EBUR128_MODE_LRA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@histogram_energies = common dso_local global double* null, align 8
@MINUS_20DB = common dso_local global double 0.000000e+00, align 8
@histogram_energy_boundaries = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_ebur128_loudness_range_multiple(%struct.TYPE_5__** %0, i64 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca double*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca [1000 x i64], align 16
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %5, align 8
  store i64 %1, i64* %6, align 8
  store double* %2, double** %7, align 8
  %19 = bitcast [1000 x i64]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 8000, i1 false)
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %46, %3
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %25, i64 %26
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %31, i64 %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FF_EBUR128_MODE_LRA, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @FF_EBUR128_MODE_LRA, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* @EINVAL, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %4, align 4
  br label %225

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %24
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %20

49:                                               ; preds = %20
  store i64 0, i64* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store i64 0, i64* %8, align 8
  br label %50

50:                                               ; preds = %117, %49
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %120

54:                                               ; preds = %50
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = icmp ne %struct.TYPE_5__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %117

61:                                               ; preds = %54
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %113, %61
  %63 = load i64, i64* %9, align 8
  %64 = icmp ult i64 %63, 1000
  br i1 %64, label %65, label %116

65:                                               ; preds = %62
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %66, i64 %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds [1000 x i64], [1000 x i64]* %15, i64 0, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %81, i64 %82
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %10, align 8
  %94 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %94, i64 %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = uitofp i64 %104 to double
  %106 = load double*, double** @histogram_energies, align 8
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds double, double* %106, i64 %107
  %109 = load double, double* %108, align 8
  %110 = fmul double %105, %109
  %111 = load double, double* %11, align 8
  %112 = fadd double %111, %110
  store double %112, double* %11, align 8
  br label %113

113:                                              ; preds = %65
  %114 = load i64, i64* %9, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %9, align 8
  br label %62

116:                                              ; preds = %62
  br label %117

117:                                              ; preds = %116, %60
  %118 = load i64, i64* %8, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %8, align 8
  br label %50

120:                                              ; preds = %50
  %121 = load i64, i64* %10, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %124, align 8
  store i32 0, i32* %4, align 4
  br label %225

125:                                              ; preds = %120
  %126 = load i64, i64* %10, align 8
  %127 = uitofp i64 %126 to double
  %128 = load double, double* %11, align 8
  %129 = fdiv double %128, %127
  store double %129, double* %11, align 8
  %130 = load double, double* @MINUS_20DB, align 8
  %131 = load double, double* %11, align 8
  %132 = fmul double %130, %131
  store double %132, double* %12, align 8
  %133 = load double, double* %12, align 8
  %134 = load double*, double** @histogram_energy_boundaries, align 8
  %135 = getelementptr inbounds double, double* %134, i64 0
  %136 = load double, double* %135, align 8
  %137 = fcmp olt double %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  store i64 0, i64* %18, align 8
  br label %152

139:                                              ; preds = %125
  %140 = load double, double* %12, align 8
  %141 = call i64 @find_histogram_index(double %140)
  store i64 %141, i64* %18, align 8
  %142 = load double, double* %12, align 8
  %143 = load double*, double** @histogram_energies, align 8
  %144 = load i64, i64* %18, align 8
  %145 = getelementptr inbounds double, double* %143, i64 %144
  %146 = load double, double* %145, align 8
  %147 = fcmp ogt double %142, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load i64, i64* %18, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %18, align 8
  br label %151

151:                                              ; preds = %148, %139
  br label %152

152:                                              ; preds = %151, %138
  store i64 0, i64* %10, align 8
  %153 = load i64, i64* %18, align 8
  store i64 %153, i64* %9, align 8
  br label %154

154:                                              ; preds = %163, %152
  %155 = load i64, i64* %9, align 8
  %156 = icmp ult i64 %155, 1000
  br i1 %156, label %157, label %166

157:                                              ; preds = %154
  %158 = load i64, i64* %9, align 8
  %159 = getelementptr inbounds [1000 x i64], [1000 x i64]* %15, i64 0, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %10, align 8
  %162 = add i64 %161, %160
  store i64 %162, i64* %10, align 8
  br label %163

163:                                              ; preds = %157
  %164 = load i64, i64* %9, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %9, align 8
  br label %154

166:                                              ; preds = %154
  %167 = load i64, i64* %10, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %170, align 8
  store i32 0, i32* %4, align 4
  br label %225

171:                                              ; preds = %166
  %172 = load i64, i64* %10, align 8
  %173 = sub i64 %172, 1
  %174 = uitofp i64 %173 to double
  %175 = fmul double %174, 1.000000e-01
  %176 = fadd double %175, 5.000000e-01
  %177 = fptoui double %176 to i64
  store i64 %177, i64* %16, align 8
  %178 = load i64, i64* %10, align 8
  %179 = sub i64 %178, 1
  %180 = uitofp i64 %179 to double
  %181 = fmul double %180, 0x3FEE666666666666
  %182 = fadd double %181, 5.000000e-01
  %183 = fptoui double %182 to i64
  store i64 %183, i64* %17, align 8
  store i64 0, i64* %10, align 8
  %184 = load i64, i64* %18, align 8
  store i64 %184, i64* %9, align 8
  br label %185

185:                                              ; preds = %189, %171
  %186 = load i64, i64* %10, align 8
  %187 = load i64, i64* %16, align 8
  %188 = icmp ule i64 %186, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load i64, i64* %9, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %9, align 8
  %192 = getelementptr inbounds [1000 x i64], [1000 x i64]* %15, i64 0, i64 %190
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %10, align 8
  %195 = add i64 %194, %193
  store i64 %195, i64* %10, align 8
  br label %185

196:                                              ; preds = %185
  %197 = load double*, double** @histogram_energies, align 8
  %198 = load i64, i64* %9, align 8
  %199 = sub i64 %198, 1
  %200 = getelementptr inbounds double, double* %197, i64 %199
  %201 = load double, double* %200, align 8
  store double %201, double* %14, align 8
  br label %202

202:                                              ; preds = %206, %196
  %203 = load i64, i64* %10, align 8
  %204 = load i64, i64* %17, align 8
  %205 = icmp ule i64 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %202
  %207 = load i64, i64* %9, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %9, align 8
  %209 = getelementptr inbounds [1000 x i64], [1000 x i64]* %15, i64 0, i64 %207
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %10, align 8
  %212 = add i64 %211, %210
  store i64 %212, i64* %10, align 8
  br label %202

213:                                              ; preds = %202
  %214 = load double*, double** @histogram_energies, align 8
  %215 = load i64, i64* %9, align 8
  %216 = sub i64 %215, 1
  %217 = getelementptr inbounds double, double* %214, i64 %216
  %218 = load double, double* %217, align 8
  store double %218, double* %13, align 8
  %219 = load double, double* %13, align 8
  %220 = call double @ebur128_energy_to_loudness(double %219)
  %221 = load double, double* %14, align 8
  %222 = call double @ebur128_energy_to_loudness(double %221)
  %223 = fsub double %220, %222
  %224 = load double*, double** %7, align 8
  store double %223, double* %224, align 8
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %213, %169, %123, %41
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i64 @find_histogram_index(double) #2

declare dso_local double @ebur128_energy_to_loudness(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
