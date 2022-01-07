; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_srtenc.c_srt_color_cb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_srtenc.c_srt_color_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"<font color=\22#%06x\22>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @srt_color_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srt_color_cb(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %31

10:                                               ; preds = %3
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, -1
  %14 = zext i1 %13 to i32
  %15 = call i32 @srt_stack_push_pop(i8* %11, float 1.020000e+02, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %31

18:                                               ; preds = %10
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 16711680
  %22 = lshr i32 %21, 16
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 65280
  %25 = or i32 %22, %24
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 255
  %28 = shl i32 %27, 16
  %29 = or i32 %25, %28
  %30 = call i32 @srt_print(i8* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %9, %18, %10
  ret void
}

declare dso_local i32 @srt_stack_push_pop(i8*, float, i32) #1

declare dso_local i32 @srt_print(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
