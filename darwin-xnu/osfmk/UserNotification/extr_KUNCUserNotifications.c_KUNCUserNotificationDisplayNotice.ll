; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/UserNotification/extr_KUNCUserNotifications.c_KUNCUserNotificationDisplayNotice.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/UserNotification/extr_KUNCUserNotifications.c_KUNCUserNotificationDisplayNotice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACH_SEND_INVALID_DEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @KUNCUserNotificationDisplayNotice(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %20 = call i32 (...) @UNDServer_reference()
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %18, align 4
  %22 = call i64 @IP_VALID(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %8
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = load i8*, i8** %17, align 8
  %34 = call i32 @UNDDisplayNoticeSimple_rpc(i32 %25, i32 %26, i32 %27, i8* %28, i8* %29, i8* %30, i8* %31, i8* %32, i8* %33)
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %18, align 4
  %36 = call i32 @UNDServer_deallocate(i32 %35)
  %37 = load i32, i32* %19, align 4
  store i32 %37, i32* %9, align 4
  br label %40

38:                                               ; preds = %8
  %39 = load i32, i32* @MACH_SEND_INVALID_DEST, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %24
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @UNDServer_reference(...) #1

declare dso_local i64 @IP_VALID(i32) #1

declare dso_local i32 @UNDDisplayNoticeSimple_rpc(i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @UNDServer_deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
