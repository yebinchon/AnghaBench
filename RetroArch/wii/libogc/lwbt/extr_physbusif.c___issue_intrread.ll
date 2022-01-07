; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_physbusif.c___issue_intrread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_physbusif.c___issue_intrread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.usbtxbuf = type { i8*, i32 }

@__usbdev = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@IPC_OK = common dso_local global i32 0, align 4
@ctrlbufs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@__readintrdataCB = common dso_local global i32 0, align 4
@IPC_ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__issue_intrread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__issue_intrread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.usbtxbuf*, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @__usbdev, i32 0, i32 0), align 4
  %7 = icmp ne i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @IPC_OK, align 4
  store i32 %9, i32* %1, align 4
  br label %53

10:                                               ; preds = %0
  %11 = call i64 @btmemb_alloc(%struct.TYPE_4__* @ctrlbufs)
  %12 = inttoptr i64 %11 to %struct.usbtxbuf*
  store %struct.usbtxbuf* %12, %struct.usbtxbuf** %5, align 8
  %13 = load %struct.usbtxbuf*, %struct.usbtxbuf** %5, align 8
  %14 = icmp ne %struct.usbtxbuf* %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = load %struct.usbtxbuf*, %struct.usbtxbuf** %5, align 8
  %17 = ptrtoint %struct.usbtxbuf* %16 to i64
  %18 = add i64 %17, 16
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @ROUNDUP32(i32* %20)
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.usbtxbuf*, %struct.usbtxbuf** %5, align 8
  %24 = getelementptr inbounds %struct.usbtxbuf, %struct.usbtxbuf* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctrlbufs, i32 0, i32 0), align 8
  %26 = load %struct.usbtxbuf*, %struct.usbtxbuf** %5, align 8
  %27 = getelementptr inbounds %struct.usbtxbuf, %struct.usbtxbuf* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.usbtxbuf*, %struct.usbtxbuf** %5, align 8
  %31 = ptrtoint %struct.usbtxbuf* %30 to i64
  %32 = sub nsw i64 %29, %31
  %33 = sub nsw i64 %25, %32
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @ROUNDDOWN32(i64 %34)
  %36 = load %struct.usbtxbuf*, %struct.usbtxbuf** %5, align 8
  %37 = getelementptr inbounds %struct.usbtxbuf, %struct.usbtxbuf* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @__usbdev, i32 0, i32 2), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @__usbdev, i32 0, i32 1), align 4
  %40 = load %struct.usbtxbuf*, %struct.usbtxbuf** %5, align 8
  %41 = getelementptr inbounds %struct.usbtxbuf, %struct.usbtxbuf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.usbtxbuf*, %struct.usbtxbuf** %5, align 8
  %44 = getelementptr inbounds %struct.usbtxbuf, %struct.usbtxbuf* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @__readintrdataCB, align 4
  %47 = load %struct.usbtxbuf*, %struct.usbtxbuf** %5, align 8
  %48 = call i32 @USB_ReadIntrMsgAsync(i32 %38, i32 %39, i32 %42, i8* %45, i32 %46, %struct.usbtxbuf* %47)
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %10
  %50 = load i32, i32* @IPC_ENOMEM, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %15
  %52 = load i32, i32* %2, align 4
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %51, %8
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i64 @btmemb_alloc(%struct.TYPE_4__*) #1

declare dso_local i64 @ROUNDUP32(i32*) #1

declare dso_local i32 @ROUNDDOWN32(i64) #1

declare dso_local i32 @USB_ReadIntrMsgAsync(i32, i32, i32, i8*, i32, %struct.usbtxbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
