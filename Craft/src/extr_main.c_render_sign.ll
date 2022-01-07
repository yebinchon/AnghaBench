; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_render_sign.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_render_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@g = common dso_local global %struct.TYPE_12__* null, align 8
@CRAFT_KEY_SIGN = common dso_local global i64 0, align 8
@GL_FALSE = common dso_local global i32 0, align 4
@MAX_SIGN_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_sign(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca [16 x float], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CRAFT_KEY_SIGN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %2
  br label %119

29:                                               ; preds = %20
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = call i32 @hit_test_face(%struct.TYPE_10__* %30, i32* %5, i32* %6, i32* %7, i32* %8)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %119

34:                                               ; preds = %29
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %9, align 8
  %37 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @set_matrix_3d(float* %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @glUseProgram(i32 %71)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @GL_FALSE, align 4
  %77 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %78 = call i32 @glUniformMatrix4fv(i32 %75, i32 1, i32 %76, float* %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @glUniform1i(i32 %81, i32 3)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @glUniform1i(i32 %85, i32 1)
  %87 = load i32, i32* @MAX_SIGN_LENGTH, align 4
  %88 = zext i32 %87 to i64
  %89 = call i8* @llvm.stacksave()
  store i8* %89, i8** %11, align 8
  %90 = alloca i8, i64 %88, align 16
  store i64 %88, i64* %12, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i32, i32* @MAX_SIGN_LENGTH, align 4
  %96 = call i32 @strncpy(i8* %90, i64* %94, i32 %95)
  %97 = load i32, i32* @MAX_SIGN_LENGTH, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %90, i64 %99
  store i8 0, i8* %100, align 1
  %101 = call i32 @strlen(i8* %90)
  %102 = call i32* @malloc_faces(i32 5, i32 %101)
  store i32* %102, i32** %13, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @_gen_sign_buffer(i32* %103, i32 %104, i32 %105, i32 %106, i32 %107, i8* %90)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @gen_faces(i32 5, i32 %109, i32* %110)
  store i32 %111, i32* %15, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @draw_sign(%struct.TYPE_11__* %112, i32 %113, i32 %114)
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @del_buffer(i32 %116)
  %118 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %118)
  br label %119

119:                                              ; preds = %34, %33, %28
  ret void
}

declare dso_local i32 @hit_test_face(%struct.TYPE_10__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @set_matrix_3d(float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @glUniformMatrix4fv(i32, i32, i32, float*) #1

declare dso_local i32 @glUniform1i(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strncpy(i8*, i64*, i32) #1

declare dso_local i32* @malloc_faces(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @_gen_sign_buffer(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @gen_faces(i32, i32, i32*) #1

declare dso_local i32 @draw_sign(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @del_buffer(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
