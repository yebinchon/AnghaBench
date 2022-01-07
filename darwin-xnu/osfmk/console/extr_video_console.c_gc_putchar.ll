; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_putchar.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@gc_vt100state = common dso_local global i32 0, align 4
@gc_x = common dso_local global i64 0, align 8
@vinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@gc_y = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @gc_putchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_putchar(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = icmp ne i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %60

6:                                                ; preds = %1
  %7 = load i32, i32* @gc_vt100state, align 4
  switch i32 %7, label %8 [
    i32 131, label %9
    i32 134, label %12
    i32 128, label %15
    i32 133, label %18
    i32 132, label %21
    i32 136, label %24
    i32 135, label %27
    i32 130, label %30
    i32 129, label %33
  ]

8:                                                ; preds = %6
  store i32 131, i32* @gc_vt100state, align 4
  br label %9

9:                                                ; preds = %6, %8
  %10 = load i8, i8* %2, align 1
  %11 = call i32 @gc_putc_normal(i8 signext %10)
  br label %36

12:                                               ; preds = %6
  %13 = load i8, i8* %2, align 1
  %14 = call i32 @gc_putc_esc(i8 signext %13)
  br label %36

15:                                               ; preds = %6
  %16 = load i8, i8* %2, align 1
  %17 = call i32 @gc_putc_square(i8 signext %16)
  br label %36

18:                                               ; preds = %6
  %19 = load i8, i8* %2, align 1
  %20 = call i32 @gc_putc_getpars(i8 signext %19)
  br label %36

21:                                               ; preds = %6
  %22 = load i8, i8* %2, align 1
  %23 = call i32 @gc_putc_gotpars(i8 signext %22)
  br label %36

24:                                               ; preds = %6
  %25 = load i8, i8* %2, align 1
  %26 = call i32 @gc_putc_askcmd(i8 signext %25)
  br label %36

27:                                               ; preds = %6
  %28 = load i8, i8* %2, align 1
  %29 = call i32 @gc_putc_charsizecmd(i8 signext %28)
  br label %36

30:                                               ; preds = %6
  %31 = load i8, i8* %2, align 1
  %32 = call i32 @gc_putc_charsetcmd(i32 0, i8 signext %31)
  br label %36

33:                                               ; preds = %6
  %34 = load i8, i8* %2, align 1
  %35 = call i32 @gc_putc_charsetcmd(i32 1, i8 signext %34)
  br label %36

36:                                               ; preds = %33, %30, %27, %24, %21, %18, %15, %12, %9
  %37 = load i64, i64* @gc_x, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 8
  %42 = icmp eq i64 0, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i64 0, i64* @gc_x, align 8
  br label %47

44:                                               ; preds = %40
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 8
  %46 = sub nsw i64 %45, 1
  store i64 %46, i64* @gc_x, align 8
  br label %47

47:                                               ; preds = %44, %43
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i64, i64* @gc_y, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 8
  %54 = icmp eq i64 0, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i64 0, i64* @gc_y, align 8
  br label %59

56:                                               ; preds = %52
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 8
  %58 = sub nsw i64 %57, 1
  store i64 %58, i64* @gc_y, align 8
  br label %59

59:                                               ; preds = %56, %55
  br label %60

60:                                               ; preds = %5, %59, %48
  ret void
}

declare dso_local i32 @gc_putc_normal(i8 signext) #1

declare dso_local i32 @gc_putc_esc(i8 signext) #1

declare dso_local i32 @gc_putc_square(i8 signext) #1

declare dso_local i32 @gc_putc_getpars(i8 signext) #1

declare dso_local i32 @gc_putc_gotpars(i8 signext) #1

declare dso_local i32 @gc_putc_askcmd(i8 signext) #1

declare dso_local i32 @gc_putc_charsizecmd(i8 signext) #1

declare dso_local i32 @gc_putc_charsetcmd(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
