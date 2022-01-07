; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_fill_ltable.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_fill_ltable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @fill_ltable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_ltable(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 512, i32* %8, align 4
  store i32 1023, i32* %9, align 4
  store i32 1024, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 10, i32* %15, align 4
  store i32 30, i32* %16, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @bytestream2_get_le32(i32* %17)
  %19 = ashr i32 %18, 2
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %78, %3
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %79

23:                                               ; preds = %20
  %24 = load i32, i32* %14, align 4
  %25 = icmp sge i32 %24, 256
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %27, i32* %4, align 4
  br label %120

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = sub i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %12, align 4
  %39 = lshr i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp slt i32 %49, 16
  br i1 %50, label %51, label %67

51:                                               ; preds = %28
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @bytestream2_get_bytes_left(i32* %52)
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %56, i32* %4, align 4
  br label %120

57:                                               ; preds = %51
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @bytestream2_get_le16(i32* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %16, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 16
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %57, %28
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = lshr i32 %72, 1
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = lshr i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %71, %67
  br label %20

79:                                               ; preds = %20
  br label %80

80:                                               ; preds = %95, %79
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = load i32, i32* %14, align 4
  %91 = icmp sle i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %93, i32* %4, align 4
  br label %120

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %14, align 4
  br label %80

98:                                               ; preds = %80
  %99 = load i32, i32* %14, align 4
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %101, 256
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %14, align 4
  %109 = sub nsw i32 256, %108
  %110 = mul nsw i32 4, %109
  %111 = call i32 @memset(i32* %107, i32 0, i32 %110)
  br label %112

112:                                              ; preds = %103, %98
  %113 = load i32, i32* %16, align 4
  %114 = icmp sge i32 %113, 16
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* @SEEK_CUR, align 4
  %118 = call i32 @bytestream2_seek(i32* %116, i32 -2, i32 %117)
  br label %119

119:                                              ; preds = %115, %112
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %92, %55, %26
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
