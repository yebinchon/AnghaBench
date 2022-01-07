; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utils.c_avcodec_align_dimensions.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utils.c_avcodec_align_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AV_NUM_DATA_POINTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avcodec_align_dimensions(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_6__* @av_pix_fmt_desc_get(i32 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %7, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @avcodec_align_dimensions2(%struct.TYPE_7__* %23, i32* %24, i32* %25, i32* %22)
  %27 = getelementptr inbounds i32, i32* %22, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = getelementptr inbounds i32, i32* %22, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @FFMAX(i32 %28, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds i32, i32* %22, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds i32, i32* %22, i64 2
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %38, %36
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds i32, i32* %22, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds i32, i32* %22, i64 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @FFMAX3(i32 %40, i32 %42, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @FFALIGN(i32 %47, i32 %48)
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

declare dso_local %struct.TYPE_6__* @av_pix_fmt_desc_get(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @avcodec_align_dimensions2(%struct.TYPE_7__*, i32*, i32*, i32*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMAX3(i32, i32, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
