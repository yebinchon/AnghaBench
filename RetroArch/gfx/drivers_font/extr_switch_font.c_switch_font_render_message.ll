; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_switch_font.c_switch_font_render_message.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_switch_font.c_switch_font_render_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float (i32)* }

@AVG_GLPYH_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i8*, float, i32, float, float, i32)* @switch_font_render_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_font_render_message(i32* %0, %struct.TYPE_6__* %1, i8* %2, float %3, i32 %4, float %5, float %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i8* %2, i8** %11, align 8
  store float %3, float* %12, align 4
  store i32 %4, i32* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %8
  %26 = load i8*, i8** %11, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %8
  br label %131

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load float (i32)*, float (i32)** %34, align 8
  %36 = icmp ne float (i32)* %35, null
  br i1 %36, label %56, label %37

37:                                               ; preds = %30
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* @AVG_GLPYH_LIMIT, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = load float, float* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load float, float* %14, align 4
  %52 = load float, float* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @switch_font_render_line(i32* %44, %struct.TYPE_6__* %45, i8* %46, i32 %48, float %49, i32 %50, float %51, float %52, i32 %53)
  br label %55

55:                                               ; preds = %43, %37
  br label %131

56:                                               ; preds = %30
  %57 = load float, float* %12, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load float (i32)*, float (i32)** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call float %62(i32 %65)
  %67 = fdiv float %57, %66
  store float %67, float* %18, align 4
  br label %68

68:                                               ; preds = %130, %56
  %69 = load i8*, i8** %11, align 8
  %70 = call i8* @strchr(i8* %69, i8 signext 10)
  store i8* %70, i8** %20, align 8
  %71 = load i8*, i8** %20, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %107

73:                                               ; preds = %68
  %74 = load i8*, i8** %20, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %21, align 4
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* @AVG_GLPYH_LIMIT, align 4
  %82 = icmp ule i32 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %73
  %84 = load i32*, i32** %9, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %21, align 4
  %88 = load float, float* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load float, float* %14, align 4
  %91 = load float, float* %15, align 4
  %92 = load i32, i32* %17, align 4
  %93 = sitofp i32 %92 to float
  %94 = load float, float* %18, align 4
  %95 = fmul float %93, %94
  %96 = fsub float %91, %95
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @switch_font_render_line(i32* %84, %struct.TYPE_6__* %85, i8* %86, i32 %87, float %88, i32 %89, float %90, float %96, i32 %97)
  br label %99

99:                                               ; preds = %83, %73
  %100 = load i32, i32* %21, align 4
  %101 = add i32 %100, 1
  %102 = load i8*, i8** %11, align 8
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %11, align 8
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %17, align 4
  br label %130

107:                                              ; preds = %68
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @strlen(i8* %108)
  store i32 %109, i32* %22, align 4
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* @AVG_GLPYH_LIMIT, align 4
  %112 = icmp ule i32 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %107
  %114 = load i32*, i32** %9, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* %22, align 4
  %118 = load float, float* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load float, float* %14, align 4
  %121 = load float, float* %15, align 4
  %122 = load i32, i32* %17, align 4
  %123 = sitofp i32 %122 to float
  %124 = load float, float* %18, align 4
  %125 = fmul float %123, %124
  %126 = fsub float %121, %125
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @switch_font_render_line(i32* %114, %struct.TYPE_6__* %115, i8* %116, i32 %117, float %118, i32 %119, float %120, float %126, i32 %127)
  br label %129

129:                                              ; preds = %113, %107
  br label %131

130:                                              ; preds = %99
  br label %68

131:                                              ; preds = %29, %55, %129
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @switch_font_render_line(i32*, %struct.TYPE_6__*, i8*, i32, float, i32, float, float, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
