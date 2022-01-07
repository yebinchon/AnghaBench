; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_putc_askcmd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_putc_askcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gc_par = common dso_local global i32* null, align 8
@gc_numpars = common dso_local global i64 0, align 8
@ESnormal = common dso_local global i32 0, align 4
@gc_vt100state = common dso_local global i32 0, align 4
@gc_relative_origin = common dso_local global i32 0, align 4
@gc_wrap_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @gc_putc_askcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_putc_askcmd(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp sge i32 %4, 48
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp sle i32 %8, 57
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load i32*, i32** @gc_par, align 8
  %12 = load i64, i64* @gc_numpars, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 10, %14
  %16 = load i8, i8* %2, align 1
  %17 = zext i8 %16 to i32
  %18 = sub nsw i32 %17, 48
  %19 = add nsw i32 %15, %18
  %20 = load i32*, i32** @gc_par, align 8
  %21 = load i64, i64* @gc_numpars, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %19, i32* %22, align 4
  br label %39

23:                                               ; preds = %6, %1
  %24 = load i32, i32* @ESnormal, align 4
  store i32 %24, i32* @gc_vt100state, align 4
  %25 = load i32*, i32** @gc_par, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %38 [
    i32 6, label %28
    i32 7, label %33
  ]

28:                                               ; preds = %23
  %29 = load i8, i8* %2, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 104
  %32 = zext i1 %31 to i32
  store i32 %32, i32* @gc_relative_origin, align 4
  br label %39

33:                                               ; preds = %23
  %34 = load i8, i8* %2, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 104
  %37 = zext i1 %36 to i32
  store i32 %37, i32* @gc_wrap_mode, align 4
  br label %39

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %10, %38, %33, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
