; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c_ov_time_seek_page.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c_ov_time_seek_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__*, i64*, i32 }
%struct.TYPE_6__ = type { double }

@OPENED = common dso_local global i64 0, align 8
@OV_EINVAL = common dso_local global i32 0, align 4
@OV_ENOSEEK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov_time_seek_page(%struct.TYPE_7__* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store double %1, double* %5, align 8
  store i32 -1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @OPENED, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @OV_EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %93

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @OV_ENOSEEK, align 4
  store i32 %24, i32* %3, align 4
  br label %93

25:                                               ; preds = %18
  %26 = load double, double* %5, align 8
  %27 = fcmp olt double %26, 0.000000e+00
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @OV_EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %93

30:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %62, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call double @ov_time_total(%struct.TYPE_7__* %38, i32 %39)
  store double %40, double* %9, align 8
  %41 = load double, double* %5, align 8
  %42 = load double, double* %8, align 8
  %43 = load double, double* %9, align 8
  %44 = fadd double %42, %43
  %45 = fcmp olt double %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %65

47:                                               ; preds = %37
  %48 = load double, double* %9, align 8
  %49 = load double, double* %8, align 8
  %50 = fadd double %49, %48
  store double %50, double* %8, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %54, 2
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %53, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %47
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %31

65:                                               ; preds = %46, %31
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @OV_EINVAL, align 4
  store i32 %72, i32* %3, align 4
  br label %93

73:                                               ; preds = %65
  %74 = load i64, i64* %7, align 8
  %75 = sitofp i64 %74 to double
  %76 = load double, double* %5, align 8
  %77 = load double, double* %8, align 8
  %78 = fsub double %76, %77
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load double, double* %85, align 8
  %87 = fmul double %78, %86
  %88 = fadd double %75, %87
  %89 = fptosi double %88 to i64
  store i64 %89, i64* %10, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @ov_pcm_seek_page(%struct.TYPE_7__* %90, i64 %91)
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %73, %71, %28, %23, %16
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local double @ov_time_total(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ov_pcm_seek_page(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
