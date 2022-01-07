; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_teapot/extr_models.c_draw_wavefront.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_teapot/extr_models.c_draw_wavefront.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64* }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
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

10:                                               ; preds = %115, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %118

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
  br label %115

28:                                               ; preds = %16
  %29 = load i32, i32* @GL_TEXTURE_2D, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %37, %34 ], [ %39, %38 ]
  %42 = call i32 @glBindTexture(i32 %29, i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @VBO_VERTEX, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %40
  %51 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @VBO_VERTEX, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @glBindBuffer(i32 %51, i64 %57)
  %59 = load i32, i32* @GL_FLOAT, align 4
  %60 = call i32 @glVertexPointer(i32 3, i32 %59, i32 0, i32* null)
  br label %61

61:                                               ; preds = %50, %40
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @VBO_NORMAL, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %61
  %70 = load i32, i32* @GL_NORMAL_ARRAY, align 4
  %71 = call i32 @glEnableClientState(i32 %70)
  %72 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @VBO_NORMAL, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @glBindBuffer(i32 %72, i64 %78)
  %80 = load i32, i32* @GL_FLOAT, align 4
  %81 = call i32 @glNormalPointer(i32 %80, i32 0, i32* null)
  br label %85

82:                                               ; preds = %61
  %83 = load i32, i32* @GL_NORMAL_ARRAY, align 4
  %84 = call i32 @glDisableClientState(i32 %83)
  br label %85

85:                                               ; preds = %82, %69
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* @VBO_TEXTURE, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %85
  %94 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %95 = call i32 @glEnableClientState(i32 %94)
  %96 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* @VBO_TEXTURE, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @glBindBuffer(i32 %96, i64 %102)
  %104 = load i32, i32* @GL_FLOAT, align 4
  %105 = call i32 @glTexCoordPointer(i32 2, i32 %104, i32 0, i32* null)
  br label %109

106:                                              ; preds = %85
  %107 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %108 = call i32 @glDisableClientState(i32 %107)
  br label %109

109:                                              ; preds = %106, %93
  %110 = load i32, i32* @GL_TRIANGLES, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @glDrawArrays(i32 %110, i32 0, i32 %113)
  br label %115

115:                                              ; preds = %109, %27
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %10

118:                                              ; preds = %10
  %119 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %120 = call i32 @glBindBuffer(i32 %119, i64 0)
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
