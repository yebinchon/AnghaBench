; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dsicinvideo.c_cin_decode_rle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dsicinvideo.c_cin_decode_rle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"RLE overread\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @cin_decode_rle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cin_decode_rle(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %13, align 8
  br label %22

22:                                               ; preds = %95, %4
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8*, i8** %13, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ult i8* %28, %29
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i1 [ false, %22 ], [ %30, %27 ]
  br i1 %32, label %33, label %100

33:                                               ; preds = %31
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %42, 127
  store i32 %43, i32* %10, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  %47 = load i8, i8* %45, align 1
  %48 = zext i8 %47 to i32
  %49 = load i32, i32* %10, align 4
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @FFMIN(i32 %49, i32 %55)
  %57 = call i32 @memset(i8* %44, i32 %48, i32 %56)
  br label %95

58:                                               ; preds = %33
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = icmp sgt i64 %62, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = call i32 @av_log(i32* null, i32 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %72, i32* %5, align 4
  br label %115

73:                                               ; preds = %58
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = load i8*, i8** %13, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 @FFMIN3(i32 %76, i32 %82, i32 %88)
  %90 = call i32 @memcpy(i8* %74, i8* %75, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %6, align 8
  br label %95

95:                                               ; preds = %73, %41
  %96 = load i32, i32* %10, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %8, align 8
  br label %22

100:                                              ; preds = %31
  %101 = load i8*, i8** %12, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sdiv i32 %107, 10
  %109 = sub nsw i32 %106, %108
  %110 = sext i32 %109 to i64
  %111 = icmp sgt i64 %105, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %100
  %113 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %113, i32* %5, align 4
  br label %115

114:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %114, %112, %69
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @FFMIN3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
