; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_json_print_section_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_json_print_section_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64*, %struct.section**, %struct.TYPE_10__* }
%struct.section = type { i32, i8*, i64 }
%struct.TYPE_10__ = type { i8*, i32, i32 }
%struct.TYPE_11__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@SECTION_FLAG_IS_WRAPPER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@SECTION_FLAG_IS_ARRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"\22%s\22: [\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\22%s\22: {%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"{%s\00", align 1
@SECTION_ID_PACKETS_AND_FRAMES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"\22type\22: \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @json_print_section_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_print_section_header(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca %struct.section*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load %struct.section**, %struct.section*** %11, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.section*, %struct.section** %12, i64 %15
  %17 = load %struct.section*, %struct.section** %16, align 8
  store %struct.section* %17, %struct.section** %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load %struct.section**, %struct.section*** %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
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
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, 1
  %47 = getelementptr inbounds i64, i64* %42, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %39, %33
  %53 = load %struct.section*, %struct.section** %5, align 8
  %54 = getelementptr inbounds %struct.section, %struct.section* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SECTION_FLAG_IS_WRAPPER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %134

65:                                               ; preds = %52
  %66 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %67 = call i32 @av_bprint_init(%struct.TYPE_11__* %4, i32 1, i32 %66)
  %68 = load %struct.section*, %struct.section** %5, align 8
  %69 = getelementptr inbounds %struct.section, %struct.section* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %72 = call i32 @json_escape_str(%struct.TYPE_11__* %4, i8* %70, %struct.TYPE_9__* %71)
  %73 = call i32 (...) @JSON_INDENT()
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.section*, %struct.section** %5, align 8
  %79 = getelementptr inbounds %struct.section, %struct.section* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SECTION_FLAG_IS_ARRAY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  br label %132

88:                                               ; preds = %65
  %89 = load %struct.section*, %struct.section** %6, align 8
  %90 = icmp ne %struct.section* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %88
  %92 = load %struct.section*, %struct.section** %6, align 8
  %93 = getelementptr inbounds %struct.section, %struct.section* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SECTION_FLAG_IS_ARRAY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %100, i8* %103)
  br label %131

105:                                              ; preds = %91, %88
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %108)
  %110 = load %struct.section*, %struct.section** %6, align 8
  %111 = icmp ne %struct.section* %110, null
  br i1 %111, label %112, label %130

112:                                              ; preds = %105
  %113 = load %struct.section*, %struct.section** %6, align 8
  %114 = getelementptr inbounds %struct.section, %struct.section* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SECTION_ID_PACKETS_AND_FRAMES, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = call i32 (...) @JSON_INDENT()
  br label %125

125:                                              ; preds = %123, %118
  %126 = load %struct.section*, %struct.section** %5, align 8
  %127 = getelementptr inbounds %struct.section, %struct.section* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %125, %112, %105
  br label %131

131:                                              ; preds = %130, %98
  br label %132

132:                                              ; preds = %131, %84
  %133 = call i32 @av_bprint_finalize(%struct.TYPE_11__* %4, i32* null)
  br label %134

134:                                              ; preds = %132, %59
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @av_bprint_init(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @json_escape_str(%struct.TYPE_11__*, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @JSON_INDENT(...) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
