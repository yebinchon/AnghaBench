; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_base64.c_av_base64_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_base64.c_av_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_base64_decode(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %9, align 8
  store i32 255, i32* %10, align 4
  br label %18

18:                                               ; preds = %25, %3
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = icmp sgt i64 %23, 3
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = call i32 @BASE64_DEC_STEP(i32 0)
  %27 = call i32 @BASE64_DEC_STEP(i32 1)
  %28 = call i32 @BASE64_DEC_STEP(i32 2)
  %29 = call i32 @BASE64_DEC_STEP(i32 3)
  %30 = load i32, i32* %11, align 4
  %31 = shl i32 %30, 8
  %32 = call i32 @av_be2ne32(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @AV_WN32(i8* %33, i32 %34)
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  store i8* %39, i8** %9, align 8
  br label %18

40:                                               ; preds = %18
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %40
  %48 = call i32 @BASE64_DEC_STEP(i32 0)
  %49 = call i32 @BASE64_DEC_STEP(i32 1)
  %50 = call i32 @BASE64_DEC_STEP(i32 2)
  %51 = call i32 @BASE64_DEC_STEP(i32 3)
  %52 = load i32, i32* %11, align 4
  %53 = lshr i32 %52, 16
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  store i8 %54, i8* %55, align 1
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %47
  %64 = load i32, i32* %11, align 4
  %65 = lshr i32 %64, 8
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  store i8 %66, i8* %67, align 1
  br label %69

69:                                               ; preds = %63, %47
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i32, i32* %11, align 4
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  store i8 %78, i8* %79, align 1
  br label %81

81:                                               ; preds = %76, %69
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 4
  store i8* %83, i8** %9, align 8
  br label %84

84:                                               ; preds = %81, %40
  br label %85

85:                                               ; preds = %84, %85
  %86 = call i32 @BASE64_DEC_STEP(i32 0)
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %9, align 8
  %89 = call i32 @BASE64_DEC_STEP(i32 0)
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  %92 = call i32 @BASE64_DEC_STEP(i32 0)
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %9, align 8
  %95 = call i32 @BASE64_DEC_STEP(i32 0)
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %9, align 8
  br label %85

98:                                               ; No predecessors!
  %99 = load i32, i32* %11, align 4
  %100 = lshr i32 %99, 10
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %7, align 8
  store i8 %101, i8* %102, align 1
  %104 = load i32, i32* %11, align 4
  %105 = shl i32 %104, 2
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %11, align 4
  %108 = lshr i32 %107, 4
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %7, align 8
  store i8 %109, i8* %110, align 1
  br label %112

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %119 = sext i32 %118 to i64
  br label %126

120:                                              ; preds = %113
  %121 = load i8*, i8** %7, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  br label %126

126:                                              ; preds = %120, %117
  %127 = phi i64 [ %119, %117 ], [ %125, %120 ]
  %128 = trunc i64 %127 to i32
  ret i32 %128
}

declare dso_local i32 @BASE64_DEC_STEP(i32) #1

declare dso_local i32 @av_be2ne32(i32) #1

declare dso_local i32 @AV_WN32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
