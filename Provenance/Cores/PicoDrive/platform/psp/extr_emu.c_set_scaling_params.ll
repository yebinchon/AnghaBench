; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_set_scaling_params.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_set_scaling_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { double, double, double }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@g_vertices = common dso_local global %struct.TYPE_6__* null, align 8
@currentConfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@Pico = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@fbimg_offs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_scaling_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_scaling_params() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i64 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load double, double* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @currentConfig, i32 0, i32 0), align 8
  %20 = fmul double 2.400000e+02, %19
  %21 = fadd double %20, 5.000000e-01
  %22 = fptosi double %21 to i32
  store i32 %22, i32* %3, align 4
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 0), align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 12
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %0
  %29 = load double, double* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @currentConfig, i32 0, i32 0), align 8
  %30 = fmul double 3.200000e+02, %29
  %31 = load double, double* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @currentConfig, i32 0, i32 1), align 8
  %32 = fmul double %30, %31
  %33 = fadd double %32, 5.000000e-01
  %34 = fptosi double %33 to i32
  store i32 %34, i32* %2, align 4
  store i32 320, i32* %1, align 4
  br label %42

35:                                               ; preds = %0
  %36 = load double, double* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @currentConfig, i32 0, i32 0), align 8
  %37 = fmul double 2.560000e+02, %36
  %38 = load double, double* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @currentConfig, i32 0, i32 2), align 8
  %39 = fmul double %37, %38
  %40 = fadd double %39, 5.000000e-01
  %41 = fptosi double %40 to i32
  store i32 %41, i32* %2, align 4
  store i32 256, i32* %1, align 4
  br label %42

42:                                               ; preds = %35, %28
  %43 = load i32, i32* %2, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %2, align 4
  %58 = icmp sge i32 %57, 480
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load i32, i32* %2, align 4
  %61 = sub nsw i32 %60, 480
  %62 = sdiv i32 %61, 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* %2, align 4
  %68 = sub nsw i32 %67, 480
  %69 = sdiv i32 %68, 2
  %70 = sub nsw i32 %66, %69
  %71 = sub nsw i32 %70, 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  store i32 480, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %86

75:                                               ; preds = %56
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* %1, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %2, align 4
  %84 = sdiv i32 %83, 2
  %85 = sub nsw i32 240, %84
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %75, %59
  %87 = load i32, i32* %2, align 4
  %88 = icmp sgt i32 %87, 320
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %2, align 4
  %91 = icmp sle i32 %90, 480
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 1, i32* %6, align 4
  br label %93

93:                                               ; preds = %92, %89, %86
  %94 = load i32, i32* %3, align 4
  %95 = icmp sge i32 %94, 272
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = sub nsw i32 %97, 272
  %99 = sdiv i32 %98, 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* %3, align 4
  %104 = sub nsw i32 %103, 272
  %105 = sdiv i32 %104, 2
  %106 = sub nsw i32 240, %105
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  store i32 %106, i32* %109, align 4
  store i32 272, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %120

110:                                              ; preds = %93
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  store i32 0, i32* %113, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  store i32 240, i32* %116, align 4
  %117 = load i32, i32* %3, align 4
  %118 = sdiv i32 %117, 2
  %119 = sub nsw i32 136, %118
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %110, %96
  %121 = load i32, i32* %2, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* %3, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %120
  %133 = load i32, i32* %5, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %132
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %136
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %152, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_vertices, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %139, %136
  %161 = load i32, i32* %5, align 4
  %162 = mul nsw i32 %161, 512
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %162, %163
  %165 = mul nsw i32 %164, 2
  store i32 %165, i32* @fbimg_offs, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
