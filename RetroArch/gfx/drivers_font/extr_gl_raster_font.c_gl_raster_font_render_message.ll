; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl_raster_font.c_gl_raster_font_render_message.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl_raster_font.c_gl_raster_font_render_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float }
%struct.TYPE_7__ = type { i64 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*, float, float*, float, float, i32, i32*)* @gl_raster_font_render_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_raster_font_render_message(%struct.TYPE_10__* %0, i8* %1, float %2, float* %3, float %4, float %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i8* %1, i8** %10, align 8
  store float %2, float* %11, align 4
  store float* %3, float** %12, align 8
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %18, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64 (i32)*, i64 (i32)** %24, align 8
  %26 = icmp ne i64 (i32)* %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = trunc i64 %31 to i32
  %33 = load float, float* %11, align 4
  %34 = load float*, float** %12, align 8
  %35 = load float, float* %13, align 4
  %36 = load float, float* %14, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32*, i32** %16, align 8
  %39 = call i32 @gl_raster_font_render_line(%struct.TYPE_10__* %28, i8* %29, i32 %32, float %33, float* %34, float %35, float %36, i32 %37, i32* %38)
  br label %104

40:                                               ; preds = %8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64 (i32)*, i64 (i32)** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 %45(i32 %48)
  %50 = sitofp i64 %49 to float
  %51 = load float, float* %11, align 4
  %52 = fmul float %50, %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load float, float* %57, align 4
  %59 = fdiv float %52, %58
  store float %59, float* %17, align 4
  br label %60

60:                                               ; preds = %96, %40
  %61 = load i8*, i8** %10, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 10)
  store i8* %62, i8** %19, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i8*, i8** %19, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  br label %76

72:                                               ; preds = %60
  %73 = load i8*, i8** %10, align 8
  %74 = call i64 @strlen(i8* %73)
  %75 = trunc i64 %74 to i32
  br label %76

76:                                               ; preds = %72, %65
  %77 = phi i32 [ %71, %65 ], [ %75, %72 ]
  store i32 %77, i32* %20, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %20, align 4
  %81 = load float, float* %11, align 4
  %82 = load float*, float** %12, align 8
  %83 = load float, float* %13, align 4
  %84 = load float, float* %14, align 4
  %85 = load i32, i32* %18, align 4
  %86 = sitofp i32 %85 to float
  %87 = load float, float* %17, align 4
  %88 = fmul float %86, %87
  %89 = fsub float %84, %88
  %90 = load i32, i32* %15, align 4
  %91 = load i32*, i32** %16, align 8
  %92 = call i32 @gl_raster_font_render_line(%struct.TYPE_10__* %78, i8* %79, i32 %80, float %81, float* %82, float %83, float %89, i32 %90, i32* %91)
  %93 = load i8*, i8** %19, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %76
  br label %104

96:                                               ; preds = %76
  %97 = load i32, i32* %20, align 4
  %98 = add i32 %97, 1
  %99 = load i8*, i8** %10, align 8
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %10, align 8
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %18, align 4
  br label %60

104:                                              ; preds = %27, %95
  ret void
}

declare dso_local i32 @gl_raster_font_render_line(%struct.TYPE_10__*, i8*, i32, float, float*, float, float, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
