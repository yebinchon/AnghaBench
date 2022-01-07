; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_test_resize.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_test_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"L2 Norm: %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Original\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"C1\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"C2\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"C3\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"C4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_resize(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca float, align 4
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca %struct.TYPE_12__, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call { i64, i64 } @load_image(i8* %10, i32 0, i32 0, i32 3)
  %12 = bitcast %struct.TYPE_12__* %3 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %14 = extractvalue { i64, i64 } %11, 0
  store i64 %14, i64* %13, align 4
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %16 = extractvalue { i64, i64 } %11, 1
  store i64 %16, i64* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %20, %22
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %23, %25
  %27 = call float @mag_array(i32 %18, i32 %26)
  store float %27, float* %4, align 4
  %28 = load float, float* %4, align 4
  %29 = call i32 (i8*, float, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), float %28)
  %30 = bitcast %struct.TYPE_12__* %3 to { i64, i64 }*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 4
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = load i64, i64* %33, align 4
  %35 = call { i64, i64 } @grayscale_image(i64 %32, i64 %34)
  %36 = bitcast %struct.TYPE_12__* %5 to { i64, i64 }*
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0
  %38 = extractvalue { i64, i64 } %35, 0
  store i64 %38, i64* %37, align 4
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1
  %40 = extractvalue { i64, i64 } %35, 1
  store i64 %40, i64* %39, align 4
  %41 = bitcast %struct.TYPE_12__* %3 to { i64, i64 }*
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 4
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 1
  %45 = load i64, i64* %44, align 4
  %46 = call { i64, i64 } @copy_image(i64 %43, i64 %45)
  %47 = bitcast %struct.TYPE_12__* %6 to { i64, i64 }*
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %47, i32 0, i32 0
  %49 = extractvalue { i64, i64 } %46, 0
  store i64 %49, i64* %48, align 4
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %47, i32 0, i32 1
  %51 = extractvalue { i64, i64 } %46, 1
  store i64 %51, i64* %50, align 4
  %52 = bitcast %struct.TYPE_12__* %3 to { i64, i64 }*
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 4
  %55 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %52, i32 0, i32 1
  %56 = load i64, i64* %55, align 4
  %57 = call { i64, i64 } @copy_image(i64 %54, i64 %56)
  %58 = bitcast %struct.TYPE_12__* %7 to { i64, i64 }*
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 0
  %60 = extractvalue { i64, i64 } %57, 0
  store i64 %60, i64* %59, align 4
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 1
  %62 = extractvalue { i64, i64 } %57, 1
  store i64 %62, i64* %61, align 4
  %63 = bitcast %struct.TYPE_12__* %3 to { i64, i64 }*
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 4
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 1
  %67 = load i64, i64* %66, align 4
  %68 = call { i64, i64 } @copy_image(i64 %65, i64 %67)
  %69 = bitcast %struct.TYPE_12__* %8 to { i64, i64 }*
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %69, i32 0, i32 0
  %71 = extractvalue { i64, i64 } %68, 0
  store i64 %71, i64* %70, align 4
  %72 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %69, i32 0, i32 1
  %73 = extractvalue { i64, i64 } %68, 1
  store i64 %73, i64* %72, align 4
  %74 = bitcast %struct.TYPE_12__* %3 to { i64, i64 }*
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 4
  %77 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 1
  %78 = load i64, i64* %77, align 4
  %79 = call { i64, i64 } @copy_image(i64 %76, i64 %78)
  %80 = bitcast %struct.TYPE_12__* %9 to { i64, i64 }*
  %81 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %80, i32 0, i32 0
  %82 = extractvalue { i64, i64 } %79, 0
  store i64 %82, i64* %81, align 4
  %83 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %80, i32 0, i32 1
  %84 = extractvalue { i64, i64 } %79, 1
  store i64 %84, i64* %83, align 4
  %85 = bitcast %struct.TYPE_12__* %6 to { i64, i64 }*
  %86 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 4
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %85, i32 0, i32 1
  %89 = load i64, i64* %88, align 4
  %90 = call i32 @distort_image(i64 %87, i64 %89, float 0x3FB99999A0000000, float 1.500000e+00, float 1.500000e+00)
  %91 = bitcast %struct.TYPE_12__* %7 to { i64, i64 }*
  %92 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 4
  %94 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %91, i32 0, i32 1
  %95 = load i64, i64* %94, align 4
  %96 = call i32 @distort_image(i64 %93, i64 %95, float 0xBFB99999A0000000, float 0x3FE5554760000000, float 0x3FE5554760000000)
  %97 = bitcast %struct.TYPE_12__* %8 to { i64, i64 }*
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 4
  %100 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 1
  %101 = load i64, i64* %100, align 4
  %102 = call i32 @distort_image(i64 %99, i64 %101, float 0x3FB99999A0000000, float 1.500000e+00, float 0x3FE5554760000000)
  %103 = bitcast %struct.TYPE_12__* %9 to { i64, i64 }*
  %104 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 4
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i32 0, i32 1
  %107 = load i64, i64* %106, align 4
  %108 = call i32 @distort_image(i64 %105, i64 %107, float 0x3FB99999A0000000, float 0x3FE5554760000000, float 1.500000e+00)
  %109 = bitcast %struct.TYPE_12__* %3 to { i64, i64 }*
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 4
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 1
  %113 = load i64, i64* %112, align 4
  %114 = call i32 @show_image(i64 %111, i64 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %115 = bitcast %struct.TYPE_12__* %5 to { i64, i64 }*
  %116 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 4
  %118 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %115, i32 0, i32 1
  %119 = load i64, i64* %118, align 4
  %120 = call i32 @show_image(i64 %117, i64 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %121 = bitcast %struct.TYPE_12__* %6 to { i64, i64 }*
  %122 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 4
  %124 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %121, i32 0, i32 1
  %125 = load i64, i64* %124, align 4
  %126 = call i32 @show_image(i64 %123, i64 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %127 = bitcast %struct.TYPE_12__* %7 to { i64, i64 }*
  %128 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 4
  %130 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %127, i32 0, i32 1
  %131 = load i64, i64* %130, align 4
  %132 = call i32 @show_image(i64 %129, i64 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %133 = bitcast %struct.TYPE_12__* %8 to { i64, i64 }*
  %134 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 4
  %136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %133, i32 0, i32 1
  %137 = load i64, i64* %136, align 4
  %138 = call i32 @show_image(i64 %135, i64 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %139 = bitcast %struct.TYPE_12__* %9 to { i64, i64 }*
  %140 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 4
  %142 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %139, i32 0, i32 1
  %143 = load i64, i64* %142, align 4
  %144 = call i32 @show_image(i64 %141, i64 %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 1)
  ret void
}

declare dso_local { i64, i64 } @load_image(i8*, i32, i32, i32) #1

declare dso_local float @mag_array(i32, i32) #1

declare dso_local i32 @printf(i8*, float, ...) #1

declare dso_local { i64, i64 } @grayscale_image(i64, i64) #1

declare dso_local { i64, i64 } @copy_image(i64, i64) #1

declare dso_local i32 @distort_image(i64, i64, float, float, float) #1

declare dso_local i32 @show_image(i64, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
