; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_SVC.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_SVC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iosuhaxHandle = common dso_local global i64 0, align 8
@IOCTL_SVC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOSUHAX_SVC(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [9 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @iosuhaxHandle, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* @iosuhaxHandle, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  br label %49

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 8
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 8, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %32, 4
  %34 = call i32 @memcpy(i32* %30, i32* %31, i32 %33)
  br label %35

35:                                               ; preds = %28, %21, %16
  %36 = load i64, i64* @iosuhaxHandle, align 8
  %37 = load i32, i32* @IOCTL_SVC, align 4
  %38 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 1, %39
  %41 = mul nsw i32 %40, 4
  %42 = call i32 @IOS_Ioctl(i64 %36, i32 %37, i32* %38, i32 %41, i32* %9, i32 4)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %45, %13
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @IOS_Ioctl(i64, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
