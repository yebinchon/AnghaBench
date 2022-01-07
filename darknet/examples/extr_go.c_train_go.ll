; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_train_go.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_train_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, double, double, i32*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Learning Rate: %g, Momentum: %g, Decay: %g\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"/home/pjreddie/backup/\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Moves: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Loaded: %lf seconds\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%s/%s_%d.weights\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%s/%s.backup\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"%s/%s_%ld.backup\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"%s/%s.weights\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @train_go(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_13__**, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [256 x i8], align 16
  %21 = alloca %struct.TYPE_14__, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  %27 = alloca [256 x i8], align 16
  %28 = alloca [256 x i8], align 16
  %29 = alloca [256 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store float -1.000000e+00, float* %14, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @basecfg(i8* %30)
  store i8* %31, i8** %15, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %11, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.TYPE_13__** @calloc(i32 %36, i32 8)
  store %struct.TYPE_13__** %37, %struct.TYPE_13__*** %16, align 8
  %38 = call i32 @time(i32 0)
  %39 = call i32 @srand(i32 %38)
  %40 = call i32 (...) @rand()
  store i32 %40, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %65, %6
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @srand(i32 %46)
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call %struct.TYPE_13__* @load_network(i8* %48, i8* %49, i32 %50)
  %52 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %52, i64 %54
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %57, i64 %59
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %63, %56
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %45
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %41

68:                                               ; preds = %41
  %69 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %69, i64 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %18, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load double, double* %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load double, double* %79, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %74, double %77, double %80)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @load_go_moves(i8* %82)
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %22, align 4
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %22, align 4
  %94 = sdiv i32 %92, %93
  store i32 %94, i32* %23, align 4
  br label %95

95:                                               ; preds = %222, %68
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %97 = call i32 @get_current_batch(%struct.TYPE_13__* %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  br label %107

107:                                              ; preds = %102, %95
  %108 = phi i1 [ true, %95 ], [ %106, %102 ]
  br i1 %108, label %109, label %223

109:                                              ; preds = %107
  %110 = call double (...) @what_time_is_it_now()
  store double %110, double* %24, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %113, %116
  %118 = load i32, i32* %11, align 4
  %119 = mul nsw i32 %117, %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @random_go_moves(i32 %121, i32 %119)
  store i32 %122, i32* %25, align 4
  %123 = call double (...) @what_time_is_it_now()
  %124 = load double, double* %24, align 8
  %125 = fsub double %123, %124
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), double %125)
  %127 = call double (...) @what_time_is_it_now()
  store double %127, double* %24, align 8
  store float 0.000000e+00, float* %26, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %129 = load i32, i32* %25, align 4
  %130 = call float @train_network(%struct.TYPE_13__* %128, i32 %129)
  store float %130, float* %26, align 4
  %131 = load i32, i32* %25, align 4
  %132 = call i32 @free_data(i32 %131)
  %133 = load float, float* %14, align 4
  %134 = fcmp oeq float %133, -1.000000e+00
  br i1 %134, label %135, label %137

135:                                              ; preds = %109
  %136 = load float, float* %26, align 4
  store float %136, float* %14, align 4
  br label %137

137:                                              ; preds = %135, %109
  %138 = load float, float* %14, align 4
  %139 = fpext float %138 to double
  %140 = fmul double %139, 0x3FEE666666666666
  %141 = load float, float* %26, align 4
  %142 = fpext float %141 to double
  %143 = fmul double %142, 5.000000e-02
  %144 = fadd double %140, %143
  %145 = fptrunc double %144 to float
  store float %145, float* %14, align 4
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %147 = call i32 @get_current_batch(%struct.TYPE_13__* %146)
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %150, align 4
  %152 = sitofp i32 %151 to float
  %153 = load i32, i32* %22, align 4
  %154 = sitofp i32 %153 to float
  %155 = fdiv float %152, %154
  %156 = fpext float %155 to double
  %157 = load float, float* %26, align 4
  %158 = fpext float %157 to double
  %159 = load float, float* %14, align 4
  %160 = fpext float %159 to double
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %162 = call i32 @get_current_rate(%struct.TYPE_13__* %161)
  %163 = call double (...) @what_time_is_it_now()
  %164 = load double, double* %24, align 8
  %165 = fsub double %163, %164
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %147, double %156, double %158, double %160, i32 %162, double %165, i32 %169)
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %22, align 4
  %176 = sdiv i32 %174, %175
  %177 = load i32, i32* %23, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %137
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %22, align 4
  %185 = sdiv i32 %183, %184
  store i32 %185, i32* %23, align 4
  %186 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %187 = load i8*, i8** %19, align 8
  %188 = load i8*, i8** %15, align 8
  %189 = load i32, i32* %23, align 4
  %190 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %186, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %187, i8* %188, i32 %189)
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %192 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %193 = call i32 @save_weights(%struct.TYPE_13__* %191, i8* %192)
  br label %194

194:                                              ; preds = %179, %137
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %196 = call i32 @get_current_batch(%struct.TYPE_13__* %195)
  %197 = srem i32 %196, 1000
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %194
  %200 = getelementptr inbounds [256 x i8], [256 x i8]* %28, i64 0, i64 0
  %201 = load i8*, i8** %19, align 8
  %202 = load i8*, i8** %15, align 8
  %203 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %200, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %201, i8* %202)
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %205 = getelementptr inbounds [256 x i8], [256 x i8]* %28, i64 0, i64 0
  %206 = call i32 @save_weights(%struct.TYPE_13__* %204, i8* %205)
  br label %207

207:                                              ; preds = %199, %194
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %209 = call i32 @get_current_batch(%struct.TYPE_13__* %208)
  %210 = srem i32 %209, 10000
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %207
  %213 = getelementptr inbounds [256 x i8], [256 x i8]* %29, i64 0, i64 0
  %214 = load i8*, i8** %19, align 8
  %215 = load i8*, i8** %15, align 8
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %217 = call i32 @get_current_batch(%struct.TYPE_13__* %216)
  %218 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %213, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %214, i8* %215, i32 %217)
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %220 = getelementptr inbounds [256 x i8], [256 x i8]* %29, i64 0, i64 0
  %221 = call i32 @save_weights(%struct.TYPE_13__* %219, i8* %220)
  br label %222

222:                                              ; preds = %212, %207
  br label %95

223:                                              ; preds = %107
  %224 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %225 = load i8*, i8** %19, align 8
  %226 = load i8*, i8** %15, align 8
  %227 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %224, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %225, i8* %226)
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %229 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %230 = call i32 @save_weights(%struct.TYPE_13__* %228, i8* %229)
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %232 = call i32 @free_network(%struct.TYPE_13__* %231)
  %233 = load i8*, i8** %15, align 8
  %234 = call i32 @free(i8* %233)
  ret void
}

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_13__** @calloc(i32, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local %struct.TYPE_13__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @load_go_moves(i8*) #1

declare dso_local i32 @get_current_batch(%struct.TYPE_13__*) #1

declare dso_local double @what_time_is_it_now(...) #1

declare dso_local i32 @random_go_moves(i32, i32) #1

declare dso_local float @train_network(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @free_data(i32) #1

declare dso_local i32 @get_current_rate(%struct.TYPE_13__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @save_weights(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @free_network(%struct.TYPE_13__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
