; ModuleID = '/home/carl/AnghaBench/RetroArch/location/drivers/extr_android.c_android_location_get_position.c'
source_filename = "/home/carl/AnghaBench/RetroArch/location/drivers/extr_android.c_android_location_get_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@g_android = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, double*, double*, double*, double*)* @android_location_get_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @android_location_get_position(i8* %0, double* %1, double* %2, double* %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca %struct.android_app*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store double* %1, double** %8, align 8
  store double* %2, double** %9, align 8
  store double* %3, double** %10, align 8
  store double* %4, double** %11, align 8
  %19 = load i64, i64* @g_android, align 8
  %20 = inttoptr i64 %19 to %struct.android_app*
  store %struct.android_app* %20, %struct.android_app** %12, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %13, align 8
  %23 = call i32* (...) @jni_thread_getenv()
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  br label %95

27:                                               ; preds = %5
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %18, align 4
  %30 = load %struct.android_app*, %struct.android_app** %12, align 8
  %31 = getelementptr inbounds %struct.android_app, %struct.android_app* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @CALL_BOOLEAN_METHOD(i32* %28, i32 %29, i32 %34, i32 %37)
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  br label %95

42:                                               ; preds = %27
  %43 = load i32*, i32** %14, align 8
  %44 = load double, double* %15, align 8
  %45 = load %struct.android_app*, %struct.android_app** %12, align 8
  %46 = getelementptr inbounds %struct.android_app, %struct.android_app* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @CALL_DOUBLE_METHOD(i32* %43, double %44, i32 %49, i32 %52)
  %54 = load i32*, i32** %14, align 8
  %55 = load double, double* %16, align 8
  %56 = load %struct.android_app*, %struct.android_app** %12, align 8
  %57 = getelementptr inbounds %struct.android_app, %struct.android_app* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @CALL_DOUBLE_METHOD(i32* %54, double %55, i32 %60, i32 %63)
  %65 = load i32*, i32** %14, align 8
  %66 = load double, double* %17, align 8
  %67 = load %struct.android_app*, %struct.android_app** %12, align 8
  %68 = getelementptr inbounds %struct.android_app, %struct.android_app* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @CALL_DOUBLE_METHOD(i32* %65, double %66, i32 %71, i32 %74)
  %76 = load double, double* %15, align 8
  %77 = fcmp une double %76, 0.000000e+00
  br i1 %77, label %78, label %81

78:                                               ; preds = %42
  %79 = load double, double* %15, align 8
  %80 = load double*, double** %8, align 8
  store double %79, double* %80, align 8
  br label %81

81:                                               ; preds = %78, %42
  %82 = load double, double* %16, align 8
  %83 = fcmp une double %82, 0.000000e+00
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load double, double* %16, align 8
  %86 = load double*, double** %9, align 8
  store double %85, double* %86, align 8
  br label %87

87:                                               ; preds = %84, %81
  %88 = load double, double* %17, align 8
  %89 = fcmp une double %88, 0.000000e+00
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load double, double* %17, align 8
  %92 = load double*, double** %10, align 8
  store double %91, double* %92, align 8
  br label %93

93:                                               ; preds = %90, %87
  %94 = load double*, double** %11, align 8
  store double 0.000000e+00, double* %94, align 8
  store i32 1, i32* %6, align 4
  br label %100

95:                                               ; preds = %41, %26
  %96 = load double*, double** %8, align 8
  store double 0.000000e+00, double* %96, align 8
  %97 = load double*, double** %9, align 8
  store double 0.000000e+00, double* %97, align 8
  %98 = load double*, double** %10, align 8
  store double 0.000000e+00, double* %98, align 8
  %99 = load double*, double** %11, align 8
  store double 0.000000e+00, double* %99, align 8
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %95, %93
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32* @jni_thread_getenv(...) #1

declare dso_local i32 @CALL_BOOLEAN_METHOD(i32*, i32, i32, i32) #1

declare dso_local i32 @CALL_DOUBLE_METHOD(i32*, double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
