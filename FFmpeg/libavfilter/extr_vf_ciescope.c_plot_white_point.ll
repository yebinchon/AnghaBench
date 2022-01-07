; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_plot_white_point.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_plot_white_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ColorSystem = type { i32, i32 }

@color_systems = common dso_local global %struct.ColorSystem* null, align 8
@LUV = common dso_local global i32 0, align 4
@UCS = common dso_local global i32 0, align 4
@XYY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32)* @plot_white_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plot_white_point(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ColorSystem*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load %struct.ColorSystem*, %struct.ColorSystem** @color_systems, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %22, i64 %24
  store %struct.ColorSystem* %25, %struct.ColorSystem** %15, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @LUV, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %7
  %30 = load %struct.ColorSystem*, %struct.ColorSystem** %15, align 8
  %31 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ColorSystem*, %struct.ColorSystem** %15, align 8
  %34 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @xy_to_upvp(i32 %32, i32 %35, double* %18, double* %19)
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sitofp i32 %38 to double
  %40 = load double, double* %18, align 8
  %41 = fmul double %39, %40
  %42 = fptosi double %41 to i32
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sitofp i32 %46 to double
  %48 = load double, double* %19, align 8
  %49 = fmul double %47, %48
  %50 = fptosi double %49 to i32
  %51 = sub nsw i32 %44, %50
  store i32 %51, i32* %17, align 4
  br label %103

52:                                               ; preds = %7
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @UCS, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load %struct.ColorSystem*, %struct.ColorSystem** %15, align 8
  %58 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ColorSystem*, %struct.ColorSystem** %15, align 8
  %61 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @xy_to_uv(i32 %59, i32 %62, double* %20, double* %21)
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sitofp i32 %65 to double
  %67 = load double, double* %20, align 8
  %68 = fmul double %66, %67
  %69 = fptosi double %68 to i32
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sitofp i32 %73 to double
  %75 = load double, double* %21, align 8
  %76 = fmul double %74, %75
  %77 = fptosi double %76 to i32
  %78 = sub nsw i32 %71, %77
  store i32 %78, i32* %17, align 4
  br label %102

79:                                               ; preds = %52
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @XYY, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %84, 1
  %86 = load %struct.ColorSystem*, %struct.ColorSystem** %15, align 8
  %87 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %85, %88
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, 1
  %94 = load %struct.ColorSystem*, %struct.ColorSystem** %15, align 8
  %95 = getelementptr inbounds %struct.ColorSystem, %struct.ColorSystem* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %93, %96
  %98 = sub nsw i32 %91, %97
  store i32 %98, i32* %17, align 4
  br label %101

99:                                               ; preds = %79
  %100 = call i32 @av_assert0(i32 0)
  br label %101

101:                                              ; preds = %99, %83
  br label %102

102:                                              ; preds = %101, %56
  br label %103

103:                                              ; preds = %102, %29
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @Sz(i32 3)
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @Sz(i32 10)
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @draw_rline(i32* %104, i32 %105, i32 %108, i32 %109, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @Sz(i32 3)
  %121 = sub nsw i32 %119, %120
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @Sz(i32 10)
  %125 = sub nsw i32 %123, %124
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @draw_rline(i32* %117, i32 %118, i32 %121, i32 %122, i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @Sz(i32 3)
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @Sz(i32 10)
  %139 = add nsw i32 %137, %138
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @draw_rline(i32* %130, i32 %131, i32 %132, i32 %135, i32 %136, i32 %139, i32 %140, i32 %141)
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %17, align 4
  %147 = call i32 @Sz(i32 3)
  %148 = sub nsw i32 %146, %147
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %17, align 4
  %151 = call i32 @Sz(i32 10)
  %152 = sub nsw i32 %150, %151
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @draw_rline(i32* %143, i32 %144, i32 %145, i32 %148, i32 %149, i32 %152, i32 %153, i32 %154)
  ret void
}

declare dso_local i32 @xy_to_upvp(i32, i32, double*, double*) #1

declare dso_local i32 @xy_to_uv(i32, i32, double*, double*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @draw_rline(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Sz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
