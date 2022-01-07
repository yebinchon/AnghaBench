; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_darknet.c_speed.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_darknet.c_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"\0A%d evals, %f Seconds\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Floating Point Operations: %.2f Bn\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"FLOPS: %.2f Bn\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Speed: %f sec/eval\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Speed: %f Hz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @speed(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1000, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i8*, i8** %3, align 8
  %16 = call %struct.TYPE_8__* @parse_network_cfg(i8* %15)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = call i32 @set_batch_network(%struct.TYPE_8__* %17, i32 1)
  %19 = call double (...) @what_time_is_it_now()
  store double %19, double* %7, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = call i32 @make_image(i32 %22, i32 %25, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %44, %14
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @network_predict(%struct.TYPE_8__* %40, i32 %42)
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %35

47:                                               ; preds = %35
  %48 = call double (...) @what_time_is_it_now()
  %49 = load double, double* %7, align 8
  %50 = fsub double %48, %49
  store double %50, double* %9, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = call i64 @numops(%struct.TYPE_8__* %51)
  store i64 %52, i64* %10, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load double, double* %9, align 8
  %55 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %53, double %54)
  %56 = load i64, i64* %10, align 8
  %57 = sitofp i64 %56 to float
  %58 = fpext float %57 to double
  %59 = fdiv double %58, 1.000000e+09
  %60 = fptosi double %59 to i32
  %61 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i64, i64* %10, align 8
  %63 = sitofp i64 %62 to float
  %64 = fpext float %63 to double
  %65 = fdiv double %64, 1.000000e+09
  %66 = load i32, i32* %4, align 4
  %67 = sitofp i32 %66 to double
  %68 = fmul double %65, %67
  %69 = load double, double* %9, align 8
  %70 = fdiv double %68, %69
  %71 = fptosi double %70 to i32
  %72 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load double, double* %9, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sitofp i32 %74 to double
  %76 = fdiv double %73, %75
  %77 = fptosi double %76 to i32
  %78 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = sitofp i32 %79 to double
  %81 = load double, double* %9, align 8
  %82 = fdiv double %80, %81
  %83 = fptosi double %82 to i32
  %84 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  ret void
}

declare dso_local %struct.TYPE_8__* @parse_network_cfg(i8*) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_8__*, i32) #1

declare dso_local double @what_time_is_it_now(...) #1

declare dso_local i32 @make_image(i32, i32, i32) #1

declare dso_local i32 @network_predict(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @numops(%struct.TYPE_8__*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
