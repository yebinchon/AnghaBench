; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_clear_line.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_clear_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@vinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ATTR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @gc_clear_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_clear_line(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %20 [
    i32 0, label %11
    i32 1, label %15
    i32 2, label %17
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  br label %21

15:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %8, align 4
  br label %21

17:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %8, align 4
  br label %21

20:                                               ; preds = %3
  br label %35

21:                                               ; preds = %17, %15, %11
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %32, %21
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ATTR_NONE, align 4
  %31 = call i32 @gc_paint_char(i32 %28, i32 %29, i8 signext 32, i32 %30)
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %23

35:                                               ; preds = %20, %23
  ret void
}

declare dso_local i32 @gc_paint_char(i32, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
