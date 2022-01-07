; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_add_segment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_add_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64, i8*, i8*, i8*, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Correcting the segment index after file %s: current=%d corrected=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i8*, i8*, i8*, i8*, i8*, i32)* @add_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_segment(%struct.TYPE_7__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = mul nsw i32 %31, 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @av_reallocp(%struct.TYPE_6__*** %36, i32 %42)
  store i32 %43, i32* %18, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %27
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* %18, align 4
  store i32 %50, i32* %9, align 4
  br label %127

51:                                               ; preds = %27
  br label %52

52:                                               ; preds = %51, %8
  %53 = call %struct.TYPE_6__* @av_mallocz(i32 48)
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %19, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = call i32 @AVERROR(i32 %57)
  store i32 %58, i32* %9, align 4
  br label %127

59:                                               ; preds = %52
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @av_strlcpy(i32 %62, i8* %63, i32 4)
  %65 = load i8*, i8** %12, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %59
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr i8, i8* %82, i64 %79
  store i8* %83, i8** %81, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %76, %59
  %87 = load i8*, i8** %14, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %99, i64 %104
  store %struct.TYPE_6__* %96, %struct.TYPE_6__** %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %17, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %86
  %116 = load i32, i32* @AV_LOG_WARNING, align 4
  %117 = load i8*, i8** %11, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @av_log(i32* null, i32 %116, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %117, i32 %120, i32 %121)
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %115, %86
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %126, %56, %45
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

declare dso_local i32 @av_reallocp(%struct.TYPE_6__***, i32) #1

declare dso_local %struct.TYPE_6__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
