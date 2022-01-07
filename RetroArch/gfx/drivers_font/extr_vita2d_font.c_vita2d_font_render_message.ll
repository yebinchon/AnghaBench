; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vita2d_font.c_vita2d_font_render_message.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vita2d_font.c_vita2d_font_render_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float }
%struct.TYPE_7__ = type { float (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, i8*, float, i32, float, float, i32)* @vita2d_font_render_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vita2d_font_render_message(i32* %0, %struct.TYPE_10__* %1, i8* %2, float %3, i32 %4, float %5, float %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %10, align 8
  store i8* %2, i8** %11, align 8
  store float %3, float* %12, align 4
  store i32 %4, i32* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %8
  %24 = load i8*, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %8
  br label %110

28:                                               ; preds = %23
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load float (i32)*, float (i32)** %32, align 8
  %34 = icmp ne float (i32)* %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %28
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = load float, float* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load float, float* %14, align 4
  %44 = load float, float* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @vita2d_font_render_line(i32* %36, %struct.TYPE_10__* %37, i8* %38, i32 %40, float %41, i32 %42, float %43, float %44, i32 %45)
  br label %110

47:                                               ; preds = %28
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load float (i32)*, float (i32)** %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call float %52(i32 %55)
  %57 = load float, float* %12, align 4
  %58 = fmul float %56, %57
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load float, float* %63, align 4
  %65 = fdiv float %58, %64
  store float %65, float* %17, align 4
  br label %66

66:                                               ; preds = %102, %47
  %67 = load i8*, i8** %11, align 8
  %68 = call i8* @strchr(i8* %67, i8 signext 10)
  store i8* %68, i8** %19, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i8*, i8** %19, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  br label %81

77:                                               ; preds = %66
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = sext i32 %79 to i64
  br label %81

81:                                               ; preds = %77, %71
  %82 = phi i64 [ %76, %71 ], [ %80, %77 ]
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %20, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %20, align 4
  %88 = load float, float* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load float, float* %14, align 4
  %91 = load float, float* %15, align 4
  %92 = load i32, i32* %18, align 4
  %93 = sitofp i32 %92 to float
  %94 = load float, float* %17, align 4
  %95 = fmul float %93, %94
  %96 = fsub float %91, %95
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @vita2d_font_render_line(i32* %84, %struct.TYPE_10__* %85, i8* %86, i32 %87, float %88, i32 %89, float %90, float %96, i32 %97)
  %99 = load i8*, i8** %19, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %81
  br label %110

102:                                              ; preds = %81
  %103 = load i32, i32* %20, align 4
  %104 = add i32 %103, 1
  %105 = load i8*, i8** %11, align 8
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %11, align 8
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %18, align 4
  br label %66

110:                                              ; preds = %27, %35, %101
  ret void
}

declare dso_local i32 @vita2d_font_render_line(i32*, %struct.TYPE_10__*, i8*, i32, float, i32, float, float, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
