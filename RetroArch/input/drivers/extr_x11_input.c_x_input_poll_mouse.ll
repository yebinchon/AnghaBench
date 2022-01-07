; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_x11_input.c_x_input_poll_mouse.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_x11_input.c_x_input_poll_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.video_viewport = type { i32, i32, i64, i64, i64, i64 }

@g_x11_entered = common dso_local global i64 0, align 8
@Button1Mask = common dso_local global i32 0, align 4
@Button2Mask = common dso_local global i32 0, align 4
@Button3Mask = common dso_local global i32 0, align 4
@None = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @x_input_poll_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x_input_poll_mouse(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.video_viewport, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @XQueryPointer(i32 %25, i32 %28, i32* %8, i32* %9, i32* %4, i32* %5, i32* %6, i32* %7, i32* %3)
  %30 = load i64, i64* @g_x11_entered, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %110

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @Button1Mask, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @Button2Mask, align 4
  %46 = and i32 %44, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @Button3Mask, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 9
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %109

58:                                               ; preds = %32
  %59 = call i64 (...) @video_driver_has_focus()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %109

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = call i32 @video_driver_get_viewport_info(%struct.video_viewport* %12)
  %69 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %70, 1
  store i32 %71, i32* %10, align 4
  %72 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %11, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %61
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %80, %61
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @None, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @XWarpPointer(i32 %89, i32 %90, i32 %93, i32 0, i32 0, i32 0, i32 0, i32 %94, i32 %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @False, align 4
  %101 = call i32 @XSync(i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %86, %80
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %102, %58, %32
  br label %110

110:                                              ; preds = %109, %1
  ret void
}

declare dso_local i32 @XQueryPointer(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @video_driver_has_focus(...) #1

declare dso_local i32 @video_driver_get_viewport_info(%struct.video_viewport*) #1

declare dso_local i32 @XWarpPointer(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XSync(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
