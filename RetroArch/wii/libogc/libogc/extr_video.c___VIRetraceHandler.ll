; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___VIRetraceHandler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___VIRetraceHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_viReg = common dso_local global i32* null, align 8
@retraceCount = common dso_local global i32 0, align 4
@flushFlag = common dso_local global i64 0, align 8
@video_queue = common dso_local global i32 0, align 4
@VI_EURGB60 = common dso_local global i64 0, align 8
@oldDtvStatus = common dso_local global i64 0, align 8
@oldTvStatus = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @__VIRetraceHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__VIRetraceHandler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32*, i32** @_viReg, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 24
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 32768
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, -32769
  %18 = load i32*, i32** @_viReg, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 24
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %15, %2
  %23 = load i32*, i32** @_viReg, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 26
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 32768
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, -32769
  %32 = load i32*, i32** @_viReg, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 26
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, 2
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %22
  %37 = load i32*, i32** @_viReg, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 28
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 32768
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, -32769
  %46 = load i32*, i32** @_viReg, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 28
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %43, %36
  %51 = load i32*, i32** @_viReg, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 30
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 32768
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, -32769
  %60 = load i32*, i32** @_viReg, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 30
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, 8
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %57, %50
  %65 = load i32*, i32** @_viReg, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 30
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71, %64
  %76 = call i32 @__VIGetCurrentPosition(i32* %7, i32* %8)
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @positionCB(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %71
  %81 = load i32, i32* @retraceCount, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @retraceCount, align 4
  br i1 true, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @retraceCount, align 4
  %85 = call i32 @preRetraceCB(i32 %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i64, i64* @flushFlag, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = call i64 (...) @__VISetRegs()
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  store i64 0, i64* @flushFlag, align 8
  %93 = call i32 (...) @SI_RefreshSamplingRate()
  br label %94

94:                                               ; preds = %92, %89
  br label %95

95:                                               ; preds = %94, %86
  br i1 true, label %96, label %99

96:                                               ; preds = %95
  %97 = load i32, i32* @retraceCount, align 4
  %98 = call i32 @postRetraceCB(i32 %97)
  br label %99

99:                                               ; preds = %96, %95
  %100 = load i32, i32* @video_queue, align 4
  %101 = call i32 @LWP_ThreadBroadcast(i32 %100)
  ret void
}

declare dso_local i32 @__VIGetCurrentPosition(i32*, i32*) #1

declare dso_local i32 @positionCB(i32, i32) #1

declare dso_local i32 @preRetraceCB(i32) #1

declare dso_local i64 @__VISetRegs(...) #1

declare dso_local i32 @SI_RefreshSamplingRate(...) #1

declare dso_local i32 @postRetraceCB(i32) #1

declare dso_local i32 @LWP_ThreadBroadcast(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
