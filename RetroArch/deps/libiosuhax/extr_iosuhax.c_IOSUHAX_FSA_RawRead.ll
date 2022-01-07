; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_RawRead.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_RawRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iosuhaxHandle = common dso_local global i64 0, align 8
@IOCTL_FSA_RAW_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOSUHAX_FSA_RawRead(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  br label %103

26:                                               ; preds = %6
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %103

30:                                               ; preds = %26
  store i32 6, i32* %14, align 4
  store i32 24, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i64 @memalign(i32 32, i32 %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %16, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 -2, i32* %7, align 4
  br label %103

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
  %48 = ashr i32 %47, 32
  %49 = load i32*, i32** %16, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %16, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32*, i32** %16, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = mul nsw i32 %57, %58
  %60 = add nsw i32 %59, 64
  %61 = add nsw i32 %60, 63
  %62 = and i32 %61, -64
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = call i64 @memalign(i32 64, i32 %63)
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %18, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %37
  %69 = load i32*, i32** %16, align 8
  %70 = call i32 @free(i32* %69)
  store i32 -2, i32* %7, align 4
  br label %103

71:                                               ; preds = %37
  %72 = load i64, i64* @iosuhaxHandle, align 8
  %73 = load i32, i32* @IOCTL_FSA_RAW_READ, align 4
  %74 = load i32*, i32** %16, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32*, i32** %18, align 8
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @IOS_Ioctl(i64 %72, i32 %73, i32* %74, i32 %75, i32* %76, i32 %77)
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load i32*, i32** %18, align 8
  %83 = call i32 @free(i32* %82)
  %84 = load i32*, i32** %16, align 8
  %85 = call i32 @free(i32* %84)
  %86 = load i32, i32* %19, align 4
  store i32 %86, i32* %7, align 4
  br label %103

87:                                               ; preds = %71
  %88 = load i8*, i8** %9, align 8
  %89 = load i32*, i32** %18, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 64
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 %91, %92
  %94 = call i32 @memcpy(i8* %88, i32* %90, i32 %93)
  %95 = load i32*, i32** %18, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %20, align 4
  %98 = load i32*, i32** %18, align 8
  %99 = call i32 @free(i32* %98)
  %100 = load i32*, i32** %16, align 8
  %101 = call i32 @free(i32* %100)
  %102 = load i32, i32* %20, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %87, %81, %68, %36, %29, %23
  %104 = load i32, i32* %7, align 4
  ret i32 %104
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
