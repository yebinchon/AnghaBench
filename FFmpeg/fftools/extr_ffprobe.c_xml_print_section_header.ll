; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_xml_print_section_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_xml_print_section_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64*, %struct.section**, %struct.TYPE_4__* }
%struct.section = type { i32, i8* }
%struct.TYPE_4__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [178 x i8] c" xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:ffprobe='http://www.ffmpeg.org/schema/ffprobe' xsi:schemaLocation='http://www.ffmpeg.org/schema/ffprobe ffprobe.xsd'\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"<?xml version=\221.0\22 encoding=\22UTF-8\22?>\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"<%sffprobe%s>\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ffprobe:\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@SECTION_FLAG_HAS_VARIABLE_FIELDS = common dso_local global i32 0, align 4
@SECTION_FLAG_IS_WRAPPER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SECTION_FLAG_IS_ARRAY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"<%s>\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"<%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @xml_print_section_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xml_print_section_header(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load %struct.section**, %struct.section*** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.section*, %struct.section** %12, i64 %15
  %17 = load %struct.section*, %struct.section** %16, align 8
  store %struct.section* %17, %struct.section** %4, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load %struct.section**, %struct.section*** %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds %struct.section*, %struct.section** %25, i64 %29
  %31 = load %struct.section*, %struct.section** %30, align 8
  br label %33

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %22
  %34 = phi %struct.section* [ %31, %22 ], [ null, %32 ]
  store %struct.section* %34, %struct.section** %5, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  store i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i8*, i8** %6, align 8
  br label %54

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i8* [ %52, %51 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %53 ]
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %55)
  br label %132

57:                                               ; preds = %33
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.section*, %struct.section** %4, align 8
  %68 = getelementptr inbounds %struct.section, %struct.section* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SECTION_FLAG_HAS_VARIABLE_FIELDS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %132

78:                                               ; preds = %66
  %79 = load %struct.section*, %struct.section** %5, align 8
  %80 = icmp ne %struct.section* %79, null
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  %82 = load %struct.section*, %struct.section** %5, align 8
  %83 = getelementptr inbounds %struct.section, %struct.section* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SECTION_FLAG_IS_WRAPPER, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %81
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %88
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %99, 1
  %101 = getelementptr inbounds i64, i64* %96, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %93, %88, %81, %78
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.section*, %struct.section** %4, align 8
  %112 = getelementptr inbounds %struct.section, %struct.section* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SECTION_FLAG_IS_ARRAY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %106
  %118 = call i32 (...) @XML_INDENT()
  %119 = load %struct.section*, %struct.section** %4, align 8
  %120 = getelementptr inbounds %struct.section, %struct.section* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %121)
  br label %131

123:                                              ; preds = %106
  %124 = call i32 (...) @XML_INDENT()
  %125 = load %struct.section*, %struct.section** %4, align 8
  %126 = getelementptr inbounds %struct.section, %struct.section* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %127)
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  br label %131

131:                                              ; preds = %123, %117
  br label %132

132:                                              ; preds = %54, %131, %73
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @XML_INDENT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
