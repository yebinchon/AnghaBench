; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_thread.h_ff_thread_once.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_thread.h_ff_thread_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, void ()*)* @ff_thread_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_thread_once(i8* %0, void ()* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca void ()*, align 8
  store i8* %0, i8** %3, align 8
  store void ()* %1, void ()** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load void ()*, void ()** %4, align 8
  call void %9()
  %10 = load i8*, i8** %3, align 8
  store i8 1, i8* %10, align 1
  br label %11

11:                                               ; preds = %8, %2
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
