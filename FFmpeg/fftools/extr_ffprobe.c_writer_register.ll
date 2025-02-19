; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_writer_register.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_writer_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@writer_register.next_registered_writer_idx = internal global i32 0, align 4
@MAX_REGISTERED_WRITERS_NB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@registered_writers = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @writer_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writer_register(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32, i32* @writer_register.next_registered_writer_idx, align 4
  %5 = load i32, i32* @MAX_REGISTERED_WRITERS_NB, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = call i32 @AVERROR(i32 %8)
  store i32 %9, i32* %2, align 4
  br label %17

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32**, i32*** @registered_writers, align 8
  %13 = load i32, i32* @writer_register.next_registered_writer_idx, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @writer_register.next_registered_writer_idx, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i32*, i32** %12, i64 %15
  store i32* %11, i32** %16, align 8
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %10, %7
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
