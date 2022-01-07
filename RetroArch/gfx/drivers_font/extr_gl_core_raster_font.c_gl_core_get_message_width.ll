; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl_core_raster_font.c_gl_core_get_message_width.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl_core_raster_font.c_gl_core_get_message_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.font_glyph* (i32, i8)* }
%struct.font_glyph = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, float)* @gl_core_get_message_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_core_get_message_width(i8* %0, i8* %1, i32 %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.font_glyph*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %32, align 8
  %34 = icmp ne %struct.font_glyph* (i32, i8)* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %28, %23, %4
  store i32 0, i32* %5, align 4
  br label %89

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %75, %74, %41
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ult i8* %43, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %42
  %47 = call i32 @utf8_walk(i8** %7)
  store i32 %47, i32* %13, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = trunc i32 %56 to i8
  %58 = call %struct.font_glyph* %52(i32 %55, i8 signext %57)
  store %struct.font_glyph* %58, %struct.font_glyph** %14, align 8
  %59 = load %struct.font_glyph*, %struct.font_glyph** %14, align 8
  %60 = icmp ne %struct.font_glyph* %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %46
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.font_glyph* %66(i32 %69, i8 signext 63)
  store %struct.font_glyph* %70, %struct.font_glyph** %14, align 8
  br label %71

71:                                               ; preds = %61, %46
  %72 = load %struct.font_glyph*, %struct.font_glyph** %14, align 8
  %73 = icmp ne %struct.font_glyph* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  br label %42

75:                                               ; preds = %71
  %76 = load %struct.font_glyph*, %struct.font_glyph** %14, align 8
  %77 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %12, align 4
  br label %42

83:                                               ; preds = %42
  %84 = load i32, i32* %12, align 4
  %85 = sitofp i32 %84 to float
  %86 = load float, float* %9, align 4
  %87 = fmul float %85, %86
  %88 = fptosi float %87 to i32
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %83, %40
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @utf8_walk(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
