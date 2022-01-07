; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/tools/extr_test_trig.c_test_rotate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/tools/extr_test_trig.c_test_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double }

@FT_ANGLE_2PI = common dso_local global i32 0, align 4
@SPI = common dso_local global i32 0, align 4
@THRESHOLD = common dso_local global i64 0, align 8
@error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"FT_Rotate( (%.7f,%.7f), %.5f ) = ( %.7f, %.7f ), rot = ( %.7f, %.7f )\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rotate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %108, %0
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @FT_ANGLE_2PI, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %113

21:                                               ; preds = %17
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @SPI, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sitofp i32 %24 to double
  store double %25, double* %2, align 8
  %26 = load double, double* %2, align 8
  %27 = call double @cos(double %26) #3
  store double %27, double* %3, align 8
  %28 = load double, double* %2, align 8
  %29 = call double @sin(double %28) #3
  store double %29, double* %4, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %102, %21
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @FT_ANGLE_2PI, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %107

34:                                               ; preds = %30
  store double 5.000000e+02, double* %11, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SPI, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sitofp i32 %37 to double
  store double %38, double* %12, align 8
  %39 = load double, double* %11, align 8
  %40 = load double, double* %12, align 8
  %41 = call double @cos(double %40) #3
  %42 = fmul double %39, %41
  store double %42, double* %13, align 8
  %43 = load double, double* %11, align 8
  %44 = load double, double* %12, align 8
  %45 = call double @sin(double %44) #3
  %46 = fmul double %43, %45
  store double %46, double* %14, align 8
  %47 = load double, double* %13, align 8
  %48 = fmul double %47, 6.553600e+04
  store double %48, double* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store double %48, double* %49, align 8
  %50 = load double, double* %14, align 8
  %51 = fmul double %50, 6.553600e+04
  store double %51, double* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store double %51, double* %52, align 8
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @FT_Vector_Rotate(%struct.TYPE_3__* %10, i32 %53)
  %55 = load double, double* %13, align 8
  %56 = load double, double* %3, align 8
  %57 = fmul double %55, %56
  %58 = load double, double* %14, align 8
  %59 = load double, double* %4, align 8
  %60 = fmul double %58, %59
  %61 = fsub double %57, %60
  store double %61, double* %15, align 8
  %62 = load double, double* %13, align 8
  %63 = load double, double* %4, align 8
  %64 = fmul double %62, %63
  %65 = load double, double* %14, align 8
  %66 = load double, double* %3, align 8
  %67 = fmul double %65, %66
  %68 = fadd double %64, %67
  store double %68, double* %16, align 8
  %69 = load double, double* %15, align 8
  %70 = fmul double %69, 6.553600e+04
  store double %70, double* %8, align 8
  %71 = load double, double* %16, align 8
  %72 = fmul double %71, 6.553600e+04
  store double %72, double* %9, align 8
  %73 = load double, double* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = fsub double %73, %75
  %77 = call i64 @abs(double %76)
  %78 = load i64, i64* @THRESHOLD, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %34
  %81 = load double, double* %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %83 = load double, double* %82, align 8
  %84 = fsub double %81, %83
  %85 = call i64 @abs(double %84)
  %86 = load i64, i64* @THRESHOLD, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %80, %34
  store i32 1, i32* @error, align 4
  %89 = load double, double* %13, align 8
  %90 = load double, double* %14, align 8
  %91 = load double, double* %2, align 8
  %92 = load double, double* %6, align 8
  %93 = fdiv double %92, 6.553600e+04
  %94 = load double, double* %7, align 8
  %95 = fdiv double %94, 6.553600e+04
  %96 = load double, double* %8, align 8
  %97 = fdiv double %96, 6.553600e+04
  %98 = load double, double* %9, align 8
  %99 = fdiv double %98, 6.553600e+04
  %100 = call i32 @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), double %89, double %90, double %91, double %93, double %95, double %97, double %99)
  br label %101

101:                                              ; preds = %88, %80
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, 65536
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %5, align 4
  br label %30

107:                                              ; preds = %30
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %1, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, 65536
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %1, align 4
  br label %17

113:                                              ; preds = %17
  ret void
}

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

declare dso_local i32 @FT_Vector_Rotate(%struct.TYPE_3__*, i32) #2

declare dso_local i64 @abs(double) #2

declare dso_local i32 @printf(i8*, double, double, double, double, double, double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
