; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_draw_text.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_draw_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { float, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i8*, float, float, float, float, i32, i32, i32, i32*)* @xmb_draw_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_draw_text(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, float %3, float %4, float %5, float %6, i32 %7, i32 %8, i32 %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %13, align 8
  store i8* %2, i8** %14, align 8
  store float %3, float* %15, align 4
  store float %4, float* %16, align 4
  store float %5, float* %17, align 4
  store float %6, float* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32* %10, i32** %22, align 8
  %26 = load float, float* %18, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = fcmp ogt float %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %11
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load float, float* %33, align 4
  store float %34, float* %18, align 4
  br label %35

35:                                               ; preds = %31, %11
  %36 = load float, float* %18, align 4
  %37 = fmul float 2.550000e+02, %36
  %38 = fptosi float %37 to i32
  store i32 %38, i32* %24, align 4
  %39 = load i32, i32* %24, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %74

42:                                               ; preds = %35
  %43 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %25, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %24, align 4
  %57 = call i32 @FONT_COLOR_RGBA(i32 %47, i32 %51, i32 %55, i32 %56)
  store i32 %57, i32* %23, align 4
  %58 = load i32*, i32** %22, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load float, float* %15, align 4
  %61 = load float, float* %16, align 4
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %23, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load float, float* %17, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @menu_display_draw_text(i32* %58, i8* %59, float %60, float %61, i32 %62, i32 %63, i32 %64, i32 %65, float %66, i32 %69, i32 %72, i32 0)
  br label %74

74:                                               ; preds = %42, %41
  ret void
}

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #1

declare dso_local i32 @FONT_COLOR_RGBA(i32, i32, i32, i32) #1

declare dso_local i32 @menu_display_draw_text(i32*, i8*, float, float, i32, i32, i32, i32, float, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
