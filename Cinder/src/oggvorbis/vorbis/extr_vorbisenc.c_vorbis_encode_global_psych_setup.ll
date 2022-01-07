; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_global_psych_setup.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_global_psych_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, double, %struct.TYPE_10__*, double*)* @vorbis_encode_global_psych_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vorbis_encode_global_psych_setup(%struct.TYPE_11__* %0, double %1, %struct.TYPE_10__* %2, double* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store double %1, double* %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store double* %3, double** %8, align 8
  %14 = load double, double* %6, align 8
  %15 = fptosi double %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load double, double* %6, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sitofp i32 %17 to double
  %19 = fsub double %16, %18
  store double %19, double* %11, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %12, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %13, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = load double*, double** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  %31 = load double, double* %30, align 8
  %32 = fptosi double %31 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %33
  %35 = call i32 @memcpy(%struct.TYPE_10__* %25, %struct.TYPE_10__* %34, i32 24)
  %36 = load double*, double** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  %40 = load double, double* %39, align 8
  %41 = load double, double* %11, align 8
  %42 = fsub double 1.000000e+00, %41
  %43 = fmul double %40, %42
  %44 = load double*, double** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %44, i64 %47
  %49 = load double, double* %48, align 8
  %50 = load double, double* %11, align 8
  %51 = fmul double %49, %50
  %52 = fadd double %43, %51
  store double %52, double* %11, align 8
  %53 = load double, double* %11, align 8
  %54 = fptosi double %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sitofp i32 %55 to double
  %57 = load double, double* %11, align 8
  %58 = fsub double %57, %56
  store double %58, double* %11, align 8
  %59 = load double, double* %11, align 8
  %60 = fcmp oeq double %59, 0.000000e+00
  br i1 %60, label %61, label %67

61:                                               ; preds = %4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %10, align 4
  store double 1.000000e+00, double* %11, align 8
  br label %67

67:                                               ; preds = %64, %61, %4
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %144, %67
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %147

71:                                               ; preds = %68
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sitofp i32 %81 to double
  %83 = load double, double* %11, align 8
  %84 = fsub double 1.000000e+00, %83
  %85 = fmul double %82, %84
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sitofp i32 %96 to double
  %98 = load double, double* %11, align 8
  %99 = fmul double %97, %98
  %100 = fadd double %85, %99
  %101 = fptosi double %100 to i32
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sitofp i32 %117 to double
  %119 = load double, double* %11, align 8
  %120 = fsub double 1.000000e+00, %119
  %121 = fmul double %118, %120
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sitofp i32 %132 to double
  %134 = load double, double* %11, align 8
  %135 = fmul double %133, %134
  %136 = fadd double %121, %135
  %137 = fptosi double %136 to i32
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %137, i32* %143, align 4
  br label %144

144:                                              ; preds = %71
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %68

147:                                              ; preds = %68
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
