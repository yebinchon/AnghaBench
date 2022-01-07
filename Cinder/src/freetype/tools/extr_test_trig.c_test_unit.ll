; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/tools/extr_test_trig.c_test_unit.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/tools/extr_test_trig.c_test_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double }

@FT_ANGLE_2PI = common dso_local global i32 0, align 4
@SPI = common dso_local global i32 0, align 4
@THRESHOLD = common dso_local global i64 0, align 8
@error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"FT_Vector_Unit[%3d] = ( %.7f, %.7f )  vec = ( %.7f, %.7f )\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_unit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %61, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @FT_ANGLE_2PI, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %66

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @FT_Vector_Unit(%struct.TYPE_3__* %2, i32 %13)
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @SPI, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sitofp i32 %17 to double
  store double %18, double* %3, align 8
  %19 = load double, double* %3, align 8
  %20 = call double @cos(double %19) #3
  store double %20, double* %4, align 8
  %21 = load double, double* %3, align 8
  %22 = call double @sin(double %21) #3
  store double %22, double* %5, align 8
  %23 = load double, double* %4, align 8
  %24 = fmul double %23, 6.553600e+04
  %25 = fptosi double %24 to i64
  store i64 %25, i64* %6, align 8
  %26 = load double, double* %5, align 8
  %27 = fmul double %26, 6.553600e+04
  %28 = fptosi double %27 to i64
  store i64 %28, i64* %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sitofp i64 %31 to double
  %33 = fsub double %30, %32
  %34 = fptosi double %33 to i64
  %35 = call i64 @abs(i64 %34)
  %36 = load i64, i64* @THRESHOLD, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %12
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %40 = load double, double* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = sitofp i64 %41 to double
  %43 = fsub double %40, %42
  %44 = fptosi double %43 to i64
  %45 = call i64 @abs(i64 %44)
  %46 = load i64, i64* @THRESHOLD, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %38, %12
  store i32 1, i32* @error, align 4
  %49 = load i32, i32* %1, align 4
  %50 = ashr i32 %49, 16
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = fdiv double %52, 6.553600e+04
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %55 = load double, double* %54, align 8
  %56 = fdiv double %55, 6.553600e+04
  %57 = load double, double* %4, align 8
  %58 = load double, double* %5, align 8
  %59 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %50, double %53, double %56, double %57, double %58)
  br label %60

60:                                               ; preds = %48, %38
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, 65536
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %1, align 4
  br label %8

66:                                               ; preds = %8
  ret void
}

declare dso_local i32 @FT_Vector_Unit(%struct.TYPE_3__*, i32) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @printf(i8*, i32, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
