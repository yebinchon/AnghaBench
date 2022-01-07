; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_disc_interface.c_IOSUHAX_usb_startup.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_disc_interface.c_IOSUHAX_usb_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSA_REF_USB = common dso_local global i32 0, align 4
@usbFd = common dso_local global i32 0, align 4
@fsaFdUsb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"/dev/usb01\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"/dev/usb02\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @IOSUHAX_usb_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IOSUHAX_usb_startup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @FSA_REF_USB, align 4
  %4 = call i32 @IOSUHAX_disc_io_fsa_open(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %29

7:                                                ; preds = %0
  %8 = load i32, i32* @usbFd, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load i32, i32* @fsaFdUsb, align 4
  %12 = call i32 @IOSUHAX_FSA_RawOpen(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* @usbFd)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32, i32* @fsaFdUsb, align 4
  %17 = call i32 @IOSUHAX_FSA_RawOpen(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* @usbFd)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @FSA_REF_USB, align 4
  %22 = call i32 @IOSUHAX_disc_io_fsa_close(i32 %21)
  store i32 -1, i32* @usbFd, align 4
  br label %23

23:                                               ; preds = %20, %15
  br label %24

24:                                               ; preds = %23, %10
  br label %25

25:                                               ; preds = %24, %7
  %26 = load i32, i32* @usbFd, align 4
  %27 = icmp sge i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %25, %6
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @IOSUHAX_disc_io_fsa_open(i32) #1

declare dso_local i32 @IOSUHAX_FSA_RawOpen(i32, i8*, i32*) #1

declare dso_local i32 @IOSUHAX_disc_io_fsa_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
