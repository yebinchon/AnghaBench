; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_OpenFile.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_OpenFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iosuhaxHandle = common dso_local global i64 0, align 8
@IOCTL_FSA_OPENFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOSUHAX_FSA_OpenFile(i32 %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* @iosuhaxHandle, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* @iosuhaxHandle, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  br label %100

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %23, %20
  store i32 -1, i32* %5, align 4
  br label %100

30:                                               ; preds = %26
  store i32 3, i32* %10, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = sext i32 %32 to i64
  %34 = add i64 12, %33
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = sext i32 %36 to i64
  %38 = add i64 %34, %37
  %39 = add i64 %38, 2
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @memalign(i32 32, i32 %41)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %30
  store i32 -2, i32* %5, align 4
  br label %100

47:                                               ; preds = %30
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 12, i32* %52, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = add nsw i32 %55, %57
  %59 = add nsw i32 %58, 1
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @strcpy(i8* %68, i8* %69)
  %71 = load i32*, i32** %12, align 8
  %72 = bitcast i32* %71 to i8*
  %73 = load i32*, i32** %12, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @strcpy(i8* %77, i8* %78)
  %80 = load i64, i64* @iosuhaxHandle, align 8
  %81 = load i32, i32* @IOCTL_FSA_OPENFILE, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %11, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %85 = call i32 @IOS_Ioctl(i64 %80, i32 %81, i32* %82, i32 %83, i32* %84, i32 8)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %47
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @free(i32* %89)
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %5, align 4
  br label %100

92:                                               ; preds = %47
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @free(i32* %96)
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %92, %88, %46, %29, %17
  %101 = load i32, i32* %5, align 4
  ret i32 %101
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
