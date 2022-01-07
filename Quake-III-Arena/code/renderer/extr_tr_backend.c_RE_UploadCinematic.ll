; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_backend.c_RE_UploadCinematic.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_backend.c_RE_UploadCinematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@tr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGB8 = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_UploadCinematic(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), align 8
  %16 = load i32, i32* %13, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %15, i64 %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call i32 @GL_Bind(%struct.TYPE_4__* %19)
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %21, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %7
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %31, %38
  br i1 %39, label %40, label %91

40:                                               ; preds = %30, %7
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %41, i32* %47, align 4
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %41, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store i32 %54, i32* %60, align 4
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %54, i32* %66, align 4
  %67 = load i32, i32* @GL_TEXTURE_2D, align 4
  %68 = load i32, i32* @GL_RGB8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @GL_RGBA, align 4
  %72 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @qglTexImage2D(i32 %67, i32 0, i32 %68, i32 %69, i32 %70, i32 0, i32 %71, i32 %72, i32* %73)
  %75 = load i32, i32* @GL_TEXTURE_2D, align 4
  %76 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %77 = load i32, i32* @GL_LINEAR, align 4
  %78 = call i32 @qglTexParameterf(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* @GL_TEXTURE_2D, align 4
  %80 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %81 = load i32, i32* @GL_LINEAR, align 4
  %82 = call i32 @qglTexParameterf(i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* @GL_TEXTURE_2D, align 4
  %84 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %85 = load i32, i32* @GL_CLAMP, align 4
  %86 = call i32 @qglTexParameterf(i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* @GL_TEXTURE_2D, align 4
  %88 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %89 = load i32, i32* @GL_CLAMP, align 4
  %90 = call i32 @qglTexParameterf(i32 %87, i32 %88, i32 %89)
  br label %103

91:                                               ; preds = %30
  %92 = load i64, i64* %14, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i32, i32* @GL_TEXTURE_2D, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @GL_RGBA, align 4
  %99 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @qglTexSubImage2D(i32 %95, i32 0, i32 0, i32 0, i32 %96, i32 %97, i32 %98, i32 %99, i32* %100)
  br label %102

102:                                              ; preds = %94, %91
  br label %103

103:                                              ; preds = %102, %40
  ret void
}

declare dso_local i32 @GL_Bind(%struct.TYPE_4__*) #1

declare dso_local i32 @qglTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @qglTexParameterf(i32, i32, i32) #1

declare dso_local i32 @qglTexSubImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
