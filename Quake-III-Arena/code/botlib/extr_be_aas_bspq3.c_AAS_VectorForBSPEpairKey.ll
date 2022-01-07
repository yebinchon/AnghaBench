; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_bspq3.c_AAS_VectorForBSPEpairKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_bspq3.c_AAS_VectorForBSPEpairKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_EPAIRKEY = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_VectorForBSPEpairKey(i32 %0, i8* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store double* %2, double** %7, align 8
  %14 = load i32, i32* @MAX_EPAIRKEY, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load double*, double** %7, align 8
  %19 = call i32 @VectorClear(double* %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @MAX_EPAIRKEY, align 4
  %23 = call i32 @AAS_ValueForBSPEpairKey(i32 %20, i8* %21, i8* %17, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @qfalse, align 4
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %39

27:                                               ; preds = %3
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %10, align 8
  %28 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), double* %10, double* %11, double* %12)
  %29 = load double, double* %10, align 8
  %30 = load double*, double** %7, align 8
  %31 = getelementptr inbounds double, double* %30, i64 0
  store double %29, double* %31, align 8
  %32 = load double, double* %11, align 8
  %33 = load double*, double** %7, align 8
  %34 = getelementptr inbounds double, double* %33, i64 1
  store double %32, double* %34, align 8
  %35 = load double, double* %12, align 8
  %36 = load double*, double** %7, align 8
  %37 = getelementptr inbounds double, double* %36, i64 2
  store double %35, double* %37, align 8
  %38 = load i32, i32* @qtrue, align 4
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %39

39:                                               ; preds = %27, %25
  %40 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VectorClear(double*) #2

declare dso_local i32 @AAS_ValueForBSPEpairKey(i32, i8*, i8*, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, double*, double*, double*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
