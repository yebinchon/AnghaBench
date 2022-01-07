; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_ffmpeg_seek.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_ffmpeg_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@AVSEEK_FLAG_BACKWARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"avformat_seek_file failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, float)* @ffmpeg_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_seek(%struct.TYPE_6__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store float %1, float* %4, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  %12 = load float, float* %4, align 4
  %13 = fpext float %12 to double
  %14 = fcmp ogt double %13, 0.000000e+00
  br i1 %14, label %15, label %40

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sitofp i64 %20 to double
  %22 = load float, float* %4, align 4
  %23 = fpext float %22 to double
  %24 = fmul double %21, %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = call i64 @ffmpeg_initial_timestamp(%struct.TYPE_6__* %25)
  %27 = sitofp i64 %26 to double
  %28 = fadd double %24, %27
  %29 = fptosi double %28 to i64
  store i64 %29, i64* %7, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @AVSEEK_FLAG_BACKWARD, align 4
  %34 = call i32 @avformat_seek_file(%struct.TYPE_7__* %30, i32 -1, i32 0, i64 %31, i64 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %15
  %38 = call i32 @hb_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %15
  br label %53

40:                                               ; preds = %2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = call i64 @ffmpeg_initial_timestamp(%struct.TYPE_6__* %41)
  store i64 %42, i64* %8, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* @AVSEEK_FLAG_BACKWARD, align 4
  %47 = call i32 @avformat_seek_file(%struct.TYPE_7__* %43, i32 -1, i32 0, i64 %44, i64 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = call i32 @hb_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %40
  br label %53

53:                                               ; preds = %52, %39
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  ret i32 1
}

declare dso_local i64 @ffmpeg_initial_timestamp(%struct.TYPE_6__*) #1

declare dso_local i32 @avformat_seek_file(%struct.TYPE_7__*, i32, i32, i64, i64, i32) #1

declare dso_local i32 @hb_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
