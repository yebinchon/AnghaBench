; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_phosphor2x.c_bleed_phosphors_rgb565.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_phosphor2x.c_bleed_phosphors_rgb565.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_data = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @bleed_phosphors_rgb565 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bleed_phosphors_rgb565(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.filter_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.filter_data*
  store %struct.filter_data* %16, %struct.filter_data** %8, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %50, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @red_rgb565(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.filter_data*, %struct.filter_data** %8, align 8
  %30 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul i32 %28, %31
  %33 = load %struct.filter_data*, %struct.filter_data** %8, align 8
  %34 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = mul i32 %32, %39
  %41 = call i32 @clamp6(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @set_red_rgb565(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %21
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 2
  store i32 %52, i32* %7, align 4
  br label %17

53:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %95, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %98

58:                                               ; preds = %54
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @green_rgb565(i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = lshr i32 %65, 1
  %67 = uitofp i32 %66 to double
  %68 = load i32, i32* %11, align 4
  %69 = uitofp i32 %68 to double
  %70 = fmul double 5.000000e-01, %69
  %71 = load %struct.filter_data*, %struct.filter_data** %8, align 8
  %72 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = uitofp i32 %73 to double
  %75 = fmul double %70, %74
  %76 = load %struct.filter_data*, %struct.filter_data** %8, align 8
  %77 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = uitofp i32 %82 to double
  %84 = fmul double %75, %83
  %85 = fadd double %67, %84
  %86 = fptoui double %85 to i32
  %87 = call i32 @clamp6(i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @set_green_rgb565(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %58
  %96 = load i32, i32* %7, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %54

98:                                               ; preds = %54
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @set_blue_rgb565(i32 %101, i32 0)
  store i32 1, i32* %7, align 4
  br label %103

103:                                              ; preds = %136, %98
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %139

107:                                              ; preds = %103
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @blue_rgb565(i32 %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.filter_data*, %struct.filter_data** %8, align 8
  %116 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = mul i32 %114, %117
  %119 = load %struct.filter_data*, %struct.filter_data** %8, align 8
  %120 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = mul i32 %118, %125
  %127 = call i32 @clamp6(i32 %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %7, align 4
  %130 = add i32 %129, 1
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @set_blue_rgb565(i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %107
  %137 = load i32, i32* %7, align 4
  %138 = add i32 %137, 2
  store i32 %138, i32* %7, align 4
  br label %103

139:                                              ; preds = %103
  ret void
}

declare dso_local i32 @red_rgb565(i32) #1

declare dso_local i32 @clamp6(i32) #1

declare dso_local i32 @set_red_rgb565(i32, i32) #1

declare dso_local i32 @green_rgb565(i32) #1

declare dso_local i32 @set_green_rgb565(i32, i32) #1

declare dso_local i32 @set_blue_rgb565(i32, i32) #1

declare dso_local i32 @blue_rgb565(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
