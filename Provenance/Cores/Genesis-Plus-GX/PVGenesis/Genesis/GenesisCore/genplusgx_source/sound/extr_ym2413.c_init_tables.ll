; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2413.c_init_tables.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2413.c_init_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TL_RES_LEN = common dso_local global i32 0, align 4
@ENV_STEP = common dso_local global double 0.000000e+00, align 8
@tl_tab = common dso_local global i32* null, align 8
@SIN_LEN = common dso_local global i32 0, align 4
@M_PI = common dso_local global i32 0, align 4
@sin_tab = common dso_local global i32* null, align 8
@SIN_BITS = common dso_local global i32 0, align 4
@TL_TAB_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_tables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %112, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @TL_RES_LEN, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %115

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  %13 = sitofp i32 %12 to double
  %14 = load double, double* @ENV_STEP, align 8
  %15 = fdiv double %14, 4.000000e+00
  %16 = fmul double %13, %15
  %17 = fdiv double %16, 8.000000e+00
  %18 = fptosi double %17 to i32
  %19 = call i32 @pow(i32 2, i32 %18)
  %20 = sdiv i32 65536, %19
  %21 = sitofp i32 %20 to double
  store double %21, double* %5, align 8
  %22 = load double, double* %5, align 8
  %23 = call double @llvm.floor.f64(double %22)
  store double %23, double* %5, align 8
  %24 = load double, double* %5, align 8
  %25 = fptosi double %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 4
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %10
  %32 = load i32, i32* %3, align 4
  %33 = ashr i32 %32, 1
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %10
  %36 = load i32, i32* %3, align 4
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %3, align 4
  %40 = load i32*, i32** @tl_tab, align 8
  %41 = load i32, i32* %2, align 4
  %42 = mul nsw i32 %41, 2
  %43 = add nsw i32 %42, 0
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load i32*, i32** @tl_tab, align 8
  %47 = load i32, i32* %2, align 4
  %48 = mul nsw i32 %47, 2
  %49 = add nsw i32 %48, 0
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 0, %52
  %54 = load i32*, i32** @tl_tab, align 8
  %55 = load i32, i32* %2, align 4
  %56 = mul nsw i32 %55, 2
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32 %53, i32* %59, align 4
  store i32 1, i32* %1, align 4
  br label %60

60:                                               ; preds = %108, %38
  %61 = load i32, i32* %1, align 4
  %62 = icmp slt i32 %61, 11
  br i1 %62, label %63, label %111

63:                                               ; preds = %60
  %64 = load i32*, i32** @tl_tab, align 8
  %65 = load i32, i32* %2, align 4
  %66 = mul nsw i32 %65, 2
  %67 = add nsw i32 %66, 0
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %1, align 4
  %72 = ashr i32 %70, %71
  %73 = load i32*, i32** @tl_tab, align 8
  %74 = load i32, i32* %2, align 4
  %75 = mul nsw i32 %74, 2
  %76 = add nsw i32 %75, 0
  %77 = load i32, i32* %1, align 4
  %78 = mul nsw i32 %77, 2
  %79 = load i32, i32* @TL_RES_LEN, align 4
  %80 = mul nsw i32 %78, %79
  %81 = add nsw i32 %76, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %73, i64 %82
  store i32 %72, i32* %83, align 4
  %84 = load i32*, i32** @tl_tab, align 8
  %85 = load i32, i32* %2, align 4
  %86 = mul nsw i32 %85, 2
  %87 = add nsw i32 %86, 0
  %88 = load i32, i32* %1, align 4
  %89 = mul nsw i32 %88, 2
  %90 = load i32, i32* @TL_RES_LEN, align 4
  %91 = mul nsw i32 %89, %90
  %92 = add nsw i32 %87, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %84, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 0, %95
  %97 = load i32*, i32** @tl_tab, align 8
  %98 = load i32, i32* %2, align 4
  %99 = mul nsw i32 %98, 2
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* %1, align 4
  %102 = mul nsw i32 %101, 2
  %103 = load i32, i32* @TL_RES_LEN, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %100, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %97, i64 %106
  store i32 %96, i32* %107, align 4
  br label %108

108:                                              ; preds = %63
  %109 = load i32, i32* %1, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %1, align 4
  br label %60

111:                                              ; preds = %60
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %2, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %2, align 4
  br label %6

115:                                              ; preds = %6
  store i32 0, i32* %1, align 4
  br label %116

116:                                              ; preds = %208, %115
  %117 = load i32, i32* %1, align 4
  %118 = load i32, i32* @SIN_LEN, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %211

120:                                              ; preds = %116
  %121 = load i32, i32* %1, align 4
  %122 = mul nsw i32 %121, 2
  %123 = add nsw i32 %122, 1
  %124 = load i32, i32* @M_PI, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* @SIN_LEN, align 4
  %127 = sdiv i32 %125, %126
  %128 = call double @sin(i32 %127)
  store double %128, double* %5, align 8
  %129 = load double, double* %5, align 8
  %130 = fcmp ogt double %129, 0.000000e+00
  br i1 %130, label %131, label %140

131:                                              ; preds = %120
  %132 = load double, double* %5, align 8
  %133 = fdiv double 1.000000e+00, %132
  %134 = fptosi double %133 to i32
  %135 = call i32 @log(i32 %134)
  %136 = mul nsw i32 8, %135
  %137 = call i32 @log(i32 2)
  %138 = sdiv i32 %136, %137
  %139 = sitofp i32 %138 to double
  store double %139, double* %4, align 8
  br label %149

140:                                              ; preds = %120
  %141 = load double, double* %5, align 8
  %142 = fdiv double -1.000000e+00, %141
  %143 = fptosi double %142 to i32
  %144 = call i32 @log(i32 %143)
  %145 = mul nsw i32 8, %144
  %146 = call i32 @log(i32 2)
  %147 = sdiv i32 %145, %146
  %148 = sitofp i32 %147 to double
  store double %148, double* %4, align 8
  br label %149

149:                                              ; preds = %140, %131
  %150 = load double, double* %4, align 8
  %151 = load double, double* @ENV_STEP, align 8
  %152 = fdiv double %151, 4.000000e+00
  %153 = fdiv double %150, %152
  store double %153, double* %4, align 8
  %154 = load double, double* %4, align 8
  %155 = fmul double 2.000000e+00, %154
  %156 = fptosi double %155 to i32
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* %3, align 4
  %158 = and i32 %157, 1
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %149
  %161 = load i32, i32* %3, align 4
  %162 = ashr i32 %161, 1
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %3, align 4
  br label %167

164:                                              ; preds = %149
  %165 = load i32, i32* %3, align 4
  %166 = ashr i32 %165, 1
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %164, %160
  %168 = load i32, i32* %3, align 4
  %169 = mul nsw i32 %168, 2
  %170 = load double, double* %5, align 8
  %171 = fcmp oge double %170, 0.000000e+00
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 0, i32 1
  %174 = add nsw i32 %169, %173
  %175 = load i32*, i32** @sin_tab, align 8
  %176 = load i32, i32* %1, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %174, i32* %178, align 4
  %179 = load i32, i32* %1, align 4
  %180 = load i32, i32* @SIN_BITS, align 4
  %181 = sub nsw i32 %180, 1
  %182 = shl i32 1, %181
  %183 = and i32 %179, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %167
  %186 = load i32, i32* @TL_TAB_LEN, align 4
  %187 = load i32*, i32** @sin_tab, align 8
  %188 = load i32, i32* @SIN_LEN, align 4
  %189 = mul nsw i32 1, %188
  %190 = load i32, i32* %1, align 4
  %191 = add nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %187, i64 %192
  store i32 %186, i32* %193, align 4
  br label %207

194:                                              ; preds = %167
  %195 = load i32*, i32** @sin_tab, align 8
  %196 = load i32, i32* %1, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** @sin_tab, align 8
  %201 = load i32, i32* @SIN_LEN, align 4
  %202 = mul nsw i32 1, %201
  %203 = load i32, i32* %1, align 4
  %204 = add nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %200, i64 %205
  store i32 %199, i32* %206, align 4
  br label %207

207:                                              ; preds = %194, %185
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %1, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %1, align 4
  br label %116

211:                                              ; preds = %116
  ret i32 1
}

declare dso_local i32 @pow(i32, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

declare dso_local double @sin(i32) #1

declare dso_local i32 @log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
