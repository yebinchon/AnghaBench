; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_json_print_int.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_json_print_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64*, %struct.section**, %struct.TYPE_6__* }
%struct.section = type { i64 }
%struct.TYPE_6__ = type { i8*, i32 }

@SECTION_ID_PACKETS_AND_FRAMES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"\22%s\22: %lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i64)* @json_print_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_print_int(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.section*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load %struct.section**, %struct.section*** %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.section*, %struct.section** %20, i64 %25
  %27 = load %struct.section*, %struct.section** %26, align 8
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi %struct.section* [ %27, %17 ], [ null, %28 ]
  store %struct.section* %30, %struct.section** %8, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %33, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %29
  %42 = load %struct.section*, %struct.section** %8, align 8
  %43 = icmp ne %struct.section* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.section*, %struct.section** %8, align 8
  %46 = getelementptr inbounds %struct.section, %struct.section* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SECTION_ID_PACKETS_AND_FRAMES, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44, %29
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %50, %44, %41
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = call i32 (...) @JSON_INDENT()
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %64 = call i32 @av_bprint_init(i32* %9, i32 1, i32 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = call i8* @json_escape_str(i32* %9, i8* %65, %struct.TYPE_5__* %66)
  %68 = load i64, i64* %6, align 8
  %69 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %67, i64 %68)
  %70 = call i32 @av_bprint_finalize(i32* %9, i32* null)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @JSON_INDENT(...) #1

declare dso_local i32 @av_bprint_init(i32*, i32, i32) #1

declare dso_local i8* @json_escape_str(i32*, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @av_bprint_finalize(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
