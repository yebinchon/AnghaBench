; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_jack.c_find_buffersize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_jack.c_find_buffersize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32 }

@JackPlaybackLatency = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"[JACK]: Jack latency is %d frames.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"[JACK]: Minimum buffer size is %d frames.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32, i32)* @find_buffersize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_buffersize(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = mul i32 %13, %14
  %16 = udiv i32 %15, 1000
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %38, %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @JackPlaybackLatency, align 4
  %29 = call i32 @jack_port_get_latency_range(i32 %27, i32 %28, %struct.TYPE_6__* %7)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %34, %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %17

41:                                               ; preds = %17
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @jack_get_buffer_size(i32 %49)
  %51 = mul nsw i32 %50, 2
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %57, %41
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  ret i64 %62
}

declare dso_local i32 @jack_port_get_latency_range(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

declare dso_local i32 @jack_get_buffer_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
