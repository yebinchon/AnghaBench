; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_memwrite.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_memwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iosuhaxHandle = common dso_local global i64 0, align 8
@IOCTL_MEM_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOSUHAX_memwrite(i64 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* @iosuhaxHandle, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* @iosuhaxHandle, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  br label %45

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %45

19:                                               ; preds = %15
  %20 = load i64, i64* %7, align 8
  %21 = add nsw i64 %20, 4
  %22 = call i64 @memalign(i32 32, i64 %21)
  %23 = inttoptr i64 %22 to i64*
  store i64* %23, i64** %8, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 -2, i32* %4, align 4
  br label %45

27:                                               ; preds = %19
  %28 = load i64, i64* %5, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 %28, i64* %30, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memcpy(i64* %32, i32* %33, i64 %34)
  %36 = load i64, i64* @iosuhaxHandle, align 8
  %37 = load i32, i32* @IOCTL_MEM_WRITE, align 4
  %38 = load i64*, i64** %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add nsw i64 %39, 4
  %41 = call i32 @IOS_Ioctl(i64 %36, i32 %37, i64* %38, i64 %40, i32 0, i32 0)
  store i32 %41, i32* %9, align 4
  %42 = load i64*, i64** %8, align 8
  %43 = call i32 @free(i64* %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %27, %26, %18, %12
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @memalign(i32, i64) #1

declare dso_local i32 @memcpy(i64*, i32*, i64) #1

declare dso_local i32 @IOS_Ioctl(i64, i32, i64*, i64, i32, i32) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
