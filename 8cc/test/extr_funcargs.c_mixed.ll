; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_funcargs.c_mixed.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_funcargs.c_mixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, i32, float, i32, float, i32, float, i32, float, i32, float, i32, float, i32, float, i32, float, i32, float, i32, float, i32, float, i32, float, i32, float, i32, float, i32, float, i32, float, i32, float, i32, float, i32, float, i32)* @mixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixed(float %0, i32 %1, float %2, i32 %3, float %4, i32 %5, float %6, i32 %7, float %8, i32 %9, float %10, i32 %11, float %12, i32 %13, float %14, i32 %15, float %16, i32 %17, float %18, i32 %19, float %20, i32 %21, float %22, i32 %23, float %24, i32 %25, float %26, i32 %27, float %28, i32 %29, float %30, i32 %31, float %32, i32 %33, float %34, i32 %35, float %36, i32 %37, float %38, i32 %39) #0 {
  %41 = alloca float, align 4
  %42 = alloca i32, align 4
  %43 = alloca float, align 4
  %44 = alloca i32, align 4
  %45 = alloca float, align 4
  %46 = alloca i32, align 4
  %47 = alloca float, align 4
  %48 = alloca i32, align 4
  %49 = alloca float, align 4
  %50 = alloca i32, align 4
  %51 = alloca float, align 4
  %52 = alloca i32, align 4
  %53 = alloca float, align 4
  %54 = alloca i32, align 4
  %55 = alloca float, align 4
  %56 = alloca i32, align 4
  %57 = alloca float, align 4
  %58 = alloca i32, align 4
  %59 = alloca float, align 4
  %60 = alloca i32, align 4
  %61 = alloca float, align 4
  %62 = alloca i32, align 4
  %63 = alloca float, align 4
  %64 = alloca i32, align 4
  %65 = alloca float, align 4
  %66 = alloca i32, align 4
  %67 = alloca float, align 4
  %68 = alloca i32, align 4
  %69 = alloca float, align 4
  %70 = alloca i32, align 4
  %71 = alloca float, align 4
  %72 = alloca i32, align 4
  %73 = alloca float, align 4
  %74 = alloca i32, align 4
  %75 = alloca float, align 4
  %76 = alloca i32, align 4
  %77 = alloca float, align 4
  %78 = alloca i32, align 4
  %79 = alloca float, align 4
  %80 = alloca i32, align 4
  store float %0, float* %41, align 4
  store i32 %1, i32* %42, align 4
  store float %2, float* %43, align 4
  store i32 %3, i32* %44, align 4
  store float %4, float* %45, align 4
  store i32 %5, i32* %46, align 4
  store float %6, float* %47, align 4
  store i32 %7, i32* %48, align 4
  store float %8, float* %49, align 4
  store i32 %9, i32* %50, align 4
  store float %10, float* %51, align 4
  store i32 %11, i32* %52, align 4
  store float %12, float* %53, align 4
  store i32 %13, i32* %54, align 4
  store float %14, float* %55, align 4
  store i32 %15, i32* %56, align 4
  store float %16, float* %57, align 4
  store i32 %17, i32* %58, align 4
  store float %18, float* %59, align 4
  store i32 %19, i32* %60, align 4
  store float %20, float* %61, align 4
  store i32 %21, i32* %62, align 4
  store float %22, float* %63, align 4
  store i32 %23, i32* %64, align 4
  store float %24, float* %65, align 4
  store i32 %25, i32* %66, align 4
  store float %26, float* %67, align 4
  store i32 %27, i32* %68, align 4
  store float %28, float* %69, align 4
  store i32 %29, i32* %70, align 4
  store float %30, float* %71, align 4
  store i32 %31, i32* %72, align 4
  store float %32, float* %73, align 4
  store i32 %33, i32* %74, align 4
  store float %34, float* %75, align 4
  store i32 %35, i32* %76, align 4
  store float %36, float* %77, align 4
  store i32 %37, i32* %78, align 4
  store float %38, float* %79, align 4
  store i32 %39, i32* %80, align 4
  %81 = load float, float* %41, align 4
  %82 = call i32 @expectf(double 1.000000e+00, float %81)
  %83 = load i32, i32* %42, align 4
  %84 = call i32 @expect(i32 2, i32 %83)
  %85 = load float, float* %43, align 4
  %86 = call i32 @expectf(double 3.000000e+00, float %85)
  %87 = load i32, i32* %44, align 4
  %88 = call i32 @expect(i32 4, i32 %87)
  %89 = load float, float* %45, align 4
  %90 = call i32 @expectf(double 5.000000e+00, float %89)
  %91 = load i32, i32* %46, align 4
  %92 = call i32 @expect(i32 6, i32 %91)
  %93 = load float, float* %47, align 4
  %94 = call i32 @expectf(double 7.000000e+00, float %93)
  %95 = load i32, i32* %48, align 4
  %96 = call i32 @expect(i32 8, i32 %95)
  %97 = load float, float* %49, align 4
  %98 = call i32 @expectf(double 9.000000e+00, float %97)
  %99 = load i32, i32* %50, align 4
  %100 = call i32 @expect(i32 10, i32 %99)
  %101 = load float, float* %51, align 4
  %102 = call i32 @expectf(double 1.100000e+01, float %101)
  %103 = load i32, i32* %52, align 4
  %104 = call i32 @expect(i32 12, i32 %103)
  %105 = load float, float* %53, align 4
  %106 = call i32 @expectf(double 1.300000e+01, float %105)
  %107 = load i32, i32* %54, align 4
  %108 = call i32 @expect(i32 14, i32 %107)
  %109 = load float, float* %55, align 4
  %110 = call i32 @expectf(double 1.500000e+01, float %109)
  %111 = load i32, i32* %56, align 4
  %112 = call i32 @expect(i32 16, i32 %111)
  %113 = load float, float* %57, align 4
  %114 = call i32 @expectf(double 1.700000e+01, float %113)
  %115 = load i32, i32* %58, align 4
  %116 = call i32 @expect(i32 18, i32 %115)
  %117 = load float, float* %59, align 4
  %118 = call i32 @expectf(double 1.900000e+01, float %117)
  %119 = load i32, i32* %60, align 4
  %120 = call i32 @expect(i32 20, i32 %119)
  %121 = load float, float* %61, align 4
  %122 = call i32 @expectf(double 2.100000e+01, float %121)
  %123 = load i32, i32* %62, align 4
  %124 = call i32 @expect(i32 22, i32 %123)
  %125 = load float, float* %63, align 4
  %126 = call i32 @expectf(double 2.300000e+01, float %125)
  %127 = load i32, i32* %64, align 4
  %128 = call i32 @expect(i32 24, i32 %127)
  %129 = load float, float* %65, align 4
  %130 = call i32 @expectf(double 2.500000e+01, float %129)
  %131 = load i32, i32* %66, align 4
  %132 = call i32 @expect(i32 26, i32 %131)
  %133 = load float, float* %67, align 4
  %134 = call i32 @expectf(double 2.700000e+01, float %133)
  %135 = load i32, i32* %68, align 4
  %136 = call i32 @expect(i32 28, i32 %135)
  %137 = load float, float* %69, align 4
  %138 = call i32 @expectf(double 2.900000e+01, float %137)
  %139 = load i32, i32* %70, align 4
  %140 = call i32 @expect(i32 30, i32 %139)
  %141 = load float, float* %71, align 4
  %142 = call i32 @expectf(double 3.100000e+01, float %141)
  %143 = load i32, i32* %72, align 4
  %144 = call i32 @expect(i32 32, i32 %143)
  %145 = load float, float* %73, align 4
  %146 = call i32 @expectf(double 3.300000e+01, float %145)
  %147 = load i32, i32* %74, align 4
  %148 = call i32 @expect(i32 34, i32 %147)
  %149 = load float, float* %75, align 4
  %150 = call i32 @expectf(double 3.500000e+01, float %149)
  %151 = load i32, i32* %76, align 4
  %152 = call i32 @expect(i32 36, i32 %151)
  %153 = load float, float* %77, align 4
  %154 = call i32 @expectf(double 3.700000e+01, float %153)
  %155 = load i32, i32* %78, align 4
  %156 = call i32 @expect(i32 38, i32 %155)
  %157 = load float, float* %79, align 4
  %158 = call i32 @expectf(double 3.900000e+01, float %157)
  %159 = load i32, i32* %80, align 4
  %160 = call i32 @expect(i32 40, i32 %159)
  ret void
}

declare dso_local i32 @expectf(double, float) #1

declare dso_local i32 @expect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
