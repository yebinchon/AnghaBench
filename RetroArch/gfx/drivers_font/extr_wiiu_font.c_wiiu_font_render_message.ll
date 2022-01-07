; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_wiiu_font.c_wiiu_font_render_message.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_wiiu_font.c_wiiu_font_render_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i8*, float, i32, float, float, i32)* @wiiu_font_render_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiiu_font_render_message(i32* %0, %struct.TYPE_6__* %1, i8* %2, float %3, i32 %4, float %5, float %6, i32 %7) #0 {
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
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
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
  br label %113

29:                                               ; preds = %24
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load float (i32)*, float (i32)** %33, align 8
  %35 = icmp ne float (i32)* %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %29
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = load float, float* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load float, float* %14, align 4
  %45 = load float, float* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @wiiu_font_render_line(i32* %37, %struct.TYPE_6__* %38, i8* %39, i32 %41, float %42, i32 %43, float %44, float %45, i32 %46)
  br label %113

48:                                               ; preds = %29
  %49 = load float, float* %12, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load float (i32)*, float (i32)** %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call float %54(i32 %57)
  %59 = fdiv float %49, %58
  store float %59, float* %18, align 4
  br label %60

60:                                               ; preds = %112, %48
  %61 = load i8*, i8** %11, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 10)
  store i8* %62, i8** %19, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %94

65:                                               ; preds = %60
  %66 = load i8*, i8** %19, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %20, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %20, align 4
  %76 = load float, float* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load float, float* %14, align 4
  %79 = load float, float* %15, align 4
  %80 = load i32, i32* %17, align 4
  %81 = sitofp i32 %80 to float
  %82 = load float, float* %18, align 4
  %83 = fmul float %81, %82
  %84 = fsub float %79, %83
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @wiiu_font_render_line(i32* %72, %struct.TYPE_6__* %73, i8* %74, i32 %75, float %76, i32 %77, float %78, float %84, i32 %85)
  %87 = load i32, i32* %20, align 4
  %88 = add i32 %87, 1
  %89 = load i8*, i8** %11, align 8
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %11, align 8
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %17, align 4
  br label %112

94:                                               ; preds = %60
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @strlen(i8* %95)
  store i32 %96, i32* %21, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load i32, i32* %21, align 4
  %101 = load float, float* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load float, float* %14, align 4
  %104 = load float, float* %15, align 4
  %105 = load i32, i32* %17, align 4
  %106 = sitofp i32 %105 to float
  %107 = load float, float* %18, align 4
  %108 = fmul float %106, %107
  %109 = fsub float %104, %108
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @wiiu_font_render_line(i32* %97, %struct.TYPE_6__* %98, i8* %99, i32 %100, float %101, i32 %102, float %103, float %109, i32 %110)
  br label %113

112:                                              ; preds = %65
  br label %60

113:                                              ; preds = %28, %36, %94
  ret void
}

declare dso_local i32 @wiiu_font_render_line(i32*, %struct.TYPE_6__*, i8*, i32, float, i32, float, float, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
