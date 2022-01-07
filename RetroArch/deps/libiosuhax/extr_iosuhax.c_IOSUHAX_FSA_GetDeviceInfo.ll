; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_GetDeviceInfo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_GetDeviceInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iosuhaxHandle = common dso_local global i64 0, align 8
@IOCTL_FSA_GETDEVICEINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOSUHAX_FSA_GetDeviceInfo(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [26 x i32], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* @iosuhaxHandle, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* @iosuhaxHandle, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  br label %79

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %20
  store i32 -1, i32* %5, align 4
  br label %79

27:                                               ; preds = %23
  store i32 3, i32* %10, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  %31 = add i64 12, %30
  %32 = add i64 %31, 1
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @memalign(i32 32, i32 %34)
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  store i32 -2, i32* %5, align 4
  br label %79

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 12, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @strcpy(i8* %55, i8* %56)
  %58 = load i64, i64* @iosuhaxHandle, align 8
  %59 = load i32, i32* @IOCTL_FSA_GETDEVICEINFO, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %11, align 4
  %62 = getelementptr inbounds [26 x i32], [26 x i32]* %13, i64 0, i64 0
  %63 = call i32 @IOS_Ioctl(i64 %58, i32 %59, i32* %60, i32 %61, i32* %62, i32 104)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %40
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @free(i32* %67)
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %5, align 4
  br label %79

70:                                               ; preds = %40
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds [26 x i32], [26 x i32]* %13, i64 0, i64 0
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = call i32 @memcpy(i32* %71, i32* %73, i32 100)
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @free(i32* %75)
  %77 = getelementptr inbounds [26 x i32], [26 x i32]* %13, i64 0, i64 0
  %78 = load i32, i32* %77, align 16
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %70, %66, %39, %26, %17
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memalign(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @IOS_Ioctl(i64, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
