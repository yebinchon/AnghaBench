; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__psd_decode_rle.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__psd_decode_rle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32)* @stbi__psd_decode_rle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__psd_decode_rle(i32* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %79, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %80

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = call i8* @stbi__get8(i32* %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 128
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %79

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 128
  br i1 %26, label %27, label %50

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %81

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %41, %34
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  %43 = call i8* @stbi__get8(i32* %42)
  %44 = load i8**, i8*** %6, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i8**, i8*** %6, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 4
  store i8** %46, i8*** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %10, align 4
  br label %38

49:                                               ; preds = %38
  br label %78

50:                                               ; preds = %24
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 128
  br i1 %52, label %53, label %77

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 257, %54
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %81

60:                                               ; preds = %53
  %61 = load i32*, i32** %5, align 8
  %62 = call i8* @stbi__get8(i32* %61)
  store i8* %62, i8** %11, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %69, %60
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i8*, i8** %11, align 8
  %71 = load i8**, i8*** %6, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i8**, i8*** %6, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 4
  store i8** %73, i8*** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %10, align 4
  br label %66

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %50
  br label %78

78:                                               ; preds = %77, %49
  br label %79

79:                                               ; preds = %78, %23
  br label %12

80:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %59, %33
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i8* @stbi__get8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
