; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_models.c_draw_wavefront.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_models.c_draw_wavefront.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64* }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_EXTERNAL_OES = common dso_local global i32 0, align 4
@VBO_VERTEX = common dso_local global i64 0, align 8
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@VBO_NORMAL = common dso_local global i64 0, align 8
@GL_NORMAL_ARRAY = common dso_local global i32 0, align 4
@VBO_TEXTURE = common dso_local global i64 0, align 8
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@GL_TRIANGLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @draw_wavefront(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %116, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %119

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %7, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %116

28:                                               ; preds = %16
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @GL_TEXTURE_2D, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @glBindTexture(i32 %34, i32 %37)
  br label %43

39:                                               ; preds = %28
  %40 = load i32, i32* @GL_TEXTURE_EXTERNAL_OES, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @glBindTexture(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @VBO_VERTEX, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %43
  %52 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @VBO_VERTEX, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @glBindBuffer(i32 %52, i64 %58)
  %60 = load i32, i32* @GL_FLOAT, align 4
  %61 = call i32 @glVertexPointer(i32 3, i32 %60, i32 0, i32* null)
  br label %62

62:                                               ; preds = %51, %43
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @VBO_NORMAL, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %62
  %71 = load i32, i32* @GL_NORMAL_ARRAY, align 4
  %72 = call i32 @glEnableClientState(i32 %71)
  %73 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @VBO_NORMAL, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @glBindBuffer(i32 %73, i64 %79)
  %81 = load i32, i32* @GL_FLOAT, align 4
  %82 = call i32 @glNormalPointer(i32 %81, i32 0, i32* null)
  br label %86

83:                                               ; preds = %62
  %84 = load i32, i32* @GL_NORMAL_ARRAY, align 4
  %85 = call i32 @glDisableClientState(i32 %84)
  br label %86

86:                                               ; preds = %83, %70
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* @VBO_TEXTURE, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %86
  %95 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %96 = call i32 @glEnableClientState(i32 %95)
  %97 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* @VBO_TEXTURE, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @glBindBuffer(i32 %97, i64 %103)
  %105 = load i32, i32* @GL_FLOAT, align 4
  %106 = call i32 @glTexCoordPointer(i32 2, i32 %105, i32 0, i32* null)
  br label %110

107:                                              ; preds = %86
  %108 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %109 = call i32 @glDisableClientState(i32 %108)
  br label %110

110:                                              ; preds = %107, %94
  %111 = load i32, i32* @GL_TRIANGLES, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @glDrawArrays(i32 %111, i32 0, i32 %114)
  br label %116

116:                                              ; preds = %110, %27
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %10

119:                                              ; preds = %10
  %120 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %121 = call i32 @glBindBuffer(i32 %120, i64 0)
  ret i32 0
}

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glBindBuffer(i32, i64) #1

declare dso_local i32 @glVertexPointer(i32, i32, i32, i32*) #1

declare dso_local i32 @glEnableClientState(i32) #1

declare dso_local i32 @glNormalPointer(i32, i32, i32*) #1

declare dso_local i32 @glDisableClientState(i32) #1

declare dso_local i32 @glTexCoordPointer(i32, i32, i32, i32*) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
