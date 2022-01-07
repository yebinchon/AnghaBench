; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_ReadFile.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_ReadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iosuhaxHandle = common dso_local global i64 0, align 8
@IOCTL_FSA_READFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOSUHAX_FSA_ReadFile(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i64, i64* @iosuhaxHandle, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i64, i64* @iosuhaxHandle, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  br label %99

26:                                               ; preds = %6
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %99

30:                                               ; preds = %26
  store i32 5, i32* %14, align 4
  store i32 20, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i64 @memalign(i32 32, i32 %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %16, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 -2, i32* %7, align 4
  br label %99

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %16, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %16, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %16, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32*, i32** %16, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32*, i32** %16, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %55, 64
  %57 = add nsw i32 %56, 63
  %58 = and i32 %57, -64
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call i64 @memalign(i32 64, i32 %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %18, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %37
  %65 = load i32*, i32** %16, align 8
  %66 = call i32 @free(i32* %65)
  store i32 -2, i32* %7, align 4
  br label %99

67:                                               ; preds = %37
  %68 = load i64, i64* @iosuhaxHandle, align 8
  %69 = load i32, i32* @IOCTL_FSA_READFILE, align 4
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32*, i32** %18, align 8
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @IOS_Ioctl(i64 %68, i32 %69, i32* %70, i32 %71, i32* %72, i32 %73)
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %19, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load i32*, i32** %18, align 8
  %79 = call i32 @free(i32* %78)
  %80 = load i32*, i32** %16, align 8
  %81 = call i32 @free(i32* %80)
  %82 = load i32, i32* %19, align 4
  store i32 %82, i32* %7, align 4
  br label %99

83:                                               ; preds = %67
  %84 = load i8*, i8** %9, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 64
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = mul nsw i32 %87, %88
  %90 = call i32 @memcpy(i8* %84, i32* %86, i32 %89)
  %91 = load i32*, i32** %18, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %20, align 4
  %94 = load i32*, i32** %18, align 8
  %95 = call i32 @free(i32* %94)
  %96 = load i32*, i32** %16, align 8
  %97 = call i32 @free(i32* %96)
  %98 = load i32, i32* %20, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %83, %77, %64, %36, %29, %23
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i64 @memalign(i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @IOS_Ioctl(i64, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
