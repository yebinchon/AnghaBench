; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_omap_gfx.c_omap_gfx_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_omap_gfx.c_omap_gfx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"[video_omap]: mode set (resolution changed by core)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"[video_omap]: mode set failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, i32*)* @omap_gfx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_gfx_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %18, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %8
  store i32 1, i32* %9, align 4
  br label %106

24:                                               ; preds = %8
  %25 = load i32, i32* %12, align 4
  %26 = icmp ugt i32 %25, 4
  br i1 %26, label %27, label %60

27:                                               ; preds = %24
  %28 = load i32, i32* %13, align 4
  %29 = icmp ugt i32 %28, 4
  br i1 %29, label %30, label %60

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %36, %30
  %43 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i64 @omapfb_set_mode(i32 %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %106

53:                                               ; preds = %42
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %36, %27, %24
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @omapfb_prepare(i32 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @omapfb_blit_frame(i32 %67, i8* %68, i32 %71, i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %60
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @omapfb_blit_frame(i32 %82, i8* %86, i32 %91, i32 %96)
  br label %98

98:                                               ; preds = %79, %60
  %99 = load i8*, i8** %16, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = call i32 @omap_render_msg(%struct.TYPE_7__* %102, i8* %103)
  br label %105

105:                                              ; preds = %101, %98
  store i32 1, i32* %9, align 4
  br label %106

106:                                              ; preds = %105, %51, %23
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i32 @RARCH_LOG(i8*) #1

declare dso_local i64 @omapfb_set_mode(i32, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @omapfb_prepare(i32) #1

declare dso_local i32 @omapfb_blit_frame(i32, i8*, i32, i32) #1

declare dso_local i32 @omap_render_msg(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
