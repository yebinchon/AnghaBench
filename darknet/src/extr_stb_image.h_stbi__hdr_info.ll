; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__hdr_info.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__hdr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBI__HDR_BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"FORMAT=32-bit_rle_rgbe\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-Y \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"+X \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @stbi__hdr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__hdr_info(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* @STBI__HDR_BUFLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32* %14, i32** %7, align 8
  br label %23

23:                                               ; preds = %22, %4
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32* %14, i32** %8, align 8
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32* %14, i32** %9, align 8
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @stbi__hdr_test(i32* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @stbi__rewind(i32* %36)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %99

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %53, %38
  %40 = load i32*, i32** %6, align 8
  %41 = call i8* @stbi__hdr_gettoken(i32* %40, i8* %19)
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %54

48:                                               ; preds = %39
  %49 = load i8*, i8** %12, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %13, align 4
  br label %53

53:                                               ; preds = %52, %48
  br label %39

54:                                               ; preds = %47
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @stbi__rewind(i32* %58)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %99

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = call i8* @stbi__hdr_gettoken(i32* %61, i8* %19)
  store i8* %62, i8** %12, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i64 @strncmp(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @stbi__rewind(i32* %67)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %99

69:                                               ; preds = %60
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  store i8* %71, i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i64 @strtol(i8* %72, i8** %12, i32 10)
  %74 = trunc i64 %73 to i32
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %81, %69
  %77 = load i8*, i8** %12, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %12, align 8
  br label %76

84:                                               ; preds = %76
  %85 = load i8*, i8** %12, align 8
  %86 = call i64 @strncmp(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @stbi__rewind(i32* %89)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %99

91:                                               ; preds = %84
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = call i64 @strtol(i8* %94, i8** null, i32 10)
  %96 = trunc i64 %95 to i32
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** %9, align 8
  store i32 3, i32* %98, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %99

99:                                               ; preds = %91, %88, %66, %57, %35
  %100 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @stbi__hdr_test(i32*) #2

declare dso_local i32 @stbi__rewind(i32*) #2

declare dso_local i8* @stbi__hdr_gettoken(i32*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
