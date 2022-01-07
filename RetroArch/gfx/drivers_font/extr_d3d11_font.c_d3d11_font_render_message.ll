; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_d3d11_font.c_d3d11_font_render_message.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_d3d11_font.c_d3d11_font_render_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { float (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, i8*, float, i32, float, float, i32)* @d3d11_font_render_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d11_font_render_message(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i8* %2, float %3, i32 %4, float %5, float %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %10, align 8
  store i8* %2, i8** %11, align 8
  store float %3, float* %12, align 4
  store i32 %4, i32* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load i8*, i8** %11, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %8
  br label %117

29:                                               ; preds = %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load float (i32)*, float (i32)** %33, align 8
  %35 = icmp ne float (i32)* %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = load float, float* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load float, float* %14, align 4
  %45 = load float, float* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @d3d11_font_render_line(%struct.TYPE_9__* %37, %struct.TYPE_10__* %38, i8* %39, i32 %41, float %42, i32 %43, float %44, float %45, i32 %46)
  br label %117

48:                                               ; preds = %29
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load float (i32)*, float (i32)** %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call float %53(i32 %56)
  %58 = load float, float* %12, align 4
  %59 = fmul float %57, %58
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load float, float* %61, align 4
  %63 = fdiv float %59, %62
  store float %63, float* %18, align 4
  br label %64

64:                                               ; preds = %116, %48
  %65 = load i8*, i8** %11, align 8
  %66 = call i8* @strchr(i8* %65, i8 signext 10)
  store i8* %66, i8** %19, align 8
  %67 = load i8*, i8** %19, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %98

69:                                               ; preds = %64
  %70 = load i8*, i8** %19, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %20, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %20, align 4
  %80 = load float, float* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load float, float* %14, align 4
  %83 = load float, float* %15, align 4
  %84 = load i32, i32* %17, align 4
  %85 = sitofp i32 %84 to float
  %86 = load float, float* %18, align 4
  %87 = fmul float %85, %86
  %88 = fsub float %83, %87
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @d3d11_font_render_line(%struct.TYPE_9__* %76, %struct.TYPE_10__* %77, i8* %78, i32 %79, float %80, i32 %81, float %82, float %88, i32 %89)
  %91 = load i32, i32* %20, align 4
  %92 = add i32 %91, 1
  %93 = load i8*, i8** %11, align 8
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %11, align 8
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %17, align 4
  br label %116

98:                                               ; preds = %64
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @strlen(i8* %99)
  store i32 %100, i32* %21, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = load i32, i32* %21, align 4
  %105 = load float, float* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load float, float* %14, align 4
  %108 = load float, float* %15, align 4
  %109 = load i32, i32* %17, align 4
  %110 = sitofp i32 %109 to float
  %111 = load float, float* %18, align 4
  %112 = fmul float %110, %111
  %113 = fsub float %108, %112
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @d3d11_font_render_line(%struct.TYPE_9__* %101, %struct.TYPE_10__* %102, i8* %103, i32 %104, float %105, i32 %106, float %107, float %113, i32 %114)
  br label %117

116:                                              ; preds = %69
  br label %64

117:                                              ; preds = %28, %36, %98
  ret void
}

declare dso_local i32 @d3d11_font_render_line(%struct.TYPE_9__*, %struct.TYPE_10__*, i8*, i32, float, i32, float, float, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
