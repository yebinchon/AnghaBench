; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2s/main/extr_i2s_example_main.c_setup_triangle_sine_waves.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2s/main/extr_i2s_example_main.c_setup_triangle_sine_waves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SAMPLE_PER_CYCLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"\0D\0ATest bits=%d free mem=%d, written data=%d\0A\00", align 1
@PI = common dso_local global i32 0, align 4
@I2S_NUM = common dso_local global i32 0, align 4
@SAMPLE_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @setup_triangle_sine_waves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_triangle_sine_waves(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 8
  %12 = sdiv i32 %11, 16
  %13 = load i32, i32* @SAMPLE_PER_CYCLE, align 4
  %14 = mul nsw i32 %12, %13
  %15 = mul nsw i32 %14, 4
  %16 = call i32* @malloc(i32 %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @pow(i32 2, i32 %17)
  %19 = sitofp i32 %18 to double
  %20 = load i32, i32* @SAMPLE_PER_CYCLE, align 4
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %19, %21
  store double %22, double* %8, align 8
  store i64 0, i64* %9, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 (...) @esp_get_free_heap_size()
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 8
  %27 = sdiv i32 %26, 16
  %28 = load i32, i32* @SAMPLE_PER_CYCLE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = mul nsw i32 %29, 4
  %31 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @pow(i32 2, i32 %32)
  %34 = sdiv i32 %33, 2
  %35 = sub nsw i32 %34, 1
  %36 = sub nsw i32 0, %35
  %37 = sitofp i32 %36 to double
  store double %37, double* %7, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %127, %1
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SAMPLE_PER_CYCLE, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %130

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @PI, align 4
  %45 = mul i32 %43, %44
  %46 = uitofp i32 %45 to double
  %47 = fdiv double %46, 1.800000e+02
  %48 = fptoui double %47 to i32
  %49 = call double @sin(i32 %48)
  store double %49, double* %6, align 8
  %50 = load double, double* %6, align 8
  %51 = fcmp oge double %50, 0.000000e+00
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load double, double* %8, align 8
  %54 = load double, double* %7, align 8
  %55 = fadd double %54, %53
  store double %55, double* %7, align 8
  br label %60

56:                                               ; preds = %42
  %57 = load double, double* %8, align 8
  %58 = load double, double* %7, align 8
  %59 = fsub double %58, %57
  store double %59, double* %7, align 8
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @pow(i32 2, i32 %61)
  %63 = sdiv i32 %62, 2
  %64 = sub nsw i32 %63, 1
  %65 = sitofp i32 %64 to double
  %66 = load double, double* %6, align 8
  %67 = fmul double %66, %65
  store double %67, double* %6, align 8
  %68 = load i32, i32* %2, align 4
  %69 = icmp eq i32 %68, 16
  br i1 %69, label %70, label %88

70:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  %71 = load double, double* %7, align 8
  %72 = fptosi double %71 to i16
  %73 = sext i16 %72 to i32
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = shl i32 %76, 16
  store i32 %77, i32* %5, align 4
  %78 = load double, double* %6, align 8
  %79 = fptosi double %78 to i16
  %80 = sext i16 %79 to i32
  %81 = load i32, i32* %5, align 4
  %82 = add i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %126

88:                                               ; preds = %60
  %89 = load i32, i32* %2, align 4
  %90 = icmp eq i32 %89, 24
  br i1 %90, label %91, label %109

91:                                               ; preds = %88
  %92 = load double, double* %7, align 8
  %93 = fptosi double %92 to i32
  %94 = shl i32 %93, 8
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = mul i32 %96, 2
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %94, i32* %99, align 4
  %100 = load double, double* %6, align 8
  %101 = fptosi double %100 to i32
  %102 = shl i32 %101, 8
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = mul i32 %104, 2
  %106 = add i32 %105, 1
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  store i32 %102, i32* %108, align 4
  br label %125

109:                                              ; preds = %88
  %110 = load double, double* %7, align 8
  %111 = fptosi double %110 to i32
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = mul i32 %113, 2
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  store i32 %111, i32* %116, align 4
  %117 = load double, double* %6, align 8
  %118 = fptosi double %117 to i32
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = mul i32 %120, 2
  %122 = add i32 %121, 1
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  store i32 %118, i32* %124, align 4
  br label %125

125:                                              ; preds = %109, %91
  br label %126

126:                                              ; preds = %125, %70
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %4, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %38

130:                                              ; preds = %38
  %131 = load i32, i32* @I2S_NUM, align 4
  %132 = load i32, i32* @SAMPLE_RATE, align 4
  %133 = load i32, i32* %2, align 4
  %134 = call i32 @i2s_set_clk(i32 %131, i32 %132, i32 %133, i32 2)
  %135 = load i32, i32* @I2S_NUM, align 4
  %136 = load i32*, i32** %3, align 8
  %137 = load i32, i32* %2, align 4
  %138 = add nsw i32 %137, 8
  %139 = sdiv i32 %138, 16
  %140 = load i32, i32* @SAMPLE_PER_CYCLE, align 4
  %141 = mul nsw i32 %139, %140
  %142 = mul nsw i32 %141, 4
  %143 = call i32 @i2s_write(i32 %135, i32* %136, i32 %142, i64* %9, i32 100)
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @free(i32* %144)
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @pow(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @esp_get_free_heap_size(...) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @i2s_set_clk(i32, i32, i32, i32) #1

declare dso_local i32 @i2s_write(i32, i32*, i32, i64*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
