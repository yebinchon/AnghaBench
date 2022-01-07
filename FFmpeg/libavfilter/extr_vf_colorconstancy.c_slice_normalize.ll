; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorconstancy.c_slice_normalize.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorconstancy.c_slice_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32*, i32* }
%struct.TYPE_5__ = type { double*** }

@NUM_PLANES = common dso_local global i32 0, align 4
@INDEX_DX = common dso_local global i64 0, align 8
@INDEX_DY = common dso_local global i64 0, align 8
@INDEX_NORM = common dso_local global i64 0, align 8
@INDEX_DXY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32)* @slice_normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slice_normalize(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca i32, align 4
  %22 = alloca double*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %9, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %10, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %173, %4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @NUM_PLANES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %176

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  %61 = mul nsw i32 %58, %60
  %62 = load i32, i32* %8, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* %17, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load double***, double**** %65, align 8
  %67 = load i64, i64* @INDEX_DX, align 8
  %68 = getelementptr inbounds double**, double*** %66, i64 %67
  %69 = load double**, double*** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double*, double** %69, i64 %71
  %73 = load double*, double** %72, align 8
  store double* %73, double** %18, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load double***, double**** %75, align 8
  %77 = load i64, i64* @INDEX_DY, align 8
  %78 = getelementptr inbounds double**, double*** %76, i64 %77
  %79 = load double**, double*** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double*, double** %79, i64 %81
  %83 = load double*, double** %82, align 8
  store double* %83, double** %19, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load double***, double**** %85, align 8
  %87 = load i64, i64* @INDEX_NORM, align 8
  %88 = getelementptr inbounds double**, double*** %86, i64 %87
  %89 = load double**, double*** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double*, double** %89, i64 %91
  %93 = load double*, double** %92, align 8
  store double* %93, double** %20, align 8
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %125

96:                                               ; preds = %35
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %21, align 4
  br label %98

98:                                               ; preds = %121, %96
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %98
  %103 = load double*, double** %18, align 8
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %103, i64 %105
  %107 = load double, double* %106, align 8
  %108 = call i32 @pow(double %107, i32 2)
  %109 = load double*, double** %19, align 8
  %110 = load i32, i32* %21, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, double* %109, i64 %111
  %113 = load double, double* %112, align 8
  %114 = call i32 @pow(double %113, i32 2)
  %115 = add nsw i32 %108, %114
  %116 = call double @sqrt(i32 %115)
  %117 = load double*, double** %20, align 8
  %118 = load i32, i32* %21, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %117, i64 %119
  store double %116, double* %120, align 8
  br label %121

121:                                              ; preds = %102
  %122 = load i32, i32* %21, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %21, align 4
  br label %98

124:                                              ; preds = %98
  br label %172

125:                                              ; preds = %35
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load double***, double**** %127, align 8
  %129 = load i64, i64* @INDEX_DXY, align 8
  %130 = getelementptr inbounds double**, double*** %128, i64 %129
  %131 = load double**, double*** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double*, double** %131, i64 %133
  %135 = load double*, double** %134, align 8
  store double* %135, double** %22, align 8
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %21, align 4
  br label %137

137:                                              ; preds = %168, %125
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %171

141:                                              ; preds = %137
  %142 = load double*, double** %18, align 8
  %143 = load i32, i32* %21, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds double, double* %142, i64 %144
  %146 = load double, double* %145, align 8
  %147 = call i32 @pow(double %146, i32 2)
  %148 = load double*, double** %22, align 8
  %149 = load i32, i32* %21, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, double* %148, i64 %150
  %152 = load double, double* %151, align 8
  %153 = call i32 @pow(double %152, i32 2)
  %154 = mul nsw i32 4, %153
  %155 = add nsw i32 %147, %154
  %156 = load double*, double** %19, align 8
  %157 = load i32, i32* %21, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, double* %156, i64 %158
  %160 = load double, double* %159, align 8
  %161 = call i32 @pow(double %160, i32 2)
  %162 = add nsw i32 %155, %161
  %163 = call double @sqrt(i32 %162)
  %164 = load double*, double** %20, align 8
  %165 = load i32, i32* %21, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double, double* %164, i64 %166
  store double %163, double* %167, align 8
  br label %168

168:                                              ; preds = %141
  %169 = load i32, i32* %21, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %21, align 4
  br label %137

171:                                              ; preds = %137
  br label %172

172:                                              ; preds = %171, %124
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  br label %31

176:                                              ; preds = %31
  ret i32 0
}

declare dso_local double @sqrt(i32) #1

declare dso_local i32 @pow(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
