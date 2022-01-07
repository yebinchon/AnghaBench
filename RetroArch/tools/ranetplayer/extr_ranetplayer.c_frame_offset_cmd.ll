; ModuleID = '/home/carl/AnghaBench/RetroArch/tools/ranetplayer/extr_ranetplayer.c_frame_offset_cmd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tools/ranetplayer/extr_ranetplayer.c_frame_offset_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmd = common dso_local global i32 0, align 4
@payload = common dso_local global i32* null, align 8
@frame_offset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @frame_offset_cmd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @cmd, align 4
  switch i32 %4, label %25 [
    i32 132, label %5
    i32 129, label %5
    i32 130, label %5
    i32 133, label %5
    i32 131, label %5
    i32 128, label %5
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  %6 = load i32*, i32** @payload, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ntohl(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = load i32, i32* @frame_offset, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %5
  %17 = load i32, i32* @frame_offset, align 4
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @htonl(i32 %21)
  %23 = load i32*, i32** @payload, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %1, %20
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
