; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng.c_read_chunk_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng.c_read_chunk_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.png_chunk = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.png_chunk*)* @read_chunk_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_chunk_header(i32* %0, i32* %1, %struct.png_chunk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.png_chunk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.png_chunk* %2, %struct.png_chunk** %7, align 8
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %11, align 16
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = ptrtoint i32* %12 to i64
  %15 = ptrtoint i32* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  %18 = icmp slt i64 %17, 8
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %86

20:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %8, align 4
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %21

36:                                               ; preds = %21
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %38 = call i32 @dword_be(i32* %37)
  %39 = load %struct.png_chunk*, %struct.png_chunk** %7, align 8
  %40 = getelementptr inbounds %struct.png_chunk, %struct.png_chunk* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  %43 = load %struct.png_chunk*, %struct.png_chunk** %7, align 8
  %44 = getelementptr inbounds %struct.png_chunk, %struct.png_chunk* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ugt i32* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %86

51:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %82, %51
  %53 = load i32, i32* %8, align 4
  %54 = icmp ult i32 %53, 4
  br i1 %54, label %55, label %85

55:                                               ; preds = %52
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 65
  br i1 %63, label %73, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %65, 90
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 97
  br i1 %69, label %73, label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 122
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %67, %55
  store i32 0, i32* %4, align 4
  br label %86

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.png_chunk*, %struct.png_chunk** %7, align 8
  %77 = getelementptr inbounds %struct.png_chunk, %struct.png_chunk* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %52

85:                                               ; preds = %52
  store i32 1, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %73, %50, %19
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @dword_be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
