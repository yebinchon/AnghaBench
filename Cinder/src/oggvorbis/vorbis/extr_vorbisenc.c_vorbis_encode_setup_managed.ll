; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_setup_managed.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_setup_managed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32, i64, i64, double, float, i64, double, i32, i32 }

@OV_EINVAL = common dso_local global i32 0, align 4
@OV_EIMPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_encode_setup_managed(%struct.TYPE_6__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %14, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %15, align 8
  %22 = load i64, i64* %12, align 8
  %23 = sitofp i64 %22 to double
  store double %23, double* %16, align 8
  %24 = load i64, i64* %12, align 8
  %25 = sitofp i64 %24 to double
  %26 = fcmp ole double %25, 0.000000e+00
  br i1 %26, label %27, label %58

27:                                               ; preds = %6
  %28 = load i64, i64* %11, align 8
  %29 = sitofp i64 %28 to double
  %30 = fcmp ogt double %29, 0.000000e+00
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i64, i64* %13, align 8
  %33 = sitofp i64 %32 to double
  %34 = fcmp ogt double %33, 0.000000e+00
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %13, align 8
  %38 = add nsw i64 %36, %37
  %39 = sitofp i64 %38 to double
  %40 = fmul double %39, 5.000000e-01
  %41 = fptosi double %40 to i64
  store i64 %41, i64* %12, align 8
  br label %47

42:                                               ; preds = %31
  %43 = load i64, i64* %11, align 8
  %44 = sitofp i64 %43 to double
  %45 = fmul double %44, 8.750000e-01
  %46 = fptosi double %45 to i64
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %42, %35
  br label %57

48:                                               ; preds = %27
  %49 = load i64, i64* %13, align 8
  %50 = sitofp i64 %49 to double
  %51 = fcmp ogt double %50, 0.000000e+00
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* %13, align 8
  store i64 %53, i64* %12, align 8
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @OV_EINVAL, align 4
  store i32 %55, i32* %7, align 4
  br label %102

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %47
  br label %58

58:                                               ; preds = %57, %6
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 10
  %67 = call i32 @get_setup_template(i64 %62, i64 %63, i64 %64, i32 1, i32* %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %58
  %75 = load i32, i32* @OV_EIMPL, align 4
  store i32 %75, i32* %7, align 4
  br label %102

76:                                               ; preds = %58
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @vorbis_encode_setup_setting(%struct.TYPE_6__* %77, i64 %78, i64 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i32 1, i32* %84, align 4
  %85 = load i64, i64* %13, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  store i64 %88, i64* %90, align 8
  %91 = load double, double* %16, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  store double %91, double* %93, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 6
  store float 1.500000e+00, float* %95, align 8
  %96 = load i64, i64* %12, align 8
  %97 = mul nsw i64 %96, 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 7
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 8
  store double 1.000000e-01, double* %101, align 8
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %76, %74, %54
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @get_setup_template(i64, i64, i64, i32, i32*) #1

declare dso_local i32 @vorbis_encode_setup_setting(%struct.TYPE_6__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
