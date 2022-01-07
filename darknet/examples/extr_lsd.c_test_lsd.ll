; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_lsd.c_test_lsd.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_lsd.c_test_lsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, float* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Enter Image Path: \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: Predicted in %f seconds.\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"crop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_lsd(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_21__, align 8
  %16 = alloca %struct.TYPE_21__, align 8
  %17 = alloca %struct.TYPE_21__, align 8
  %18 = alloca float*, align 8
  %19 = alloca %struct.TYPE_21__, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.TYPE_20__* @load_network(i8* %20, i8* %21, i32 0)
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %9, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %24 = call i32 @set_batch_network(%struct.TYPE_20__* %23, i32 1)
  %25 = call i32 @srand(i32 2222222)
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8* %26, i8** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %48, %4
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %51

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %27

51:                                               ; preds = %43, %27
  br label %52

52:                                               ; preds = %51, %200
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strncpy(i8* %56, i8* %57, i32 256)
  br label %72

59:                                               ; preds = %52
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @stdout, align 4
  %62 = call i32 @fflush(i32 %61)
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* @stdin, align 4
  %65 = call i8* @fgets(i8* %63, i32 256, i32 %64)
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  br label %201

69:                                               ; preds = %59
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @strtok(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %55
  %73 = load i8*, i8** %12, align 8
  %74 = call { i64, float* } @load_image_color(i8* %73, i32 0, i32 0)
  %75 = bitcast %struct.TYPE_21__* %15 to { i64, float* }*
  %76 = getelementptr inbounds { i64, float* }, { i64, float* }* %75, i32 0, i32 0
  %77 = extractvalue { i64, float* } %74, 0
  store i64 %77, i64* %76, align 8
  %78 = getelementptr inbounds { i64, float* }, { i64, float* }* %75, i32 0, i32 1
  %79 = extractvalue { i64, float* } %74, 1
  store float* %79, float** %78, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = bitcast %struct.TYPE_21__* %15 to { i64, float* }*
  %84 = getelementptr inbounds { i64, float* }, { i64, float* }* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds { i64, float* }, { i64, float* }* %83, i32 0, i32 1
  %87 = load float*, float** %86, align 8
  %88 = call { i64, float* } @resize_min(i64 %85, float* %87, i32 %82)
  %89 = bitcast %struct.TYPE_21__* %16 to { i64, float* }*
  %90 = getelementptr inbounds { i64, float* }, { i64, float* }* %89, i32 0, i32 0
  %91 = extractvalue { i64, float* } %88, 0
  store i64 %91, i64* %90, align 8
  %92 = getelementptr inbounds { i64, float* }, { i64, float* }* %89, i32 0, i32 1
  %93 = extractvalue { i64, float* } %88, 1
  store float* %93, float** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = sdiv i32 %99, 2
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %102, %105
  %107 = sdiv i32 %106, 2
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = bitcast %struct.TYPE_21__* %16 to { i64, float* }*
  %115 = getelementptr inbounds { i64, float* }, { i64, float* }* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds { i64, float* }, { i64, float* }* %114, i32 0, i32 1
  %118 = load float*, float** %117, align 8
  %119 = call { i64, float* } @crop_image(i64 %116, float* %118, i32 %100, i32 %107, i32 %110, i32 %113)
  %120 = bitcast %struct.TYPE_21__* %17 to { i64, float* }*
  %121 = getelementptr inbounds { i64, float* }, { i64, float* }* %120, i32 0, i32 0
  %122 = extractvalue { i64, float* } %119, 0
  store i64 %122, i64* %121, align 8
  %123 = getelementptr inbounds { i64, float* }, { i64, float* }* %120, i32 0, i32 1
  %124 = extractvalue { i64, float* } %119, 1
  store float* %124, float** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %72
  %128 = bitcast %struct.TYPE_21__* %17 to { i64, float* }*
  %129 = getelementptr inbounds { i64, float* }, { i64, float* }* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds { i64, float* }, { i64, float* }* %128, i32 0, i32 1
  %132 = load float*, float** %131, align 8
  %133 = call i32 @grayscale_image_3c(i64 %130, float* %132)
  br label %134

134:                                              ; preds = %127, %72
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %136 = load float*, float** %135, align 8
  store float* %136, float** %18, align 8
  %137 = call i64 (...) @clock()
  store i64 %137, i64* %10, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %139 = load float*, float** %18, align 8
  %140 = call i32 @network_predict(%struct.TYPE_20__* %138, float* %139)
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %142 = load i32, i32* %14, align 4
  %143 = call { i64, float* } @get_network_image_layer(%struct.TYPE_20__* %141, i32 %142)
  %144 = bitcast %struct.TYPE_21__* %19 to { i64, float* }*
  %145 = getelementptr inbounds { i64, float* }, { i64, float* }* %144, i32 0, i32 0
  %146 = extractvalue { i64, float* } %143, 0
  store i64 %146, i64* %145, align 8
  %147 = getelementptr inbounds { i64, float* }, { i64, float* }* %144, i32 0, i32 1
  %148 = extractvalue { i64, float* } %143, 1
  store float* %148, float** %147, align 8
  %149 = bitcast %struct.TYPE_21__* %19 to { i64, float* }*
  %150 = getelementptr inbounds { i64, float* }, { i64, float* }* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds { i64, float* }, { i64, float* }* %149, i32 0, i32 1
  %153 = load float*, float** %152, align 8
  %154 = call i32 @constrain_image(i64 %151, float* %153)
  %155 = load i8*, i8** %12, align 8
  %156 = call i64 (...) @clock()
  %157 = load i64, i64* %10, align 8
  %158 = sub nsw i64 %156, %157
  %159 = call double @sec(i64 %158)
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %155, double %159)
  %161 = bitcast %struct.TYPE_21__* %19 to { i64, float* }*
  %162 = getelementptr inbounds { i64, float* }, { i64, float* }* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds { i64, float* }, { i64, float* }* %161, i32 0, i32 1
  %165 = load float*, float** %164, align 8
  %166 = call i32 @save_image(i64 %163, float* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %167 = bitcast %struct.TYPE_21__* %19 to { i64, float* }*
  %168 = getelementptr inbounds { i64, float* }, { i64, float* }* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds { i64, float* }, { i64, float* }* %167, i32 0, i32 1
  %171 = load float*, float** %170, align 8
  %172 = call i32 @show_image(i64 %169, float* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %173 = bitcast %struct.TYPE_21__* %17 to { i64, float* }*
  %174 = getelementptr inbounds { i64, float* }, { i64, float* }* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds { i64, float* }, { i64, float* }* %173, i32 0, i32 1
  %177 = load float*, float** %176, align 8
  %178 = call i32 @show_image(i64 %175, float* %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %179 = bitcast %struct.TYPE_21__* %15 to { i64, float* }*
  %180 = getelementptr inbounds { i64, float* }, { i64, float* }* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds { i64, float* }, { i64, float* }* %179, i32 0, i32 1
  %183 = load float*, float** %182, align 8
  %184 = call i32 @free_image(i64 %181, float* %183)
  %185 = bitcast %struct.TYPE_21__* %16 to { i64, float* }*
  %186 = getelementptr inbounds { i64, float* }, { i64, float* }* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds { i64, float* }, { i64, float* }* %185, i32 0, i32 1
  %189 = load float*, float** %188, align 8
  %190 = call i32 @free_image(i64 %187, float* %189)
  %191 = bitcast %struct.TYPE_21__* %17 to { i64, float* }*
  %192 = getelementptr inbounds { i64, float* }, { i64, float* }* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds { i64, float* }, { i64, float* }* %191, i32 0, i32 1
  %195 = load float*, float** %194, align 8
  %196 = call i32 @free_image(i64 %193, float* %195)
  %197 = load i8*, i8** %7, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %134
  br label %201

200:                                              ; preds = %134
  br label %52

201:                                              ; preds = %68, %199
  ret void
}

declare dso_local %struct.TYPE_20__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strtok(i8*, i8*) #1

declare dso_local { i64, float* } @load_image_color(i8*, i32, i32) #1

declare dso_local { i64, float* } @resize_min(i64, float*, i32) #1

declare dso_local { i64, float* } @crop_image(i64, float*, i32, i32, i32, i32) #1

declare dso_local i32 @grayscale_image_3c(i64, float*) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @network_predict(%struct.TYPE_20__*, float*) #1

declare dso_local { i64, float* } @get_network_image_layer(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @constrain_image(i64, float*) #1

declare dso_local double @sec(i64) #1

declare dso_local i32 @save_image(i64, float*, i8*) #1

declare dso_local i32 @show_image(i64, float*, i8*, i32) #1

declare dso_local i32 @free_image(i64, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
