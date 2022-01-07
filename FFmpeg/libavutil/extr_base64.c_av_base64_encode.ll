; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_base64.c_av_base64_encode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_base64.c_av_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@av_base64_encode.b64 = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@UINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @av_base64_encode(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @UINT_MAX, align 4
  %18 = sdiv i32 %17, 4
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @AV_BASE64_SIZE(i32 %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %4
  store i8* null, i8** %5, align 8
  br label %116

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %11, align 8
  store i8* %27, i8** %10, align 8
  br label %28

28:                                               ; preds = %31, %26
  %29 = load i32, i32* %14, align 4
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %31, label %69

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @AV_RB32(i32* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  store i32* %35, i32** %8, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sub nsw i32 %36, 3
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %12, align 4
  %39 = lshr i32 %38, 26
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [65 x i8], [65 x i8]* @av_base64_encode.b64, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %11, align 8
  store i8 %42, i8* %43, align 1
  %45 = load i32, i32* %12, align 4
  %46 = lshr i32 %45, 20
  %47 = and i32 %46, 63
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [65 x i8], [65 x i8]* @av_base64_encode.b64, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %11, align 8
  store i8 %50, i8* %51, align 1
  %53 = load i32, i32* %12, align 4
  %54 = lshr i32 %53, 14
  %55 = and i32 %54, 63
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [65 x i8], [65 x i8]* @av_base64_encode.b64, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %11, align 8
  store i8 %58, i8* %59, align 1
  %61 = load i32, i32* %12, align 4
  %62 = lshr i32 %61, 8
  %63 = and i32 %62, 63
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [65 x i8], [65 x i8]* @av_base64_encode.b64, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %11, align 8
  store i8 %66, i8* %67, align 1
  br label %28

69:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %73, %69
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32, i32* %12, align 4
  %75 = shl i32 %74, 8
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %8, align 8
  %78 = load i32, i32* %76, align 4
  %79 = add i32 %75, %78
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 8
  store i32 %83, i32* %13, align 4
  br label %70

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %88, %84
  %86 = load i32, i32* %13, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load i32, i32* %12, align 4
  %90 = shl i32 %89, 6
  %91 = load i32, i32* %13, align 4
  %92 = lshr i32 %90, %91
  %93 = and i32 %92, 63
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [65 x i8], [65 x i8]* @av_base64_encode.b64, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %11, align 8
  store i8 %96, i8* %97, align 1
  %99 = load i32, i32* %13, align 4
  %100 = sub nsw i32 %99, 6
  store i32 %100, i32* %13, align 4
  br label %85

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %110, %101
  %103 = load i8*, i8** %11, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = and i64 %107, 3
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %11, align 8
  store i8 61, i8* %111, align 1
  br label %102

113:                                              ; preds = %102
  %114 = load i8*, i8** %11, align 8
  store i8 0, i8* %114, align 1
  %115 = load i8*, i8** %10, align 8
  store i8* %115, i8** %5, align 8
  br label %116

116:                                              ; preds = %113, %25
  %117 = load i8*, i8** %5, align 8
  ret i8* %117
}

declare dso_local i32 @AV_BASE64_SIZE(i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
