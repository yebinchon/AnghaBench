; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorspace.c_fill_gamma_table.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorspace.c_fill_gamma_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8**, i8**, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { double, double, double, double }
%struct.TYPE_5__ = type { double, double, double, double }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @fill_gamma_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_gamma_table(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  store double %23, double* %5, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8
  store double %28, double* %6, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load double, double* %32, align 8
  store double %33, double* %7, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load double, double* %37, align 8
  store double %38, double* %8, align 8
  %39 = load double, double* %5, align 8
  %40 = fdiv double 1.000000e+00, %39
  store double %40, double* %9, align 8
  %41 = load double, double* %7, align 8
  %42 = fdiv double 1.000000e+00, %41
  store double %42, double* %10, align 8
  %43 = load double, double* %8, align 8
  %44 = fdiv double 1.000000e+00, %43
  store double %44, double* %11, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  store double %49, double* %12, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  store double %54, double* %13, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load double, double* %58, align 8
  store double %59, double* %14, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load double, double* %63, align 8
  store double %64, double* %15, align 8
  %65 = call i8** @av_malloc(i32 524288)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i8** %65, i8*** %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = icmp ne i8** %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %1
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = call i32 @AVERROR(i32 %73)
  store i32 %74, i32* %2, align 4
  br label %185

75:                                               ; preds = %1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 32768
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i8** %79, i8*** %81, align 8
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %181, %75
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 32768
  br i1 %84, label %85, label %184

85:                                               ; preds = %82
  %86 = load i32, i32* %4, align 4
  %87 = sitofp i32 %86 to double
  %88 = fsub double %87, 2.048000e+03
  %89 = fdiv double %88, 2.867200e+04
  store double %89, double* %16, align 8
  %90 = load double, double* %16, align 8
  %91 = load double, double* %13, align 8
  %92 = fneg double %91
  %93 = fcmp ole double %90, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %85
  %95 = load double, double* %12, align 8
  %96 = fneg double %95
  %97 = load double, double* %16, align 8
  %98 = fneg double %97
  %99 = load double, double* %14, align 8
  %100 = call double @pow(double %98, double %99) #3
  %101 = fmul double %96, %100
  %102 = load double, double* %12, align 8
  %103 = fsub double %102, 1.000000e+00
  %104 = fadd double %101, %103
  store double %104, double* %17, align 8
  br label %123

105:                                              ; preds = %85
  %106 = load double, double* %16, align 8
  %107 = load double, double* %13, align 8
  %108 = fcmp olt double %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load double, double* %15, align 8
  %111 = load double, double* %16, align 8
  %112 = fmul double %110, %111
  store double %112, double* %17, align 8
  br label %122

113:                                              ; preds = %105
  %114 = load double, double* %12, align 8
  %115 = load double, double* %16, align 8
  %116 = load double, double* %14, align 8
  %117 = call double @pow(double %115, double %116) #3
  %118 = fmul double %114, %117
  %119 = load double, double* %12, align 8
  %120 = fsub double %119, 1.000000e+00
  %121 = fsub double %118, %120
  store double %121, double* %17, align 8
  br label %122

122:                                              ; preds = %113, %109
  br label %123

123:                                              ; preds = %122, %94
  %124 = load double, double* %17, align 8
  %125 = fmul double %124, 2.867200e+04
  %126 = call i32 @lrint(double %125)
  %127 = call i8* @av_clip_int16(i32 %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i8**, i8*** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  store i8* %127, i8** %133, align 8
  %134 = load double, double* %16, align 8
  %135 = load double, double* %6, align 8
  %136 = fneg double %135
  %137 = load double, double* %8, align 8
  %138 = fmul double %136, %137
  %139 = fcmp ole double %134, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %123
  %141 = load double, double* %5, align 8
  %142 = fsub double 1.000000e+00, %141
  %143 = load double, double* %16, align 8
  %144 = fsub double %142, %143
  %145 = load double, double* %9, align 8
  %146 = fmul double %144, %145
  %147 = load double, double* %10, align 8
  %148 = call double @pow(double %146, double %147) #3
  %149 = fneg double %148
  store double %149, double* %18, align 8
  br label %170

150:                                              ; preds = %123
  %151 = load double, double* %16, align 8
  %152 = load double, double* %6, align 8
  %153 = load double, double* %8, align 8
  %154 = fmul double %152, %153
  %155 = fcmp olt double %151, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load double, double* %16, align 8
  %158 = load double, double* %11, align 8
  %159 = fmul double %157, %158
  store double %159, double* %18, align 8
  br label %169

160:                                              ; preds = %150
  %161 = load double, double* %16, align 8
  %162 = load double, double* %5, align 8
  %163 = fadd double %161, %162
  %164 = fsub double %163, 1.000000e+00
  %165 = load double, double* %9, align 8
  %166 = fmul double %164, %165
  %167 = load double, double* %10, align 8
  %168 = call double @pow(double %166, double %167) #3
  store double %168, double* %18, align 8
  br label %169

169:                                              ; preds = %160, %156
  br label %170

170:                                              ; preds = %169, %140
  %171 = load double, double* %18, align 8
  %172 = fmul double %171, 2.867200e+04
  %173 = call i32 @lrint(double %172)
  %174 = call i8* @av_clip_int16(i32 %173)
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i8**, i8*** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  store i8* %174, i8** %180, align 8
  br label %181

181:                                              ; preds = %170
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %4, align 4
  br label %82

184:                                              ; preds = %82
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %184, %72
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i8** @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

declare dso_local i8* @av_clip_int16(i32) #1

declare dso_local i32 @lrint(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
