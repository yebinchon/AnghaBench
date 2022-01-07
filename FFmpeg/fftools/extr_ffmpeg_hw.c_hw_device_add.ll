; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_hw.c_hw_device_add.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_hw.c_hw_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hw_devices = common dso_local global i32** null, align 8
@nb_hw_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @hw_device_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hw_device_add() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @nb_hw_devices, align 4
  %4 = add nsw i32 %3, 1
  %5 = call i32 @av_reallocp_array(i32*** @hw_devices, i32 %4, i32 8)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* @nb_hw_devices, align 4
  store i32* null, i32** %1, align 8
  br label %29

9:                                                ; preds = %0
  %10 = call i32* @av_mallocz(i32 4)
  %11 = load i32**, i32*** @hw_devices, align 8
  %12 = load i32, i32* @nb_hw_devices, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  store i32* %10, i32** %14, align 8
  %15 = load i32**, i32*** @hw_devices, align 8
  %16 = load i32, i32* @nb_hw_devices, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %9
  store i32* null, i32** %1, align 8
  br label %29

22:                                               ; preds = %9
  %23 = load i32**, i32*** @hw_devices, align 8
  %24 = load i32, i32* @nb_hw_devices, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @nb_hw_devices, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32*, i32** %23, i64 %26
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %1, align 8
  br label %29

29:                                               ; preds = %22, %21, %8
  %30 = load i32*, i32** %1, align 8
  ret i32* %30
}

declare dso_local i32 @av_reallocp_array(i32***, i32, i32) #1

declare dso_local i32* @av_mallocz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
