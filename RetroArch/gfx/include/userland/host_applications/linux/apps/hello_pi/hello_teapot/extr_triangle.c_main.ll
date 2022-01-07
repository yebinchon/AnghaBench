; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_teapot/extr_triangle.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_teapot/extr_triangle.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Note: ensure you have sufficient gpu_mem configured\0A\00", align 1
@state = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"/opt/vc/src/hello_pi/hello_teapot/teapot.obj.dat\00", align 1
@terminate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @bcm_host_init()
  %3 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %5 = call i32 @memset(%struct.TYPE_8__* %4, i32 0, i32 4)
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %7 = call i32 @init_ogl(%struct.TYPE_8__* %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %9 = call i32 @init_model_proj(%struct.TYPE_8__* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %11 = call i32 @init_textures(%struct.TYPE_8__* %10)
  %12 = call i32 @load_wavefront(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %19, %0
  %16 = load i32, i32* @terminate, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %21 = call i32 @update_model(%struct.TYPE_8__* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %23 = call i32 @redraw_scene(%struct.TYPE_8__* %22)
  br label %15

24:                                               ; preds = %15
  %25 = call i32 (...) @exit_func()
  ret i32 0
}

declare dso_local i32 @bcm_host_init(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @init_ogl(%struct.TYPE_8__*) #1

declare dso_local i32 @init_model_proj(%struct.TYPE_8__*) #1

declare dso_local i32 @init_textures(%struct.TYPE_8__*) #1

declare dso_local i32 @load_wavefront(i8*, i32*) #1

declare dso_local i32 @update_model(%struct.TYPE_8__*) #1

declare dso_local i32 @redraw_scene(%struct.TYPE_8__*) #1

declare dso_local i32 @exit_func(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
