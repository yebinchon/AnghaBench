; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vignette.c_update_context.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vignette.c_update_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float*, i32, i64, i8*, i32, i8*, i8*, i8**, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i8* }
%struct.TYPE_9__ = type { i32 }

@VAR_N = common dso_local global i64 0, align 8
@VAR_T = common dso_local global i64 0, align 8
@VAR_PTS = common dso_local global i64 0, align 8
@NAN = common dso_local global i8* null, align 8
@EVAL_MODE_FRAME = common dso_local global i32 0, align 4
@M_PI_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_9__*)* @update_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_context(%struct.TYPE_8__* %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load float*, float** %12, align 8
  store float* %13, float** %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %49

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 7
  %25 = load i8**, i8*** %24, align 8
  %26 = load i64, i64* @VAR_N, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  store i8* %22, i8** %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @TS2T(i32 %30, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 7
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* @VAR_T, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* %34, i8** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @TS2D(i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 7
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* @VAR_PTS, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  store i8* %43, i8** %48, align 8
  br label %68

49:                                               ; preds = %3
  %50 = load i8*, i8** @NAN, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 7
  %53 = load i8**, i8*** %52, align 8
  %54 = load i64, i64* @VAR_N, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  store i8* %50, i8** %55, align 8
  %56 = load i8*, i8** @NAN, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 7
  %59 = load i8**, i8*** %58, align 8
  %60 = load i64, i64* @VAR_T, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  store i8* %56, i8** %61, align 8
  %62 = load i8*, i8** @NAN, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 7
  %65 = load i8**, i8*** %64, align 8
  %66 = load i64, i64* @VAR_PTS, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  store i8* %62, i8** %67, align 8
  br label %68

68:                                               ; preds = %49, %19
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 7
  %74 = load i8**, i8*** %73, align 8
  %75 = call i8* @av_expr_eval(i32 %71, i8** %74, i32* null)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 7
  %83 = load i8**, i8*** %82, align 8
  %84 = call i8* @av_expr_eval(i32 %80, i8** %83, i32* null)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 6
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 7
  %92 = load i8**, i8*** %91, align 8
  %93 = call i8* @av_expr_eval(i32 %89, i8** %92, i32* null)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 5
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 6
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @isnan(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %68
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 5
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @isnan(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @isnan(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107, %101, %68
  %114 = load i32, i32* @EVAL_MODE_FRAME, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %113, %107
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* @M_PI_2, align 4
  %122 = call i8* @av_clipf(i8* %120, i32 0, i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %167

129:                                              ; preds = %117
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %163, %129
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %166

136:                                              ; preds = %130
  store i32 0, i32* %7, align 4
  br label %137

137:                                              ; preds = %155, %136
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %137
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @get_natural_factor(%struct.TYPE_8__* %144, i32 %145, i32 %146)
  %148 = sitofp i32 %147 to double
  %149 = fdiv double 1.000000e+00, %148
  %150 = fptrunc double %149 to float
  %151 = load float*, float** %9, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %151, i64 %153
  store float %150, float* %154, align 4
  br label %155

155:                                              ; preds = %143
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %137

158:                                              ; preds = %137
  %159 = load i32, i32* %10, align 4
  %160 = load float*, float** %9, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds float, float* %160, i64 %161
  store float* %162, float** %9, align 8
  br label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %130

166:                                              ; preds = %130
  br label %203

167:                                              ; preds = %117
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %199, %167
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %202

174:                                              ; preds = %168
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %191, %174
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %194

181:                                              ; preds = %175
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @get_natural_factor(%struct.TYPE_8__* %182, i32 %183, i32 %184)
  %186 = sitofp i32 %185 to float
  %187 = load float*, float** %9, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  store float %186, float* %190, align 4
  br label %191

191:                                              ; preds = %181
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %7, align 4
  br label %175

194:                                              ; preds = %175
  %195 = load i32, i32* %10, align 4
  %196 = load float*, float** %9, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds float, float* %196, i64 %197
  store float* %198, float** %9, align 8
  br label %199

199:                                              ; preds = %194
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %8, align 4
  br label %168

202:                                              ; preds = %168
  br label %203

203:                                              ; preds = %202, %166
  ret void
}

declare dso_local i8* @TS2T(i32, i32) #1

declare dso_local i8* @TS2D(i32) #1

declare dso_local i8* @av_expr_eval(i32, i8**, i32*) #1

declare dso_local i64 @isnan(i8*) #1

declare dso_local i8* @av_clipf(i8*, i32, i32) #1

declare dso_local i32 @get_natural_factor(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
