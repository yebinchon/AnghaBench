; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_subtitle_thread.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_subtitle_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { double, %struct.TYPE_12__, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, double }

@AV_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@AV_TIME_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @subtitle_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subtitle_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %4, align 8
  br label %10

10:                                               ; preds = %87, %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = call %struct.TYPE_10__* @frame_queue_peek_writable(i32* %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %89

16:                                               ; preds = %10
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = call i32 @decoder_decode_frame(%struct.TYPE_11__* %18, i32* null, %struct.TYPE_12__* %20)
  store i32 %21, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %88

24:                                               ; preds = %16
  store double 0.000000e+00, double* %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %79

27:                                               ; preds = %24
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = load double, double* @AV_NOPTS_VALUE, align 8
  %39 = fcmp une double %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = load i64, i64* @AV_TIME_BASE, align 8
  %46 = sitofp i64 %45 to double
  %47 = fdiv double %44, %46
  store double %47, double* %7, align 8
  br label %48

48:                                               ; preds = %40, %33
  %49 = load double, double* %7, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store double %49, double* %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = call i32 @frame_queue_push(i32* %77)
  br label %87

79:                                               ; preds = %27, %24
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = call i32 @avsubtitle_free(%struct.TYPE_12__* %84)
  br label %86

86:                                               ; preds = %82, %79
  br label %87

87:                                               ; preds = %86, %48
  br label %10

88:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %15
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_10__* @frame_queue_peek_writable(i32*) #1

declare dso_local i32 @decoder_decode_frame(%struct.TYPE_11__*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @frame_queue_push(i32*) #1

declare dso_local i32 @avsubtitle_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
