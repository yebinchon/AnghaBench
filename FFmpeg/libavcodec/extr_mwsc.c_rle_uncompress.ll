; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mwsc.c_rle_uncompress.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mwsc.c_rle_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32, i32, i32, i32)* @rle_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rle_uncompress(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* %15, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* @SEEK_SET, align 4
  %31 = call i32 @bytestream2_seek_p(i32* %25, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %144, %8
  %33 = load i32*, i32** %9, align 8
  %34 = call i64 @bytestream2_get_bytes_left(i32* %33)
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %145

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @bytestream2_get_le24(i32* %37)
  store i32 %38, i32* %19, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @bytestream2_get_byte(i32* %39)
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %36
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @bytestream2_get_le32(i32* %44)
  store i32 %45, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %46

46:                                               ; preds = %66, %43
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %20, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  store i32 0, i32* %18, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %56, %57
  %59 = sub nsw i32 0, %58
  %60 = load i32, i32* @SEEK_CUR, align 4
  %61 = call i32 @bytestream2_seek_p(i32* %55, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %50
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @bytestream2_put_le24(i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %21, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %21, align 4
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %18, align 4
  br label %46

71:                                               ; preds = %46
  br label %144

72:                                               ; preds = %36
  %73 = load i32, i32* %20, align 4
  %74 = icmp eq i32 %73, 255
  br i1 %74, label %75, label %116

75:                                               ; preds = %72
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @bytestream2_tell_p(i32* %76)
  store i32 %77, i32* %22, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %22, align 4
  %80 = load i32, i32* @SEEK_SET, align 4
  %81 = call i32 @bytestream2_seek(i32* %78, i32 %79, i32 %80)
  store i32 0, i32* %23, align 4
  br label %82

82:                                               ; preds = %110, %75
  %83 = load i32, i32* %23, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %115

86:                                               ; preds = %82
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  store i32 0, i32* %18, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %92, %93
  %95 = sub nsw i32 0, %94
  %96 = load i32, i32* @SEEK_CUR, align 4
  %97 = call i32 @bytestream2_seek_p(i32* %91, i32 %95, i32 %96)
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %99, %100
  %102 = sub nsw i32 0, %101
  %103 = load i32, i32* @SEEK_CUR, align 4
  %104 = call i32 @bytestream2_seek(i32* %98, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %90, %86
  %106 = load i32*, i32** %10, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @bytestream2_get_le24(i32* %107)
  %109 = call i32 @bytestream2_put_le24(i32* %106, i32 %108)
  br label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %23, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %23, align 4
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %18, align 4
  br label %82

115:                                              ; preds = %82
  store i32 0, i32* %17, align 4
  br label %143

116:                                              ; preds = %72
  store i32 0, i32* %24, align 4
  br label %117

117:                                              ; preds = %137, %116
  %118 = load i32, i32* %24, align 4
  %119 = load i32, i32* %20, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %117
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  store i32 0, i32* %18, align 4
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %127, %128
  %130 = sub nsw i32 0, %129
  %131 = load i32, i32* @SEEK_CUR, align 4
  %132 = call i32 @bytestream2_seek_p(i32* %126, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %125, %121
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %19, align 4
  %136 = call i32 @bytestream2_put_le24(i32* %134, i32 %135)
  br label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %24, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %24, align 4
  %140 = load i32, i32* %18, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %18, align 4
  br label %117

142:                                              ; preds = %117
  br label %143

143:                                              ; preds = %142, %115
  br label %144

144:                                              ; preds = %143, %71
  br label %32

145:                                              ; preds = %32
  %146 = load i32, i32* %17, align 4
  ret i32 %146
}

declare dso_local i32 @bytestream2_seek_p(i32*, i32, i32) #1

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_le24(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_put_le24(i32*, i32) #1

declare dso_local i32 @bytestream2_tell_p(i32*) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
