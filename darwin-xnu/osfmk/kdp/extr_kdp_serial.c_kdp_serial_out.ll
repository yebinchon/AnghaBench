; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp_serial.c_kdp_serial_out.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp_serial.c_kdp_serial_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SKDP_START_CHAR = common dso_local global i8 0, align 1
@SKDP_END_CHAR = common dso_local global i8 0, align 1
@SKDP_ESC_CHAR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, void (i8)*)* @kdp_serial_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kdp_serial_out(i8 zeroext %0, void (i8)* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca void (i8)*, align 8
  store i8 %0, i8* %3, align 1
  store void (i8)* %1, void (i8)** %4, align 8
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @SKDP_START_CHAR, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @SKDP_END_CHAR, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @SKDP_ESC_CHAR, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i8, i8* %3, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %33

26:                                               ; preds = %22, %16, %10, %2
  %27 = load void (i8)*, void (i8)** %4, align 8
  %28 = load i8, i8* @SKDP_ESC_CHAR, align 1
  call void %27(i8 signext %28)
  %29 = load i8, i8* %3, align 1
  %30 = zext i8 %29 to i32
  %31 = xor i32 %30, -1
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %3, align 1
  br label %33

33:                                               ; preds = %26, %22
  %34 = load void (i8)*, void (i8)** %4, align 8
  %35 = load i8, i8* %3, align 1
  call void %34(i8 signext %35)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
