; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9dsp_template.c_vert_32x32_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9dsp_template.c_vert_32x32_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*)* @vert_32x32_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vert_32x32_c(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %8, align 8
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = call i32 @AV_RN4PA(i32* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = call i32 @AV_RN4PA(i32* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 8
  %30 = call i32 @AV_RN4PA(i32* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 12
  %33 = call i32 @AV_RN4PA(i32* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 16
  %36 = call i32 @AV_RN4PA(i32* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 20
  %39 = call i32 @AV_RN4PA(i32* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 24
  %42 = call i32 @AV_RN4PA(i32* %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 28
  %45 = call i32 @AV_RN4PA(i32* %44)
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = udiv i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  store i32 0, i32* %19, align 4
  br label %50

50:                                               ; preds = %90, %4
  %51 = load i32, i32* %19, align 4
  %52 = icmp slt i32 %51, 32
  br i1 %52, label %53, label %93

53:                                               ; preds = %50
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @AV_WN4PA(i32* %55, i32 %56)
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @AV_WN4PA(i32* %59, i32 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @AV_WN4PA(i32* %63, i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 12
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @AV_WN4PA(i32* %67, i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 16
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @AV_WN4PA(i32* %71, i32 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 20
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @AV_WN4PA(i32* %75, i32 %76)
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 24
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @AV_WN4PA(i32* %79, i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 28
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @AV_WN4PA(i32* %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %9, align 8
  br label %90

90:                                               ; preds = %53
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %50

93:                                               ; preds = %50
  ret void
}

declare dso_local i32 @AV_RN4PA(i32*) #1

declare dso_local i32 @AV_WN4PA(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
