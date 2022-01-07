; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffjni.c_ff_jni_jstring_to_utf_chars.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffjni.c_ff_jni_jstring_to_utf_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* (%struct.TYPE_9__**, i32, i32*)*, i32 (%struct.TYPE_9__**)*, i64 (%struct.TYPE_9__**)*, i32 (%struct.TYPE_9__**, i32, i8*)* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"String.getStringUTFChars() threw an exception\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"String.releaseStringUTFChars() threw an exception\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ff_jni_jstring_to_utf_chars(%struct.TYPE_9__** %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %69

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i8* (%struct.TYPE_9__**, i32, i32*)*, i8* (%struct.TYPE_9__**, i32, i32*)** %17, align 8
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i8* %18(%struct.TYPE_9__** %19, i32 %20, i32* %10)
  store i8* %21, i8** %9, align 8
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i64 (%struct.TYPE_9__**)*, i64 (%struct.TYPE_9__**)** %24, align 8
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %27 = call i64 %25(%struct.TYPE_9__** %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %14
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32 (%struct.TYPE_9__**)*, i32 (%struct.TYPE_9__**)** %32, align 8
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %35 = call i32 %33(%struct.TYPE_9__** %34)
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = call i32 @av_log(i8* %36, i32 %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %69

39:                                               ; preds = %14
  %40 = load i8*, i8** %9, align 8
  %41 = call i8* @av_strdup(i8* %40)
  store i8* %41, i8** %8, align 8
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32 (%struct.TYPE_9__**, i32, i8*)*, i32 (%struct.TYPE_9__**, i32, i8*)** %44, align 8
  %46 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 %45(%struct.TYPE_9__** %46, i32 %47, i8* %48)
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i64 (%struct.TYPE_9__**)*, i64 (%struct.TYPE_9__**)** %52, align 8
  %54 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %55 = call i64 %53(%struct.TYPE_9__** %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %39
  %58 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32 (%struct.TYPE_9__**)*, i32 (%struct.TYPE_9__**)** %60, align 8
  %62 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %63 = call i32 %61(%struct.TYPE_9__** %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = call i32 @av_log(i8* %64, i32 %65, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %69

67:                                               ; preds = %39
  %68 = load i8*, i8** %8, align 8
  store i8* %68, i8** %4, align 8
  br label %69

69:                                               ; preds = %67, %57, %29, %13
  %70 = load i8*, i8** %4, align 8
  ret i8* %70
}

declare dso_local i32 @av_log(i8*, i32, i8*) #1

declare dso_local i8* @av_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
