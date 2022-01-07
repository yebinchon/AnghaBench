; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_gamma_transform_test.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_gamma_transform_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"sbit(\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"gamma \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"16to8 \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32, i32, double, double, i32, i32, i32)* @gamma_transform_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gamma_transform_test(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, double %5, double %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca [64 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store double %5, double* %16, align 8
  store double %6, double* %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i64 0, i64* %21, align 8
  %23 = load i32, i32* %18, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %10
  %27 = load i32, i32* %18, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %31 = load i64, i64* %21, align 8
  %32 = call i64 @safecat(i8* %30, i32 64, i64 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i64 %32, i64* %21, align 8
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %34 = load i64, i64* %21, align 8
  %35 = load i32, i32* %18, align 4
  %36 = call i64 @safecatn(i8* %33, i32 64, i64 %34, i32 %35)
  store i64 %36, i64* %21, align 8
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %38 = load i64, i64* %21, align 8
  %39 = call i64 @safecat(i8* %37, i32 64, i64 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %39, i64* %21, align 8
  br label %44

40:                                               ; preds = %26, %10
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %42 = load i64, i64* %21, align 8
  %43 = call i64 @safecat(i8* %41, i32 64, i64 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i64 %43, i64* %21, align 8
  br label %44

44:                                               ; preds = %40, %29
  %45 = load i32, i32* %20, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %49 = load i64, i64* %21, align 8
  %50 = call i64 @safecat(i8* %48, i32 64, i64 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i64 %50, i64* %21, align 8
  br label %51

51:                                               ; preds = %47, %44
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %53 = load i64, i64* %21, align 8
  %54 = load double, double* %16, align 8
  %55 = call i64 @safecatd(i8* %52, i32 64, i64 %53, double %54, i32 3)
  store i64 %55, i64* %21, align 8
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %57 = load i64, i64* %21, align 8
  %58 = call i64 @safecat(i8* %56, i32 64, i64 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i64 %58, i64* %21, align 8
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %60 = load i64, i64* %21, align 8
  %61 = load double, double* %17, align 8
  %62 = call i64 @safecatd(i8* %59, i32 64, i64 %60, double %61, i32 3)
  store i64 %62, i64* %21, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load double, double* %16, align 8
  %69 = load double, double* %17, align 8
  %70 = load i32, i32* %18, align 4
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @gamma_test(%struct.TYPE_4__* %63, i32 %64, i32 %65, i32 %66, i32 %67, double %68, double %69, i32 %70, i32 0, i8* %71, i32 %72, i32 %73, i32 %76, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i64 @safecat(i8*, i32, i64, i8*) #1

declare dso_local i64 @safecatn(i8*, i32, i64, i32) #1

declare dso_local i64 @safecatd(i8*, i32, i64, double, i32) #1

declare dso_local i32 @gamma_test(%struct.TYPE_4__*, i32, i32, i32, i32, double, double, i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
