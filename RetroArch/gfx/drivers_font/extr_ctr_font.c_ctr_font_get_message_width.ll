; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_ctr_font.c_ctr_font_get_message_width.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_ctr_font.c_ctr_font_get_message_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.font_glyph* (i32, i8)* }
%struct.font_glyph = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, float)* @ctr_font_get_message_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_font_get_message_width(i8* %0, i8* %1, i32 %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.font_glyph*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %94

22:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %85, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %88

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %13, align 8
  %32 = call i32 @utf8_walk(i8** %13)
  store i32 %32, i32* %14, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = ptrtoint i8* %33 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ugt i32 %42, 1
  br i1 %43, label %44, label %49

44:                                               ; preds = %27
  %45 = load i32, i32* %15, align 4
  %46 = sub i32 %45, 1
  %47 = load i32, i32* %11, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %44, %27
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %53, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = trunc i32 %58 to i8
  %60 = call %struct.font_glyph* %54(i32 %57, i8 signext %59)
  store %struct.font_glyph* %60, %struct.font_glyph** %16, align 8
  %61 = load %struct.font_glyph*, %struct.font_glyph** %16, align 8
  %62 = icmp ne %struct.font_glyph* %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %49
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load %struct.font_glyph* (i32, i8)*, %struct.font_glyph* (i32, i8)** %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.font_glyph* %68(i32 %71, i8 signext 63)
  store %struct.font_glyph* %72, %struct.font_glyph** %16, align 8
  br label %73

73:                                               ; preds = %63, %49
  %74 = load %struct.font_glyph*, %struct.font_glyph** %16, align 8
  %75 = icmp ne %struct.font_glyph* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  br label %85

77:                                               ; preds = %73
  %78 = load %struct.font_glyph*, %struct.font_glyph** %16, align 8
  %79 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %77, %76
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %23

88:                                               ; preds = %23
  %89 = load i32, i32* %12, align 4
  %90 = sitofp i32 %89 to float
  %91 = load float, float* %9, align 4
  %92 = fmul float %90, %91
  %93 = fptosi float %92 to i32
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %88, %21
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @utf8_walk(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
