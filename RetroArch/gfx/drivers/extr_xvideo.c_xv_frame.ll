; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_xvideo.c_xv_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_xvideo.c_xv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__, i32, i32, i32, i32, i32 (%struct.TYPE_8__*, i8*, i32, i32, i32)* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }

@g_x11_dpy = common dso_local global i32 0, align 4
@g_x11_win = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, i32*)* @xv_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xv_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_9__, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %19, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %8
  store i32 1, i32* %9, align 4
  br label %113

25:                                               ; preds = %8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @xv_check_resize(%struct.TYPE_8__* %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %113

32:                                               ; preds = %25
  %33 = load i32, i32* @g_x11_dpy, align 4
  %34 = load i32, i32* @g_x11_win, align 4
  %35 = call i32 @XGetWindowAttributes(i32 %33, i32 %34, %struct.TYPE_9__* %18)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 5
  %38 = load i32 (%struct.TYPE_8__*, i8*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i8*, i32, i32, i32)** %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i32 %38(%struct.TYPE_8__* %39, i8* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @xv_calc_out_rect(i32 %47, %struct.TYPE_10__* %49, i32 %51, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 5
  store i32 %56, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %32
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = load i32, i32* %12, align 4
  %71 = shl i32 %70, 1
  %72 = load i32, i32* %13, align 4
  %73 = shl i32 %72, 1
  %74 = call i32 @xv_render_msg(%struct.TYPE_8__* %68, i8* %69, i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %67, %32
  %76 = load i32, i32* @g_x11_dpy, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @g_x11_win, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = shl i32 %87, 1
  %89 = load i32, i32* %13, align 4
  %90 = shl i32 %89, 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @XvShmPutImage(i32 %76, i32 %79, i32 %80, i32 %83, i32 %86, i32 0, i32 0, i32 %88, i32 %90, i32 %94, i32 %98, i32 %102, i32 %106, i32 1)
  %108 = load i32, i32* @g_x11_dpy, align 4
  %109 = load i32, i32* @False, align 4
  %110 = call i32 @XSync(i32 %108, i32 %109)
  %111 = load i32*, i32** %17, align 8
  %112 = call i32 @x11_update_title(i32* null, i32* %111)
  store i32 1, i32* %9, align 4
  br label %113

113:                                              ; preds = %75, %31, %24
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i32 @xv_check_resize(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @XGetWindowAttributes(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @xv_calc_out_rect(i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @xv_render_msg(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @XvShmPutImage(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XSync(i32, i32) #1

declare dso_local i32 @x11_update_title(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
