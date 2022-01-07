; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_joysticks.c_draw_joystick.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_joysticks.c_draw_joystick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float*, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32)* @draw_joystick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_joystick(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = mul nsw i32 3, %17
  %19 = sdiv i32 %18, 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sdiv i32 %20, 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %99

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %27, %30
  store i32 %31, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %95, %26
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %98

38:                                               ; preds = %32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load float*, float** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fdiv float %45, 2.000000e+00
  %47 = fadd float %46, 5.000000e-01
  store float %47, float* %15, align 4
  %48 = call i32 @glColor3f(float 0x3FD3333340000000, float 0x3FD3333340000000, float 0x3FD3333340000000)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %14, align 4
  %52 = mul nsw i32 %50, %51
  %53 = add nsw i32 %49, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %14, align 4
  %59 = mul nsw i32 %57, %58
  %60 = add nsw i32 %55, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @glRecti(i32 %53, i32 %54, i32 %60, i32 %63)
  %65 = call i32 @glColor3f(float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %14, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %66, %69
  %71 = load i32, i32* %8, align 4
  %72 = load float, float* %15, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %73, 5
  %75 = sitofp i32 %74 to float
  %76 = fmul float %72, %75
  %77 = fptosi float %76 to i32
  %78 = add nsw i32 %71, %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* %14, align 4
  %83 = mul nsw i32 %81, %82
  %84 = add nsw i32 %79, %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 5
  %87 = load float, float* %15, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %88, 5
  %90 = sitofp i32 %89 to float
  %91 = fmul float %87, %90
  %92 = fptosi float %91 to i32
  %93 = add nsw i32 %86, %92
  %94 = call i32 @glRecti(i32 %70, i32 %78, i32 %84, i32 %93)
  br label %95

95:                                               ; preds = %38
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %32

98:                                               ; preds = %32
  br label %99

99:                                               ; preds = %98, %5
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %154

104:                                              ; preds = %99
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sdiv i32 %105, %108
  store i32 %109, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %150, %104
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %153

116:                                              ; preds = %110
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = call i32 @glColor3f(float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)
  br label %129

127:                                              ; preds = %116
  %128 = call i32 @glColor3f(float 0x3FD3333340000000, float 0x3FD3333340000000, float 0x3FD3333340000000)
  br label %129

129:                                              ; preds = %127, %125
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %16, align 4
  %133 = mul nsw i32 %131, %132
  %134 = add nsw i32 %130, %133
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %135, %136
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  %141 = load i32, i32* %16, align 4
  %142 = mul nsw i32 %140, %141
  %143 = add nsw i32 %138, %142
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %146, %147
  %149 = call i32 @glRecti(i32 %134, i32 %137, i32 %143, i32 %148)
  br label %150

150:                                              ; preds = %129
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %110

153:                                              ; preds = %110
  br label %154

154:                                              ; preds = %153, %99
  ret void
}

declare dso_local i32 @glColor3f(float, float, float) #1

declare dso_local i32 @glRecti(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
