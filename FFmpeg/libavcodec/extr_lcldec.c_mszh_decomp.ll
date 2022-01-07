; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lcldec.c_mszh_decomp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lcldec.c_mszh_decomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @mszh_decomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mszh_decomp(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %12, align 4
  store i32 128, i32* %13, align 4
  br label %29

29:                                               ; preds = %135, %4
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ult i8* %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br i1 %38, label %39, label %136

39:                                               ; preds = %37
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @memcpy(i8* %45, i8* %46, i32 4)
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 4
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  store i8* %51, i8** %5, align 8
  br label %93

52:                                               ; preds = %39
  %53 = call i32 @bytestream_get_le16(i8** %5)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = lshr i32 %54, 11
  %56 = add i32 %55, 1
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  %58 = and i32 %57, 2047
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @FFMIN(i32 %59, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = mul i32 %67, 4
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @FFMIN(i32 %69, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %52
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @av_memcpy_backptr(i8* %80, i32 %81, i32 %82)
  br label %88

84:                                               ; preds = %52
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @memset(i8* %85, i32 0, i32 %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %15, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %7, align 8
  br label %93

93:                                               ; preds = %88, %44
  %94 = load i32, i32* %13, align 4
  %95 = lshr i32 %94, 1
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %135, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  %101 = load i8, i8* %99, align 1
  %102 = zext i8 %101 to i32
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %122, %98
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br i1 %106, label %107, label %134

107:                                              ; preds = %103
  %108 = load i8*, i8** %10, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = icmp slt i64 %112, 32
  br i1 %113, label %121, label %114

114:                                              ; preds = %107
  %115 = load i8*, i8** %11, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = icmp slt i64 %119, 32
  br i1 %120, label %121, label %122

121:                                              ; preds = %114, %107
  br label %134

122:                                              ; preds = %114
  %123 = load i8*, i8** %7, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @memcpy(i8* %123, i8* %124, i32 32)
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 32
  store i8* %127, i8** %7, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 32
  store i8* %129, i8** %5, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %5, align 8
  %132 = load i8, i8* %130, align 1
  %133 = zext i8 %132 to i32
  store i32 %133, i32* %12, align 4
  br label %103

134:                                              ; preds = %121, %103
  store i32 128, i32* %13, align 4
  br label %135

135:                                              ; preds = %134, %93
  br label %29

136:                                              ; preds = %37
  %137 = load i8*, i8** %7, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = ptrtoint i8* %137 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = trunc i64 %141 to i32
  ret i32 %142
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @bytestream_get_le16(i8**) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_memcpy_backptr(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
