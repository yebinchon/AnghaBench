; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_geq.c_slice_geq_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_geq.c_slice_geq_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { double*, i32, i32*, i8**, i8** }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@VAR_VARS_NB = common dso_local global i32 0, align 4
@VAR_W = common dso_local global i64 0, align 8
@VAR_H = common dso_local global i64 0, align 8
@VAR_N = common dso_local global i64 0, align 8
@VAR_SW = common dso_local global i64 0, align 8
@VAR_SH = common dso_local global i64 0, align 8
@VAR_T = common dso_local global i64 0, align 8
@VAR_Y = common dso_local global i64 0, align 8
@VAR_X = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32, i32)* @slice_geq_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slice_geq_filter(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8**, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %9, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %10, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = mul nsw i32 %45, %47
  %49 = load i32, i32* %8, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* @VAR_VARS_NB, align 4
  %52 = zext i32 %51 to i64
  %53 = call i8* @llvm.stacksave()
  store i8* %53, i8** %21, align 8
  %54 = alloca double, i64 %52, align 16
  store i64 %52, i64* %22, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load double*, double** %56, align 8
  %58 = load i64, i64* @VAR_W, align 8
  %59 = getelementptr inbounds double, double* %57, i64 %58
  %60 = load double, double* %59, align 8
  %61 = load i64, i64* @VAR_W, align 8
  %62 = getelementptr inbounds double, double* %54, i64 %61
  store double %60, double* %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load double*, double** %64, align 8
  %66 = load i64, i64* @VAR_H, align 8
  %67 = getelementptr inbounds double, double* %65, i64 %66
  %68 = load double, double* %67, align 8
  %69 = load i64, i64* @VAR_H, align 8
  %70 = getelementptr inbounds double, double* %54, i64 %69
  store double %68, double* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load double*, double** %72, align 8
  %74 = load i64, i64* @VAR_N, align 8
  %75 = getelementptr inbounds double, double* %73, i64 %74
  %76 = load double, double* %75, align 8
  %77 = load i64, i64* @VAR_N, align 8
  %78 = getelementptr inbounds double, double* %54, i64 %77
  store double %76, double* %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load double*, double** %80, align 8
  %82 = load i64, i64* @VAR_SW, align 8
  %83 = getelementptr inbounds double, double* %81, i64 %82
  %84 = load double, double* %83, align 8
  %85 = load i64, i64* @VAR_SW, align 8
  %86 = getelementptr inbounds double, double* %54, i64 %85
  store double %84, double* %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load double*, double** %88, align 8
  %90 = load i64, i64* @VAR_SH, align 8
  %91 = getelementptr inbounds double, double* %89, i64 %90
  %92 = load double, double* %91, align 8
  %93 = load i64, i64* @VAR_SH, align 8
  %94 = getelementptr inbounds double, double* %54, i64 %93
  store double %92, double* %94, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load double*, double** %96, align 8
  %98 = load i64, i64* @VAR_T, align 8
  %99 = getelementptr inbounds double, double* %97, i64 %98
  %100 = load double, double* %99, align 8
  %101 = load i64, i64* @VAR_T, align 8
  %102 = getelementptr inbounds double, double* %54, i64 %101
  store double %100, double* %102, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 8
  br i1 %106, label %107, label %160

107:                                              ; preds = %4
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %18, align 4
  br label %109

109:                                              ; preds = %156, %107
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %159

113:                                              ; preds = %109
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 4
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %18, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %116, i64 %120
  store i8** %121, i8*** %19, align 8
  %122 = load i32, i32* %18, align 4
  %123 = sitofp i32 %122 to double
  %124 = load i64, i64* @VAR_Y, align 8
  %125 = getelementptr inbounds double, double* %54, i64 %124
  store double %123, double* %125, align 8
  store i32 0, i32* %17, align 4
  br label %126

126:                                              ; preds = %148, %113
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %151

130:                                              ; preds = %126
  %131 = load i32, i32* %17, align 4
  %132 = sitofp i32 %131 to double
  %133 = load i64, i64* @VAR_X, align 8
  %134 = getelementptr inbounds double, double* %54, i64 %133
  store double %132, double* %134, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %143 = call i8* @av_expr_eval(i32 %141, double* %54, %struct.TYPE_7__* %142)
  %144 = load i8**, i8*** %19, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  store i8* %143, i8** %147, align 8
  br label %148

148:                                              ; preds = %130
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %17, align 4
  br label %126

151:                                              ; preds = %126
  %152 = load i32, i32* %14, align 4
  %153 = load i8**, i8*** %19, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8*, i8** %153, i64 %154
  store i8** %155, i8*** %19, align 8
  br label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %18, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %18, align 4
  br label %109

159:                                              ; preds = %109
  br label %210

160:                                              ; preds = %4
  %161 = load i32, i32* %15, align 4
  store i32 %161, i32* %18, align 4
  br label %162

162:                                              ; preds = %206, %160
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %209

166:                                              ; preds = %162
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  %169 = load i8**, i8*** %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sdiv i32 %170, 2
  %172 = load i32, i32* %18, align 4
  %173 = mul nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %169, i64 %174
  store i8** %175, i8*** %20, align 8
  %176 = load i32, i32* %18, align 4
  %177 = sitofp i32 %176 to double
  %178 = load i64, i64* @VAR_Y, align 8
  %179 = getelementptr inbounds double, double* %54, i64 %178
  store double %177, double* %179, align 8
  store i32 0, i32* %17, align 4
  br label %180

180:                                              ; preds = %202, %166
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %205

184:                                              ; preds = %180
  %185 = load i32, i32* %17, align 4
  %186 = sitofp i32 %185 to double
  %187 = load i64, i64* @VAR_X, align 8
  %188 = getelementptr inbounds double, double* %54, i64 %187
  store double %186, double* %188, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %197 = call i8* @av_expr_eval(i32 %195, double* %54, %struct.TYPE_7__* %196)
  %198 = load i8**, i8*** %20, align 8
  %199 = load i32, i32* %17, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  store i8* %197, i8** %201, align 8
  br label %202

202:                                              ; preds = %184
  %203 = load i32, i32* %17, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %17, align 4
  br label %180

205:                                              ; preds = %180
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %18, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %18, align 4
  br label %162

209:                                              ; preds = %162
  br label %210

210:                                              ; preds = %209, %159
  %211 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %211)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @av_expr_eval(i32, double*, %struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
