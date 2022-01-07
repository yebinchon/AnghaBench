; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dfa.c_decode_bdlt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dfa.c_decode_bdlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @decode_bdlt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_bdlt(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @bytestream2_get_le16(i32* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %20, i32* %5, align 4
  br label %132

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %11, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32*, i32** %7, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @bytestream2_get_le16(i32* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %5, align 4
  br label %132

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %130, %37
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %12, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %131

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @bytestream2_get_bytes_left(i32* %43)
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %5, align 4
  br label %132

48:                                               ; preds = %42
  %49 = load i32*, i32** %7, align 8
  store i32* %49, i32** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @bytestream2_get_byteu(i32* %54)
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %125, %48
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %13, align 4
  %59 = icmp ne i32 %57, 0
  br i1 %59, label %60, label %130

60:                                               ; preds = %56
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = ptrtoint i32* %61 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @bytestream2_peek_byte(i32* %67)
  %69 = sext i32 %68 to i64
  %70 = icmp sle i64 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %72, i32* %5, align 4
  br label %132

73:                                               ; preds = %60
  %74 = load i32*, i32** %6, align 8
  %75 = call i64 @bytestream2_get_byte(i32* %74)
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 %75
  store i32* %77, i32** %10, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i64 @bytestream2_get_byte(i32* %78)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %73
  %84 = load i32*, i32** %7, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = ptrtoint i32* %84 to i64
  %87 = ptrtoint i32* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 4
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %94, i32* %5, align 4
  br label %132

95:                                               ; preds = %83
  %96 = load i32*, i32** %6, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @bytestream2_get_buffer(i32* %96, i32* %97, i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %103, i32* %5, align 4
  br label %132

104:                                              ; preds = %95
  br label %125

105:                                              ; preds = %73
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %11, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = ptrtoint i32* %108 to i64
  %111 = ptrtoint i32* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %105
  %118 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %118, i32* %5, align 4
  br label %132

119:                                              ; preds = %105
  %120 = load i32*, i32** %10, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = call i64 @bytestream2_get_byte(i32* %121)
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @memset(i32* %120, i64 %122, i32 %123)
  br label %125

125:                                              ; preds = %119, %104
  %126 = load i32, i32* %11, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %10, align 8
  br label %56

130:                                              ; preds = %56
  br label %38

131:                                              ; preds = %38
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %117, %102, %93, %71, %46, %35, %19
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @bytestream2_peek_byte(i32*) #1

declare dso_local i64 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
