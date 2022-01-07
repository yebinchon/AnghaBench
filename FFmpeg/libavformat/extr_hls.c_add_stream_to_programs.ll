; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_add_stream_to_programs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_add_stream_to_programs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.variant** }
%struct.variant = type { i32, i32, %struct.playlist** }
%struct.playlist = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"variant_bitrate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.playlist*, %struct.TYPE_8__*)* @add_stream_to_programs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_stream_to_programs(%struct.TYPE_9__* %0, %struct.playlist* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.playlist*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.variant*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.playlist* %1, %struct.playlist** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %7, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %72, %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.variant**, %struct.variant*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.variant*, %struct.variant** %24, i64 %26
  %28 = load %struct.variant*, %struct.variant** %27, align 8
  store %struct.variant* %28, %struct.variant** %11, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %68, %21
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.variant*, %struct.variant** %11, align 8
  %32 = getelementptr inbounds %struct.variant, %struct.variant* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %29
  %36 = load %struct.variant*, %struct.variant** %11, align 8
  %37 = getelementptr inbounds %struct.variant, %struct.variant* %36, i32 0, i32 2
  %38 = load %struct.playlist**, %struct.playlist*** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.playlist*, %struct.playlist** %38, i64 %40
  %42 = load %struct.playlist*, %struct.playlist** %41, align 8
  %43 = load %struct.playlist*, %struct.playlist** %5, align 8
  %44 = icmp ne %struct.playlist* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %68

46:                                               ; preds = %35
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @av_program_add_stream_index(%struct.TYPE_9__* %47, i32 %48, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.variant*, %struct.variant** %11, align 8
  %57 = getelementptr inbounds %struct.variant, %struct.variant* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  br label %67

59:                                               ; preds = %46
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.variant*, %struct.variant** %11, align 8
  %62 = getelementptr inbounds %struct.variant, %struct.variant* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 -1, i32* %10, align 4
  br label %66

66:                                               ; preds = %65, %59
  br label %67

67:                                               ; preds = %66, %55
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %29

71:                                               ; preds = %29
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %15

75:                                               ; preds = %15
  %76 = load i32, i32* %10, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @av_dict_set_int(i32* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %81, i32 0)
  br label %83

83:                                               ; preds = %78, %75
  ret void
}

declare dso_local i32 @av_program_add_stream_index(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @av_dict_set_int(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
