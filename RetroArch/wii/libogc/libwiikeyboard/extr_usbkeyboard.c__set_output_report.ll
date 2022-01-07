; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_usbkeyboard.c__set_output_report.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_usbkeyboard.c__set_output_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@_kbd = common dso_local global %struct.TYPE_2__* null, align 8
@hId = common dso_local global i32 0, align 4
@USB_REQTYPE_INTERFACE_SET = common dso_local global i32 0, align 4
@USB_REQ_SETREPORT = common dso_local global i32 0, align 4
@USB_REPTYPE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @_set_output_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_set_output_report() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_kbd, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_kbd, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %0
  store i32 -1, i32* %1, align 4
  br label %39

12:                                               ; preds = %6
  %13 = load i32, i32* @hId, align 4
  %14 = call i32* @iosAlloc(i32 %13, i32 1)
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 -1, i32* %1, align 4
  br label %39

18:                                               ; preds = %12
  %19 = load i32*, i32** %2, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_kbd, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = call i32 @memcpy(i32* %19, i32* %21, i32 1)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_kbd, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @USB_REQTYPE_INTERFACE_SET, align 4
  %27 = load i32, i32* @USB_REQ_SETREPORT, align 4
  %28 = load i32, i32* @USB_REPTYPE_OUTPUT, align 4
  %29 = shl i32 %28, 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_kbd, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @USB_WriteCtrlMsg(i32 %25, i32 %26, i32 %27, i32 %29, i32 %32, i32 1, i32* %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @hId, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @iosFree(i32 %35, i32* %36)
  %38 = load i32, i32* %3, align 4
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %18, %17, %11
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32* @iosAlloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @USB_WriteCtrlMsg(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @iosFree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
