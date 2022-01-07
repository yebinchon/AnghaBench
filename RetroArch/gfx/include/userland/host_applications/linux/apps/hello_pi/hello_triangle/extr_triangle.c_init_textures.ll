; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle/extr_triangle.c_init_textures.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle/extr_triangle.c_init_textures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32 }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i32 0, align 4
@IMAGE_SIZE = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i64 0, align 8
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@texCoords = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @init_textures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_textures(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = call i32 @load_tex_images(%struct.TYPE_4__* %3)
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = call i32 @glGenTextures(i32 6, i32* %8)
  %10 = load i32, i32* @GL_TEXTURE_2D, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @glBindTexture(i32 %10, i32 %15)
  %17 = load i32, i32* @GL_TEXTURE_2D, align 4
  %18 = load i32, i32* @GL_RGB, align 4
  %19 = load i32, i32* @IMAGE_SIZE, align 4
  %20 = load i32, i32* @IMAGE_SIZE, align 4
  %21 = load i32, i32* @GL_RGB, align 4
  %22 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @glTexImage2D(i32 %17, i32 0, i32 %18, i32 %19, i32 %20, i32 0, i32 %21, i32 %22, i32 %25)
  %27 = load i32, i32* @GL_TEXTURE_2D, align 4
  %28 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %29 = load i64, i64* @GL_NEAREST, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @glTexParameterf(i32 %27, i32 %28, i32 %30)
  %32 = load i32, i32* @GL_TEXTURE_2D, align 4
  %33 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %34 = load i64, i64* @GL_NEAREST, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @glTexParameterf(i32 %32, i32 %33, i32 %35)
  %37 = load i32, i32* @GL_TEXTURE_2D, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @glBindTexture(i32 %37, i32 %42)
  %44 = load i32, i32* @GL_TEXTURE_2D, align 4
  %45 = load i32, i32* @GL_RGB, align 4
  %46 = load i32, i32* @IMAGE_SIZE, align 4
  %47 = load i32, i32* @IMAGE_SIZE, align 4
  %48 = load i32, i32* @GL_RGB, align 4
  %49 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @glTexImage2D(i32 %44, i32 0, i32 %45, i32 %46, i32 %47, i32 0, i32 %48, i32 %49, i32 %52)
  %54 = load i32, i32* @GL_TEXTURE_2D, align 4
  %55 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %56 = load i64, i64* @GL_NEAREST, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @glTexParameterf(i32 %54, i32 %55, i32 %57)
  %59 = load i32, i32* @GL_TEXTURE_2D, align 4
  %60 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %61 = load i64, i64* @GL_NEAREST, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @glTexParameterf(i32 %59, i32 %60, i32 %62)
  %64 = load i32, i32* @GL_TEXTURE_2D, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @glBindTexture(i32 %64, i32 %69)
  %71 = load i32, i32* @GL_TEXTURE_2D, align 4
  %72 = load i32, i32* @GL_RGB, align 4
  %73 = load i32, i32* @IMAGE_SIZE, align 4
  %74 = load i32, i32* @IMAGE_SIZE, align 4
  %75 = load i32, i32* @GL_RGB, align 4
  %76 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @glTexImage2D(i32 %71, i32 0, i32 %72, i32 %73, i32 %74, i32 0, i32 %75, i32 %76, i32 %79)
  %81 = load i32, i32* @GL_TEXTURE_2D, align 4
  %82 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %83 = load i64, i64* @GL_NEAREST, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @glTexParameterf(i32 %81, i32 %82, i32 %84)
  %86 = load i32, i32* @GL_TEXTURE_2D, align 4
  %87 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %88 = load i64, i64* @GL_NEAREST, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @glTexParameterf(i32 %86, i32 %87, i32 %89)
  %91 = load i32, i32* @GL_TEXTURE_2D, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @glBindTexture(i32 %91, i32 %96)
  %98 = load i32, i32* @GL_TEXTURE_2D, align 4
  %99 = load i32, i32* @GL_RGB, align 4
  %100 = load i32, i32* @IMAGE_SIZE, align 4
  %101 = load i32, i32* @IMAGE_SIZE, align 4
  %102 = load i32, i32* @GL_RGB, align 4
  %103 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @glTexImage2D(i32 %98, i32 0, i32 %99, i32 %100, i32 %101, i32 0, i32 %102, i32 %103, i32 %106)
  %108 = load i32, i32* @GL_TEXTURE_2D, align 4
  %109 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %110 = load i64, i64* @GL_NEAREST, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @glTexParameterf(i32 %108, i32 %109, i32 %111)
  %113 = load i32, i32* @GL_TEXTURE_2D, align 4
  %114 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %115 = load i64, i64* @GL_NEAREST, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @glTexParameterf(i32 %113, i32 %114, i32 %116)
  %118 = load i32, i32* @GL_TEXTURE_2D, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @glBindTexture(i32 %118, i32 %123)
  %125 = load i32, i32* @GL_TEXTURE_2D, align 4
  %126 = load i32, i32* @GL_RGB, align 4
  %127 = load i32, i32* @IMAGE_SIZE, align 4
  %128 = load i32, i32* @IMAGE_SIZE, align 4
  %129 = load i32, i32* @GL_RGB, align 4
  %130 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @glTexImage2D(i32 %125, i32 0, i32 %126, i32 %127, i32 %128, i32 0, i32 %129, i32 %130, i32 %133)
  %135 = load i32, i32* @GL_TEXTURE_2D, align 4
  %136 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %137 = load i64, i64* @GL_NEAREST, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @glTexParameterf(i32 %135, i32 %136, i32 %138)
  %140 = load i32, i32* @GL_TEXTURE_2D, align 4
  %141 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %142 = load i64, i64* @GL_NEAREST, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 @glTexParameterf(i32 %140, i32 %141, i32 %143)
  %145 = load i32, i32* @GL_TEXTURE_2D, align 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 5
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @glBindTexture(i32 %145, i32 %150)
  %152 = load i32, i32* @GL_TEXTURE_2D, align 4
  %153 = load i32, i32* @GL_RGB, align 4
  %154 = load i32, i32* @IMAGE_SIZE, align 4
  %155 = load i32, i32* @IMAGE_SIZE, align 4
  %156 = load i32, i32* @GL_RGB, align 4
  %157 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @glTexImage2D(i32 %152, i32 0, i32 %153, i32 %154, i32 %155, i32 0, i32 %156, i32 %157, i32 %160)
  %162 = load i32, i32* @GL_TEXTURE_2D, align 4
  %163 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %164 = load i64, i64* @GL_NEAREST, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 @glTexParameterf(i32 %162, i32 %163, i32 %165)
  %167 = load i32, i32* @GL_TEXTURE_2D, align 4
  %168 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %169 = load i64, i64* @GL_NEAREST, align 8
  %170 = trunc i64 %169 to i32
  %171 = call i32 @glTexParameterf(i32 %167, i32 %168, i32 %170)
  %172 = load i32, i32* @GL_FLOAT, align 4
  %173 = load i32, i32* @texCoords, align 4
  %174 = call i32 @glTexCoordPointer(i32 2, i32 %172, i32 0, i32 %173)
  %175 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %176 = call i32 @glEnableClientState(i32 %175)
  %177 = load i32, i32* @GL_TEXTURE_2D, align 4
  %178 = call i32 @glEnable(i32 %177)
  ret void
}

declare dso_local i32 @load_tex_images(%struct.TYPE_4__*) #1

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glTexParameterf(i32, i32, i32) #1

declare dso_local i32 @glTexCoordPointer(i32, i32, i32, i32) #1

declare dso_local i32 @glEnableClientState(i32) #1

declare dso_local i32 @glEnable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
