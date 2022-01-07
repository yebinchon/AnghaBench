; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_geckousb.c___usb_recvbuffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_geckousb.c___usb_recvbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @__usb_recvbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__usb_recvbuffer(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @EXI_DEVICE_0, align 4
  %16 = call i32 @EXI_Lock(i64 %14, i32 %15, i32* null)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i64, i64* %9, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @__usb_checkrecv(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @__usb_recvbyte(i64 %28, i8* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %40

34:                                               ; preds = %27
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %34, %23
  br label %20

40:                                               ; preds = %33, %20
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @EXI_Unlock(i64 %41)
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %9, align 8
  %46 = sub nsw i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %40, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @EXI_Lock(i64, i32, i32*) #1

declare dso_local i64 @__usb_checkrecv(i64) #1

declare dso_local i64 @__usb_recvbyte(i64, i8*) #1

declare dso_local i32 @EXI_Unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
