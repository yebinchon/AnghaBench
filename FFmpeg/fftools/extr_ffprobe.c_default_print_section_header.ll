; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_default_print_section_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_default_print_section_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_8__*, %struct.section**, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.section = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, i64 }

@SECTION_FLAG_IS_WRAPPER = common dso_local global i32 0, align 4
@SECTION_FLAG_IS_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s%s:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @default_print_section_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_print_section_header(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca %struct.section*, align 8
  %6 = alloca %struct.section*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.section**, %struct.section*** %11, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.section*, %struct.section** %12, i64 %15
  %17 = load %struct.section*, %struct.section** %16, align 8
  store %struct.section* %17, %struct.section** %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load %struct.section**, %struct.section*** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds %struct.section*, %struct.section** %25, i64 %29
  %31 = load %struct.section*, %struct.section** %30, align 8
  br label %33

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %22
  %34 = phi %struct.section* [ %31, %22 ], [ null, %32 ]
  store %struct.section* %34, %struct.section** %6, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %40
  %42 = call i32 @av_bprint_clear(%struct.TYPE_8__* %41)
  %43 = load %struct.section*, %struct.section** %6, align 8
  %44 = icmp ne %struct.section* %43, null
  br i1 %44, label %45, label %89

45:                                               ; preds = %33
  %46 = load %struct.section*, %struct.section** %6, align 8
  %47 = getelementptr inbounds %struct.section, %struct.section* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SECTION_FLAG_IS_WRAPPER, align 4
  %50 = load i32, i32* @SECTION_FLAG_IS_ARRAY, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %89, label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 1, i32* %61, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %80 = load %struct.section*, %struct.section** %5, align 8
  %81 = getelementptr inbounds %struct.section, %struct.section* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.section*, %struct.section** %5, align 8
  %84 = getelementptr inbounds %struct.section, %struct.section* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @av_x_if_null(i32 %82, i32 %85)
  %87 = call i8* @upcase_string(i8* %79, i32 32, i32 %86)
  %88 = call i32 @av_bprintf(%struct.TYPE_8__* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %78, i8* %87)
  br label %89

89:                                               ; preds = %54, %45, %33
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94, %89
  br label %121

105:                                              ; preds = %94
  %106 = load %struct.section*, %struct.section** %5, align 8
  %107 = getelementptr inbounds %struct.section, %struct.section* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SECTION_FLAG_IS_WRAPPER, align 4
  %110 = load i32, i32* @SECTION_FLAG_IS_ARRAY, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %105
  %115 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %116 = load %struct.section*, %struct.section** %5, align 8
  %117 = getelementptr inbounds %struct.section, %struct.section* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @upcase_string(i8* %115, i32 32, i32 %118)
  %120 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %104, %114, %105
  ret void
}

declare dso_local i32 @av_bprint_clear(%struct.TYPE_8__*) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_8__*, i8*, i32, i8*) #1

declare dso_local i8* @upcase_string(i8*, i32, i32) #1

declare dso_local i32 @av_x_if_null(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
