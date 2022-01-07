; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_OpenDir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_OpenDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iosuhaxHandle = common dso_local global i64 0, align 8
@IOCTL_FSA_OPENDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOSUHAX_FSA_OpenDir(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i64, i64* @iosuhaxHandle, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64, i64* @iosuhaxHandle, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  br label %70

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %70

22:                                               ; preds = %18
  store i32 2, i32* %8, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = sext i32 %24 to i64
  %26 = add i64 8, %25
  %27 = add i64 %26, 1
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @memalign(i32 32, i32 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  store i32 -2, i32* %4, align 4
  br label %70

35:                                               ; preds = %22
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 8, i32* %40, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @strcpy(i8* %47, i8* %48)
  %50 = load i64, i64* @iosuhaxHandle, align 8
  %51 = load i32, i32* @IOCTL_FSA_OPENDIR, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %9, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %55 = call i32 @IOS_Ioctl(i64 %50, i32 %51, i32* %52, i32 %53, i32* %54, i32 8)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %35
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @free(i32* %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %70

62:                                               ; preds = %35
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @free(i32* %66)
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %62, %58, %34, %21, %15
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memalign(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @IOS_Ioctl(i64, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
