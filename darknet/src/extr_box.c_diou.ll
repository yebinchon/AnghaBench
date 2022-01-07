; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_box.c_diou.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_box.c_diou.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diou(%struct.TYPE_16__* noalias sret %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_17__, align 4
  %7 = alloca %struct.TYPE_17__, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_16__, align 4
  %11 = alloca %struct.TYPE_16__, align 4
  %12 = bitcast %struct.TYPE_17__* %6 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %1, i64* %13, align 4
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %2, i64* %14, align 4
  %15 = bitcast %struct.TYPE_17__* %7 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  store i64 %3, i64* %16, align 4
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  store i64 %4, i64* %17, align 4
  %18 = bitcast %struct.TYPE_17__* %6 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 4
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %22 = load i64, i64* %21, align 4
  %23 = bitcast %struct.TYPE_17__* %7 to { i64, i64 }*
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 4
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  %27 = load i64, i64* %26, align 4
  %28 = call float @box_union(i64 %20, i64 %22, i64 %25, i64 %27)
  store float %28, float* %8, align 4
  %29 = bitcast %struct.TYPE_17__* %6 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 4
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 4
  %34 = bitcast %struct.TYPE_17__* %7 to { i64, i64 }*
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  %38 = load i64, i64* %37, align 4
  %39 = call float @box_intersection(i64 %31, i64 %33, i64 %36, i64 %38)
  store float %39, float* %9, align 4
  %40 = bitcast %struct.TYPE_17__* %6 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 4
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = load i64, i64* %43, align 4
  %45 = bitcast %struct.TYPE_17__* %7 to { i64, i64 }*
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 4
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 1
  %49 = load i64, i64* %48, align 4
  call void @dintersect(%struct.TYPE_16__* sret %10, i64 %42, i64 %44, i64 %47, i64 %49)
  %50 = bitcast %struct.TYPE_17__* %6 to { i64, i64 }*
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 4
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 1
  %54 = load i64, i64* %53, align 4
  %55 = bitcast %struct.TYPE_17__* %7 to { i64, i64 }*
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 4
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %55, i32 0, i32 1
  %59 = load i64, i64* %58, align 4
  call void @dunion(%struct.TYPE_16__* sret %11, i64 %52, i64 %54, i64 %57, i64 %59)
  %60 = bitcast %struct.TYPE_16__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %60, i8 0, i64 32, i1 false)
  %61 = load float, float* %9, align 4
  %62 = fcmp ole float %61, 0.000000e+00
  br i1 %62, label %64, label %63

63:                                               ; preds = %5
  br i1 true, label %64, label %89

64:                                               ; preds = %63, %5
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %66, %68
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %72, %74
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %78, %80
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 2
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %84, %86
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 3
  store i32 %87, i32* %88, align 4
  br label %194

89:                                               ; preds = %63
  %90 = load float, float* %9, align 4
  %91 = load float, float* %8, align 4
  %92 = fdiv float %90, %91
  %93 = fsub float 1.000000e+00, %92
  %94 = fptosi float %93 to i32
  %95 = call i32 @pow(i32 %94, i32 1)
  %96 = mul nsw i32 2, %95
  %97 = sitofp i32 %96 to float
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sitofp i32 %99 to float
  %101 = load float, float* %8, align 4
  %102 = fmul float %100, %101
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sitofp i32 %104 to float
  %106 = load float, float* %9, align 4
  %107 = fmul float %105, %106
  %108 = fsub float %102, %107
  %109 = fmul float %97, %108
  %110 = load float, float* %8, align 4
  %111 = load float, float* %8, align 4
  %112 = fmul float %110, %111
  %113 = fdiv float %109, %112
  %114 = fptosi float %113 to i32
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = load float, float* %9, align 4
  %117 = load float, float* %8, align 4
  %118 = fdiv float %116, %117
  %119 = fsub float 1.000000e+00, %118
  %120 = fptosi float %119 to i32
  %121 = call i32 @pow(i32 %120, i32 1)
  %122 = mul nsw i32 2, %121
  %123 = sitofp i32 %122 to float
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sitofp i32 %125 to float
  %127 = load float, float* %8, align 4
  %128 = fmul float %126, %127
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sitofp i32 %130 to float
  %132 = load float, float* %9, align 4
  %133 = fmul float %131, %132
  %134 = fsub float %128, %133
  %135 = fmul float %123, %134
  %136 = load float, float* %8, align 4
  %137 = load float, float* %8, align 4
  %138 = fmul float %136, %137
  %139 = fdiv float %135, %138
  %140 = fptosi float %139 to i32
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  store i32 %140, i32* %141, align 4
  %142 = load float, float* %9, align 4
  %143 = load float, float* %8, align 4
  %144 = fdiv float %142, %143
  %145 = fsub float 1.000000e+00, %144
  %146 = fptosi float %145 to i32
  %147 = call i32 @pow(i32 %146, i32 1)
  %148 = mul nsw i32 2, %147
  %149 = sitofp i32 %148 to float
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = sitofp i32 %151 to float
  %153 = load float, float* %8, align 4
  %154 = fmul float %152, %153
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = sitofp i32 %156 to float
  %158 = load float, float* %9, align 4
  %159 = fmul float %157, %158
  %160 = fsub float %154, %159
  %161 = fmul float %149, %160
  %162 = load float, float* %8, align 4
  %163 = load float, float* %8, align 4
  %164 = fmul float %162, %163
  %165 = fdiv float %161, %164
  %166 = fptosi float %165 to i32
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 2
  store i32 %166, i32* %167, align 4
  %168 = load float, float* %9, align 4
  %169 = load float, float* %8, align 4
  %170 = fdiv float %168, %169
  %171 = fsub float 1.000000e+00, %170
  %172 = fptosi float %171 to i32
  %173 = call i32 @pow(i32 %172, i32 1)
  %174 = mul nsw i32 2, %173
  %175 = sitofp i32 %174 to float
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = sitofp i32 %177 to float
  %179 = load float, float* %8, align 4
  %180 = fmul float %178, %179
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = sitofp i32 %182 to float
  %184 = load float, float* %9, align 4
  %185 = fmul float %183, %184
  %186 = fsub float %180, %185
  %187 = fmul float %175, %186
  %188 = load float, float* %8, align 4
  %189 = load float, float* %8, align 4
  %190 = fmul float %188, %189
  %191 = fdiv float %187, %190
  %192 = fptosi float %191 to i32
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 3
  store i32 %192, i32* %193, align 4
  br label %194

194:                                              ; preds = %89, %64
  ret void
}

declare dso_local float @box_union(i64, i64, i64, i64) #1

declare dso_local float @box_intersection(i64, i64, i64, i64) #1

declare dso_local void @dintersect(%struct.TYPE_16__* sret, i64, i64, i64, i64) #1

declare dso_local void @dunion(%struct.TYPE_16__* sret, i64, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
