; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_putc_getpars.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_putc_getpars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESask = common dso_local global i32 0, align 4
@gc_vt100state = common dso_local global i32 0, align 4
@ESnormal = common dso_local global i32 0, align 4
@gc_numpars = common dso_local global i32 0, align 4
@MAXPARS = common dso_local global i32 0, align 4
@gc_par = common dso_local global i32* null, align 8
@ESgotpars = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @gc_putc_getpars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_putc_getpars(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp eq i32 %4, 63
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @ESask, align 4
  store i32 %7, i32* @gc_vt100state, align 4
  br label %57

8:                                                ; preds = %1
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 91
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @ESnormal, align 4
  store i32 %13, i32* @gc_vt100state, align 4
  br label %57

14:                                               ; preds = %8
  %15 = load i8, i8* %2, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 59
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* @gc_numpars, align 4
  %20 = load i32, i32* @MAXPARS, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @gc_numpars, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @gc_numpars, align 4
  br label %57

26:                                               ; preds = %18, %14
  %27 = load i8, i8* %2, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sge i32 %28, 48
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load i8, i8* %2, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sle i32 %32, 57
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i32*, i32** @gc_par, align 8
  %36 = load i32, i32* @gc_numpars, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 10
  store i32 %40, i32* %38, align 4
  %41 = load i8, i8* %2, align 1
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %42, 48
  %44 = load i32*, i32** @gc_par, align 8
  %45 = load i32, i32* @gc_numpars, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %43
  store i32 %49, i32* %47, align 4
  br label %56

50:                                               ; preds = %30, %26
  %51 = load i32, i32* @gc_numpars, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @gc_numpars, align 4
  %53 = load i32, i32* @ESgotpars, align 4
  store i32 %53, i32* @gc_vt100state, align 4
  %54 = load i8, i8* %2, align 1
  %55 = call i32 @gc_putc_gotpars(i8 zeroext %54)
  br label %56

56:                                               ; preds = %50, %34
  br label %57

57:                                               ; preds = %6, %12, %56, %23
  ret void
}

declare dso_local i32 @gc_putc_gotpars(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
