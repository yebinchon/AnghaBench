; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_Open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iosuhaxHandle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/dev/iosuhax\00", align 1
@IOCTL_CHECK_IF_IOSUHAX = common dso_local global i32 0, align 4
@IOSUHAX_MAGIC_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOSUHAX_Open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @iosuhaxHandle, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @iosuhaxHandle, align 4
  store i32 %8, i32* %2, align 4
  br label %36

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i8*, i8** %3, align 8
  br label %15

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i8* [ %13, %12 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %14 ]
  %17 = call i32 @IOS_Open(i8* %16, i32 0)
  store i32 %17, i32* @iosuhaxHandle, align 4
  %18 = load i32, i32* @iosuhaxHandle, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  %24 = load i32, i32* @iosuhaxHandle, align 4
  %25 = load i32, i32* @IOCTL_CHECK_IF_IOSUHAX, align 4
  %26 = call i32 @IOS_Ioctl(i32 %24, i32 %25, i8* null, i32 0, i32* %4, i32 4)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IOSUHAX_MAGIC_WORD, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @iosuhaxHandle, align 4
  %32 = call i32 @IOS_Close(i32 %31)
  store i32 -1, i32* @iosuhaxHandle, align 4
  br label %33

33:                                               ; preds = %30, %23
  br label %34

34:                                               ; preds = %33, %20, %15
  %35 = load i32, i32* @iosuhaxHandle, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %7
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @IOS_Open(i8*, i32) #1

declare dso_local i32 @IOS_Ioctl(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @IOS_Close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
