; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/winfonts/extr_winfnt.c_fnt_font_load.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/winfonts/extr_winfnt.c_fnt_font_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i64, i64, i64 }

@winfnt_header_fields = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"  not a Windows FNT file\0A\00", align 1
@Unknown_File_Format = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"[can't handle vector FNT fonts]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @fnt_font_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnt_font_load(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @FT_STREAM_SEEK(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @winfnt_header_fields, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = call i64 @FT_STREAM_READ_FIELDS(i32 %17, %struct.TYPE_5__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  br label %100

22:                                               ; preds = %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 512
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 768
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @Unknown_File_Format, align 4
  %35 = call i32 @FT_THROW(i32 %34)
  store i32 %35, i32* %5, align 4
  br label %100

36:                                               ; preds = %27, %22
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 768
  %42 = zext i1 %41 to i32
  %43 = call i64 @FT_BOOL(i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 148, i32 118
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %36
  %54 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @Unknown_File_Format, align 4
  %56 = call i32 @FT_THROW(i32 %55)
  store i32 %56, i32* %5, align 4
  br label %100

57:                                               ; preds = %36
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 512
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 7
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %62, %57
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @Unknown_File_Format, align 4
  %82 = call i32 @FT_THROW(i32 %81)
  store i32 %82, i32* %5, align 4
  br label %100

83:                                               ; preds = %73
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @FT_STREAM_SEEK(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @FT_FRAME_EXTRACT(i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89, %83
  br label %100

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %98, %79, %53, %32, %21
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @FT_STREAM_SEEK(i32) #1

declare dso_local i64 @FT_STREAM_READ_FIELDS(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @FT_TRACE2(i8*) #1

declare dso_local i32 @FT_THROW(i32) #1

declare dso_local i64 @FT_BOOL(i32) #1

declare dso_local i64 @FT_FRAME_EXTRACT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
