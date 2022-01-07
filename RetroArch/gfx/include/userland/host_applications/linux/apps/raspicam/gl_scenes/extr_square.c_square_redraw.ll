; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_square.c_square_redraw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_square.c_square_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GL_TEXTURE_EXTERNAL_OES = common dso_local global i32 0, align 4
@angle = common dso_local global i32 0, align 4
@GL_VERTEX_ARRAY = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@vertices = common dso_local global i32 0, align 4
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@tex_coords = common dso_local global i32 0, align 4
@GL_TRIANGLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @square_redraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @square_redraw(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @GL_TEXTURE_EXTERNAL_OES, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @glBindTexture(i32 %3, i32 %6)
  %8 = call i32 @GLCHK(i32 %7)
  %9 = call i32 (...) @glLoadIdentity()
  %10 = load i32, i32* @angle, align 4
  %11 = call i32 @glRotatef(i32 %10, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %12 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %13 = call i32 @glEnableClientState(i32 %12)
  %14 = load i32, i32* @GL_FLOAT, align 4
  %15 = load i32, i32* @vertices, align 4
  %16 = call i32 @glVertexPointer(i32 3, i32 %14, i32 0, i32 %15)
  %17 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %18 = call i32 @glDisableClientState(i32 %17)
  %19 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %20 = call i32 @glEnableClientState(i32 %19)
  %21 = load i32, i32* @GL_FLOAT, align 4
  %22 = load i32, i32* @tex_coords, align 4
  %23 = call i32 @glTexCoordPointer(i32 2, i32 %21, i32 0, i32 %22)
  %24 = load i32, i32* @GL_TRIANGLES, align 4
  %25 = load i32, i32* @tex_coords, align 4
  %26 = call i32 @vcos_countof(i32 %25)
  %27 = sdiv i32 %26, 2
  %28 = call i32 @glDrawArrays(i32 %24, i32 0, i32 %27)
  %29 = call i32 @GLCHK(i32 %28)
  ret i32 0
}

declare dso_local i32 @GLCHK(i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @glRotatef(i32, double, double, double) #1

declare dso_local i32 @glEnableClientState(i32) #1

declare dso_local i32 @glVertexPointer(i32, i32, i32, i32) #1

declare dso_local i32 @glDisableClientState(i32) #1

declare dso_local i32 @glTexCoordPointer(i32, i32, i32, i32) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

declare dso_local i32 @vcos_countof(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
