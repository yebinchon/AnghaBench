; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_element_data_float.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_element_data_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

@.str = private unnamed_addr constant [10 x i8] c"f32-float\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"f64-float\00", align 1
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"float: %f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, double*)* @mkv_read_element_data_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_read_element_data_float(i32* %0, i32 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca %union.anon, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %25 [
    i32 4, label %10
    i32 8, label %18
  ]

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @READ_U32(i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = bitcast %union.anon* %8 to i32*
  store i32 %12, i32* %13, align 8
  %14 = bitcast %union.anon* %8 to float*
  %15 = load float, float* %14, align 8
  %16 = fpext float %15 to double
  %17 = load double*, double** %7, align 8
  store double %16, double* %17, align 8
  br label %27

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @READ_U64(i32* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %21 = bitcast %union.anon* %8 to i32*
  store i32 %20, i32* %21, align 8
  %22 = bitcast %union.anon* %8 to double*
  %23 = load double, double* %22, align 8
  %24 = load double*, double** %7, align 8
  store double %23, double* %24, align 8
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %18, %10
  %28 = load i32*, i32** %5, align 8
  %29 = load double*, double** %7, align 8
  %30 = load double, double* %29, align 8
  %31 = call i32 @LOG_FORMAT(i32* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), double %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @STREAM_STATUS(i32* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %25
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @READ_U32(i32*, i8*) #1

declare dso_local i32 @READ_U64(i32*, i8*) #1

declare dso_local i32 @LOG_FORMAT(i32*, i8*, double) #1

declare dso_local i32 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
