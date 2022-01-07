; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_construct_vector.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_construct_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CB_NSTAGES = common dso_local global i32 0, align 4
@SUBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32)* @construct_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @construct_vector(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load i32, i32* @CB_NSTAGES, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i32, i32* @SUBL, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %28 = load i32, i32* @SUBL, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %31 = load i32, i32* @SUBL, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %17, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gain_dequantization(i32 %36, i32 16384, i32 0)
  %38 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %37, i32* %38, align 16
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds i32, i32* %24, i64 0
  %43 = load i32, i32* %42, align 16
  %44 = call i32 @gain_dequantization(i32 %41, i32 %43, i32 1)
  %45 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds i32, i32* %24, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gain_dequantization(i32 %48, i32 %50, i32 2)
  %52 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %51, i32* %52, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @get_codebook(i32* %27, i32* %53, i32 %56, i32 %57, i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @get_codebook(i32* %30, i32* %60, i32 %63, i32 %64, i32 %65)
  %67 = load i32*, i32** %10, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @get_codebook(i32* %33, i32* %67, i32 %70, i32 %71, i32 %72)
  %74 = getelementptr inbounds i32, i32* %24, i64 0
  store i32* %74, i32** %19, align 8
  store i32 0, i32* %20, align 4
  br label %75

75:                                               ; preds = %116, %6
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %119

79:                                               ; preds = %75
  %80 = load i32*, i32** %19, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %19, align 8
  %82 = load i32, i32* %80, align 4
  %83 = load i32, i32* %20, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %27, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @SPL_MUL_16_16(i32 %82, i32 %86)
  store i32 %87, i32* %18, align 4
  %88 = load i32*, i32** %19, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %19, align 8
  %90 = load i32, i32* %88, align 4
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %30, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @SPL_MUL_16_16(i32 %90, i32 %94)
  %96 = load i32, i32* %18, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %18, align 4
  %98 = load i32*, i32** %19, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %20, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %33, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @SPL_MUL_16_16(i32 %99, i32 %103)
  %105 = load i32, i32* %18, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %18, align 4
  %107 = load i32*, i32** %19, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 -2
  store i32* %108, i32** %19, align 8
  %109 = load i32, i32* %18, align 4
  %110 = add i32 %109, 8192
  %111 = ashr i32 %110, 14
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %79
  %117 = load i32, i32* %20, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %20, align 4
  br label %75

119:                                              ; preds = %75
  %120 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %120)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gain_dequantization(i32, i32, i32) #2

declare dso_local i32 @get_codebook(i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @SPL_MUL_16_16(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
