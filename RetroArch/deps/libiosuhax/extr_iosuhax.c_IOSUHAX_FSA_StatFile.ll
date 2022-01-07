; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_StatFile.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_StatFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iosuhaxHandle = common dso_local global i64 0, align 8
@IOCTL_FSA_STATFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOSUHAX_FSA_StatFile(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load i64, i64* @iosuhaxHandle, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* @iosuhaxHandle, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %4, align 4
  br label %75

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %75

24:                                               ; preds = %20
  store i32 2, i32* %8, align 4
  store i32 8, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @memalign(i32 32, i32 %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 -2, i32* %4, align 4
  br label %75

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %35, i32* %37, align 4
  store i32 8, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @memalign(i32 32, i32 %38)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @free(i32* %44)
  store i32 -2, i32* %4, align 4
  br label %75

46:                                               ; preds = %31
  %47 = load i64, i64* @iosuhaxHandle, align 8
  %48 = load i32, i32* @IOCTL_FSA_STATFILE, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @IOS_Ioctl(i64 %47, i32 %48, i32* %49, i32 %50, i32* %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @free(i32* %57)
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @free(i32* %59)
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %4, align 4
  br label %75

62:                                               ; preds = %46
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %14, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = call i32 @memcpy(i32* %66, i32* %68, i32 4)
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @free(i32* %70)
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @free(i32* %72)
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %62, %56, %43, %30, %23, %17
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @memalign(i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @IOS_Ioctl(i64, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
