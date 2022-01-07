; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_read_boxes.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_read_boxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, float, float, float, float, float, float, float, float }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%d %f %f %f %f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @read_boxes(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @file_error(i8* %19)
  br label %21

21:                                               ; preds = %18, %2
  store i32 0, i32* %11, align 4
  store i32 64, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call %struct.TYPE_6__* @calloc(i32 %22, i32 36)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %13, align 8
  br label %24

24:                                               ; preds = %41, %21
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @fscanf(i32* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %10, float* %6, float* %7, float* %9, float* %8)
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %110

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = mul nsw i32 %33, 2
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 36
  %39 = trunc i64 %38 to i32
  %40 = call %struct.TYPE_6__* @realloc(%struct.TYPE_6__* %35, i32 %39)
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %13, align 8
  br label %41

41:                                               ; preds = %32, %28
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  %48 = load float, float* %6, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store float %48, float* %53, align 4
  %54 = load float, float* %7, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store float %54, float* %59, align 4
  %60 = load float, float* %8, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  store float %60, float* %65, align 4
  %66 = load float, float* %9, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  store float %66, float* %71, align 4
  %72 = load float, float* %6, align 4
  %73 = load float, float* %9, align 4
  %74 = fdiv float %73, 2.000000e+00
  %75 = fsub float %72, %74
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  store float %75, float* %80, align 4
  %81 = load float, float* %6, align 4
  %82 = load float, float* %9, align 4
  %83 = fdiv float %82, 2.000000e+00
  %84 = fadd float %81, %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 6
  store float %84, float* %89, align 4
  %90 = load float, float* %7, align 4
  %91 = load float, float* %8, align 4
  %92 = fdiv float %91, 2.000000e+00
  %93 = fsub float %90, %92
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 7
  store float %93, float* %98, align 4
  %99 = load float, float* %7, align 4
  %100 = load float, float* %8, align 4
  %101 = fdiv float %100, 2.000000e+00
  %102 = fadd float %99, %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 8
  store float %102, float* %107, align 4
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %24

110:                                              ; preds = %24
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @fclose(i32* %111)
  %113 = load i32, i32* %11, align 4
  %114 = load i32*, i32** %4, align 8
  store i32 %113, i32* %114, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  ret %struct.TYPE_6__* %115
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @file_error(i8*) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*, float*, float*, float*, float*) #1

declare dso_local %struct.TYPE_6__* @realloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
