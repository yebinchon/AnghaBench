; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2.c_ff_dxva2_commit_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2.c_ff_dxva2_commit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to get a buffer for %u: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Buffer for type %u was too small\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to release buffer type %u: 0x%x\0A\00", align 1
@AV_PIX_FMT_DXVA2_VLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dxva2_commit_buffer(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_14__* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @FAILED(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %25 = load i32, i32* @AV_LOG_ERROR, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i64, i64* %19, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 (%struct.TYPE_15__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_15__* %24, i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  store i32 -1, i32* %8, align 4
  br label %57

30:                                               ; preds = %7
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ule i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i8*, i8** %16, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @memcpy(i8* %35, i8* %36, i32 %37)
  store i32 0, i32* %18, align 4
  br label %44

39:                                               ; preds = %30
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 (%struct.TYPE_15__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_15__* %40, i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %18, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i64, i64* %19, align 8
  %46 = call i64 @FAILED(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i64, i64* %19, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 (%struct.TYPE_15__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_15__* %49, i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %53)
  store i32 -1, i32* %18, align 4
  br label %55

55:                                               ; preds = %48, %44
  %56 = load i32, i32* %18, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %23
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
