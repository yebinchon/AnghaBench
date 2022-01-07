; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_perform_gamma_test.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_perform_gamma_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, double, i32, double, double, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Gamma correction error summary\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"The printed value is the maximum error in the pixel values\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"calculated by the libpng gamma correction code.  The error\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"is calculated as the difference between the output pixel\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"value (always an integer) and the ideal value from the\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"libpng specification (typically not an integer).\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Expect this value to be less than .5 for 8 bit formats,\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"less than 1 for formats with fewer than 8 bits and a small\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"number (typically less than 5) for the 16 bit formats.\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"For performance reasons the value for 16 bit formats\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"increases when the image file includes an sBIT chunk.\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"sBIT\00", align 1
@ALPHA_MODE_OFFSET = common dso_local global i32 0, align 4
@PNG_ALPHA_BROKEN = common dso_local global i32 0, align 4
@PNG_ALPHA_STANDARD = common dso_local global i32 0, align 4
@PNG_BACKGROUND_GAMMA_UNIQUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32)* @perform_gamma_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_gamma_test(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 12
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 11
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = call i32 @perform_gamma_threshold_tests(%struct.TYPE_13__* %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = call i64 @fail(%struct.TYPE_13__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %107

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %14, %2
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 10
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %81

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 @fflush(i32 %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0))
  %49 = load i32, i32* @stdout, align 4
  %50 = call i32 @fflush(i32 %49)
  br label %51

51:                                               ; preds = %35, %32
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = call i32 @init_gamma_errors(%struct.TYPE_13__* %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %51
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = call i32 @perform_gamma_transform_tests(%struct.TYPE_13__* %62)
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = call i32 @summarize_gamma_errors(%struct.TYPE_13__* %73, i8* null, i32 1, i32 1)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = call i64 @fail(%struct.TYPE_13__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %107

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %27
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 9
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %81
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = call i32 @init_gamma_errors(%struct.TYPE_13__* %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = call i32 @perform_gamma_sbit_tests(%struct.TYPE_13__* %89)
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %97, 8
  %99 = zext i1 %98 to i32
  %100 = call i32 @summarize_gamma_errors(%struct.TYPE_13__* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %99, i32 1)
  br label %101

101:                                              ; preds = %93, %86
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %103 = call i64 @fail(%struct.TYPE_13__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %107

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %25, %79, %105, %106, %81
  ret void
}

declare dso_local i32 @perform_gamma_threshold_tests(%struct.TYPE_13__*) #1

declare dso_local i64 @fail(%struct.TYPE_13__*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @init_gamma_errors(%struct.TYPE_13__*) #1

declare dso_local i32 @perform_gamma_transform_tests(%struct.TYPE_13__*) #1

declare dso_local i32 @summarize_gamma_errors(%struct.TYPE_13__*, i8*, i32, i32) #1

declare dso_local i32 @perform_gamma_sbit_tests(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
