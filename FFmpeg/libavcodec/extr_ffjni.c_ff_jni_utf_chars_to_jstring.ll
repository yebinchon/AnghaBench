; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffjni.c_ff_jni_utf_chars_to_jstring.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffjni.c_ff_jni_utf_chars_to_jstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__**)*, i64 (%struct.TYPE_6__**)*, i32* (%struct.TYPE_6__**, i8*)* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"NewStringUTF() threw an exception\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ff_jni_utf_chars_to_jstring(%struct.TYPE_6__** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load i32* (%struct.TYPE_6__**, i8*)*, i32* (%struct.TYPE_6__**, i8*)** %11, align 8
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32* %12(%struct.TYPE_6__** %13, i8* %14)
  store i32* %15, i32** %8, align 8
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64 (%struct.TYPE_6__**)*, i64 (%struct.TYPE_6__**)** %18, align 8
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %21 = call i64 %19(%struct.TYPE_6__** %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_6__**)*, i32 (%struct.TYPE_6__**)** %26, align 8
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %29 = call i32 %27(%struct.TYPE_6__** %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = call i32 @av_log(i8* %30, i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %35

33:                                               ; preds = %3
  %34 = load i32*, i32** %8, align 8
  store i32* %34, i32** %4, align 8
  br label %35

35:                                               ; preds = %33, %23
  %36 = load i32*, i32** %4, align 8
  ret i32* %36
}

declare dso_local i32 @av_log(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
