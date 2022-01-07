; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_SetFilePos.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_SetFilePos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iosuhaxHandle = common dso_local global i64 0, align 8
@IOCTL_FSA_SETFILEPOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOSUHAX_FSA_SetFilePos(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* @iosuhaxHandle, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64, i64* @iosuhaxHandle, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  br label %50

18:                                               ; preds = %3
  store i32 3, i32* %8, align 4
  store i32 12, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @memalign(i32 32, i32 %19)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 -2, i32* %4, align 4
  br label %50

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %32, i32* %34, align 4
  %35 = load i64, i64* @iosuhaxHandle, align 8
  %36 = load i32, i32* @IOCTL_FSA_SETFILEPOS, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @IOS_Ioctl(i64 %35, i32 %36, i32* %37, i32 %38, i32* %11, i32 4)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %25
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @free(i32* %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  br label %50

46:                                               ; preds = %25
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @free(i32* %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %42, %24, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @memalign(i32, i32) #1

declare dso_local i32 @IOS_Ioctl(i64, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
