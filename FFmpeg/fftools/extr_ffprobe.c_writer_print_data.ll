; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_writer_print_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_writer_print_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%08x: \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*, i32)* @writer_print_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writer_print_data(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %14 = call i32 @av_bprint_init(%struct.TYPE_6__* %9, i32 0, i32 %13)
  %15 = call i32 (%struct.TYPE_6__*, i8*, ...) @av_bprintf(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %77, %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %89

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = call i32 (%struct.TYPE_6__*, i8*, ...) @av_bprintf(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @FFMIN(i32 %22, i32 16)
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %41, %19
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.TYPE_6__*, i8*, ...) @av_bprintf(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = call i32 (%struct.TYPE_6__*, i8*, ...) @av_bprintf(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %24

44:                                               ; preds = %24
  %45 = load i32, i32* %12, align 4
  %46 = mul nsw i32 2, %45
  %47 = sub nsw i32 41, %46
  %48 = load i32, i32* %12, align 4
  %49 = sdiv i32 %48, 2
  %50 = sub nsw i32 %47, %49
  %51 = call i32 @av_bprint_chars(%struct.TYPE_6__* %9, i32 32, i32 %50)
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %74, %44
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sub i32 %61, 32
  %63 = icmp ult i32 %62, 95
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  br label %71

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %64
  %72 = phi i32 [ %69, %64 ], [ 46, %70 ]
  %73 = call i32 @av_bprint_chars(%struct.TYPE_6__* %9, i32 %72, i32 1)
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %52

77:                                               ; preds = %52
  %78 = call i32 (%struct.TYPE_6__*, i8*, ...) @av_bprintf(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %16

89:                                               ; preds = %16
  %90 = load i32*, i32** %5, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @writer_print_string(i32* %90, i8* %91, i32 %93, i32 0)
  %95 = call i32 @av_bprint_finalize(%struct.TYPE_6__* %9, i32* null)
  ret void
}

declare dso_local i32 @av_bprint_init(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_bprint_chars(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @writer_print_string(i32*, i8*, i32, i32) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
