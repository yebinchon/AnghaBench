; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_shaders.c_LoadShaderImage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_shaders.c_LoadShaderImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, float*, i32, i64*, i64*, i64* }

@qtrue = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@gamedir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c".tga\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s%s.tga\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s%s.TGA\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"WARNING: Couldn't find image for shader %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @LoadShaderImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadShaderImage(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %9 = load i64, i64* @qtrue, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 7
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %18 = load i8*, i8** @gamedir, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 7
  %21 = load i64*, i64** %20, align 8
  %22 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %18, i64* %21)
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %24 = call i32 @DefaultExtension(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %26 = call i32* @LoadImageFile(i8* %25, i64* %8)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %121

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 6
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %40 = load i8*, i8** @gamedir, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 6
  %43 = load i64*, i64** %42, align 8
  %44 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %40, i64* %43)
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %46 = call i32 @DefaultExtension(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %48 = call i32* @LoadImageFile(i8* %47, i64* %8)
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %121

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %31
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %55 = load i8*, i8** @gamedir, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  %58 = load i64*, i64** %57, align 8
  %59 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %55, i64* %58)
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %61 = call i32* @LoadImageFile(i8* %60, i64* %8)
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %121

65:                                               ; preds = %53
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %67 = load i8*, i8** @gamedir, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 5
  %70 = load i64*, i64** %69, align 8
  %71 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %67, i64* %70)
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %73 = call i32* @LoadImageFile(i8* %72, i64* %8)
  store i32* %73, i32** %7, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %121

77:                                               ; preds = %65
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 5
  %80 = load i64*, i64** %79, align 8
  %81 = call i32 @_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64* %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 1, i32* %85, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  store i32 1, i32* %93, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32 64, i32* %95, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  store i32 64, i32* %97, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %100, %103
  %105 = mul nsw i32 %104, 4
  %106 = call float* @malloc(i32 %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  store float* %106, float** %108, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load float*, float** %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %114, %117
  %119 = mul nsw i32 %118, 4
  %120 = call i32 @memset(float* %111, i32 255, i32 %119)
  br label %217

121:                                              ; preds = %76, %64, %51, %29
  %122 = load i64, i64* %8, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load i32*, i32** %7, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = call i32 @LoadTGABuffer(i32* %125, float** %127, i32* %129, i32* %131)
  br label %134

133:                                              ; preds = %121
  br label %134

134:                                              ; preds = %133, %124
  %135 = load i32*, i32** %7, align 8
  %136 = call i32 @free(i32* %135)
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %139, %142
  store i32 %143, i32* %5, align 4
  %144 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 0
  %145 = call i32 @VectorClear(float* %144)
  %146 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 3
  store float 0.000000e+00, float* %146, align 4
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %200, %134
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %203

151:                                              ; preds = %147
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  %154 = load float*, float** %153, align 8
  %155 = load i32, i32* %4, align 4
  %156 = mul nsw i32 %155, 4
  %157 = add nsw i32 %156, 0
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %154, i64 %158
  %160 = load float, float* %159, align 4
  %161 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 0
  %162 = load float, float* %161, align 16
  %163 = fadd float %162, %160
  store float %163, float* %161, align 16
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 3
  %166 = load float*, float** %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = mul nsw i32 %167, 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %166, i64 %170
  %172 = load float, float* %171, align 4
  %173 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 1
  %174 = load float, float* %173, align 4
  %175 = fadd float %174, %172
  store float %175, float* %173, align 4
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 3
  %178 = load float*, float** %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = mul nsw i32 %179, 4
  %181 = add nsw i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %178, i64 %182
  %184 = load float, float* %183, align 4
  %185 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 2
  %186 = load float, float* %185, align 8
  %187 = fadd float %186, %184
  store float %187, float* %185, align 8
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 3
  %190 = load float*, float** %189, align 8
  %191 = load i32, i32* %4, align 4
  %192 = mul nsw i32 %191, 4
  %193 = add nsw i32 %192, 3
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %190, i64 %194
  %196 = load float, float* %195, align 4
  %197 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 3
  %198 = load float, float* %197, align 4
  %199 = fadd float %198, %196
  store float %199, float* %197, align 4
  br label %200

200:                                              ; preds = %151
  %201 = load i32, i32* %4, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %4, align 4
  br label %147

203:                                              ; preds = %147
  %204 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 0
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @ColorNormalize(float* %204, i32* %207)
  %209 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 0
  %210 = load i32, i32* %5, align 4
  %211 = sitofp i32 %210 to double
  %212 = fdiv double 1.000000e+00, %211
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @VectorScale(float* %209, double %212, i32 %215)
  br label %217

217:                                              ; preds = %203, %77
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64*) #1

declare dso_local i32 @DefaultExtension(i8*, i8*) #1

declare dso_local i32* @LoadImageFile(i8*, i64*) #1

declare dso_local i32 @_printf(i8*, i64*) #1

declare dso_local float* @malloc(i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @LoadTGABuffer(i32*, float**, i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @ColorNormalize(float*, i32*) #1

declare dso_local i32 @VectorScale(float*, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
