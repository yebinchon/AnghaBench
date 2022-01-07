; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dsicinvideo.c_cin_decode_huffman.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dsicinvideo.c_cin_decode_huffman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @cin_decode_huffman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cin_decode_huffman(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [15 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %14, align 8
  %24 = getelementptr inbounds [15 x i8], [15 x i8]* %11, i64 0, i64 0
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @memcpy(i8* %24, i8* %25, i32 15)
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 15
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %91, %4
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %33, label %92

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = ashr i32 %38, 4
  %40 = icmp eq i32 %39, 15
  br i1 %40, label %41, label %55

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  %43 = shl i32 %42, 4
  store i32 %43, i32* %9, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  %46 = load i8, i8* %44, align 1
  %47 = zext i8 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = ashr i32 %49, 4
  %51 = or i32 %48, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %12, align 8
  store i8 %52, i8* %53, align 1
  br label %63

55:                                               ; preds = %33
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [15 x i8], [15 x i8]* %11, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %12, align 8
  store i8 %60, i8* %61, align 1
  br label %63

63:                                               ; preds = %55, %41
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = icmp uge i8* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %92

68:                                               ; preds = %63
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 15
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 15
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  %76 = load i8, i8* %74, align 1
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %12, align 8
  store i8 %76, i8* %77, align 1
  br label %86

79:                                               ; preds = %68
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [15 x i8], [15 x i8]* %11, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %12, align 8
  store i8 %83, i8* %84, align 1
  br label %86

86:                                               ; preds = %79, %73
  %87 = load i8*, i8** %12, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = icmp uge i8* %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %92

91:                                               ; preds = %86
  br label %29

92:                                               ; preds = %90, %67, %29
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  ret i32 %98
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
