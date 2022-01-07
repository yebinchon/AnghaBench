; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_flat_print_section_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_flat_print_section_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32*, %struct.section**, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.section = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SECTION_FLAG_IS_ARRAY = common dso_local global i32 0, align 4
@SECTION_FLAG_IS_WRAPPER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@SECTION_ID_PACKETS_AND_FRAMES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%d%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @flat_print_section_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flat_print_section_header(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca %struct.section*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i64 %16
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %4, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = load %struct.section**, %struct.section*** %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.section*, %struct.section** %20, i64 %23
  %25 = load %struct.section*, %struct.section** %24, align 8
  store %struct.section* %25, %struct.section** %5, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = load %struct.section**, %struct.section*** %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds %struct.section*, %struct.section** %33, i64 %37
  %39 = load %struct.section*, %struct.section** %38, align 8
  br label %41

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %40, %30
  %42 = phi %struct.section* [ %39, %30 ], [ null, %40 ]
  store %struct.section* %42, %struct.section** %6, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = call i32 @av_bprint_clear(%struct.TYPE_9__* %43)
  %45 = load %struct.section*, %struct.section** %6, align 8
  %46 = icmp ne %struct.section* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %125

48:                                               ; preds = %41
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @av_bprintf(%struct.TYPE_9__* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %48
  %66 = load %struct.section*, %struct.section** %5, align 8
  %67 = getelementptr inbounds %struct.section, %struct.section* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SECTION_FLAG_IS_ARRAY, align 4
  %70 = load i32, i32* @SECTION_FLAG_IS_WRAPPER, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %125, label %74

74:                                               ; preds = %65, %48
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load %struct.section**, %struct.section*** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.section*, %struct.section** %78, i64 %81
  %83 = load %struct.section*, %struct.section** %82, align 8
  %84 = getelementptr inbounds %struct.section, %struct.section* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @av_bprintf(%struct.TYPE_9__* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load %struct.section*, %struct.section** %6, align 8
  %91 = getelementptr inbounds %struct.section, %struct.section* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SECTION_FLAG_IS_ARRAY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %74
  %97 = load %struct.section*, %struct.section** %6, align 8
  %98 = getelementptr inbounds %struct.section, %struct.section* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SECTION_ID_PACKETS_AND_FRAMES, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  br label %116

106:                                              ; preds = %96
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub i64 %112, 1
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  %115 = load i32, i32* %114, align 4
  br label %116

116:                                              ; preds = %106, %102
  %117 = phi i32 [ %105, %102 ], [ %115, %106 ]
  store i32 %117, i32* %7, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @av_bprintf(%struct.TYPE_9__* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %116, %74
  br label %125

125:                                              ; preds = %47, %124, %65
  ret void
}

declare dso_local i32 @av_bprint_clear(%struct.TYPE_9__*) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_9__*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
