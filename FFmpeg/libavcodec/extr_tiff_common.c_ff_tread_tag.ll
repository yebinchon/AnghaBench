; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiff_common.c_ff_tread_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiff_common.c_ff_tread_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@type_sizes = common dso_local global i32* null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@TIFF_STRING = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_tread_tag(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @ff_tget_short(i32* %16, i32 %17)
  %19 = load i32*, i32** %10, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ff_tget_short(i32* %20, i32 %21)
  %23 = load i32*, i32** %11, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ff_tget_long(i32* %24, i32 %25)
  %27 = load i32*, i32** %12, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ff_tis_ifd(i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %6
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** @type_sizes, align 8
  %38 = call i32 @FF_ARRAY_ELEMS(i32* %37)
  %39 = icmp ult i32 %36, %38
  br label %40

40:                                               ; preds = %34, %6
  %41 = phi i1 [ false, %6 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %15, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @bytestream2_tell(i32* %43)
  %45 = add nsw i32 %44, 4
  %46 = load i32*, i32** %13, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %50, i32* %7, align 4
  br label %82

51:                                               ; preds = %40
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ugt i32 %56, 4
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** @type_sizes, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %60, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %65, align 4
  %67 = mul i32 %64, %66
  %68 = icmp ule i32 %67, 4
  br i1 %68, label %81, label %69

69:                                               ; preds = %58
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TIFF_STRING, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %69, %54, %51
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @ff_tget_long(i32* %76, i32 %77)
  %79 = load i32, i32* @SEEK_SET, align 4
  %80 = call i32 @bytestream2_seek(i32* %75, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %69, %58
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %49
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @ff_tget_short(i32*, i32) #1

declare dso_local i32 @ff_tget_long(i32*, i32) #1

declare dso_local i32 @ff_tis_ifd(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
