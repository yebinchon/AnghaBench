; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/main/extr_pretty_effect.c_pretty_effect_calc_lines.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/main/extr_pretty_effect.c_pretty_effect_calc_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prev_frame = common dso_local global i32 0, align 4
@xofs = common dso_local global i32* null, align 8
@yofs = common dso_local global i32* null, align 8
@xcomp = common dso_local global i32* null, align 8
@ycomp = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pretty_effect_calc_lines(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @prev_frame, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %108

18:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 320
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = sitofp i32 %23 to double
  %25 = fmul double %24, 1.500000e-01
  %26 = load i32, i32* %9, align 4
  %27 = sitofp i32 %26 to double
  %28 = fmul double %27, 6.000000e-02
  %29 = fadd double %25, %28
  %30 = fptosi double %29 to i32
  %31 = call i32 @sin(i32 %30)
  %32 = mul nsw i32 %31, 4
  %33 = load i32*, i32** @xofs, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %19

40:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %59, %40
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 240
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = sitofp i32 %45 to double
  %47 = fmul double %46, 1.000000e-01
  %48 = load i32, i32* %10, align 4
  %49 = sitofp i32 %48 to double
  %50 = fmul double %49, 5.000000e-02
  %51 = fadd double %47, %50
  %52 = fptosi double %51 to i32
  %53 = call i32 @sin(i32 %52)
  %54 = mul nsw i32 %53, 4
  %55 = load i32*, i32** @yofs, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %44
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %41

62:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %81, %62
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 320
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = sitofp i32 %67 to double
  %69 = fmul double %68, 1.100000e-01
  %70 = load i32, i32* %11, align 4
  %71 = sitofp i32 %70 to double
  %72 = fmul double %71, 1.200000e-01
  %73 = fadd double %69, %72
  %74 = fptosi double %73 to i32
  %75 = call i32 @sin(i32 %74)
  %76 = mul nsw i32 %75, 4
  %77 = load i32*, i32** @xcomp, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %63

84:                                               ; preds = %63
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %103, %84
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 240
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = sitofp i32 %89 to double
  %91 = fmul double %90, 7.000000e-02
  %92 = load i32, i32* %12, align 4
  %93 = sitofp i32 %92 to double
  %94 = fmul double %93, 1.500000e-01
  %95 = fadd double %91, %94
  %96 = fptosi double %95 to i32
  %97 = call i32 @sin(i32 %96)
  %98 = mul nsw i32 %97, 4
  %99 = load i32*, i32** @ycomp, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %88
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %85

106:                                              ; preds = %85
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* @prev_frame, align 4
  br label %108

108:                                              ; preds = %106, %4
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %154, %108
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %112, %113
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %157

116:                                              ; preds = %110
  store i32 0, i32* %14, align 4
  br label %117

117:                                              ; preds = %150, %116
  %118 = load i32, i32* %14, align 4
  %119 = icmp slt i32 %118, 320
  br i1 %119, label %120, label %153

120:                                              ; preds = %117
  %121 = load i32, i32* %14, align 4
  %122 = load i32*, i32** @yofs, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %121, %126
  %128 = load i32*, i32** @xcomp, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %127, %132
  %134 = load i32, i32* %13, align 4
  %135 = load i32*, i32** @xofs, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %134, %139
  %141 = load i32*, i32** @ycomp, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %140, %145
  %147 = call i32 @get_bgnd_pixel(i32 %133, i32 %146)
  %148 = load i32*, i32** %5, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %5, align 8
  store i32 %147, i32* %148, align 4
  br label %150

150:                                              ; preds = %120
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %14, align 4
  br label %117

153:                                              ; preds = %117
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %110

157:                                              ; preds = %110
  ret void
}

declare dso_local i32 @sin(i32) #1

declare dso_local i32 @get_bgnd_pixel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
