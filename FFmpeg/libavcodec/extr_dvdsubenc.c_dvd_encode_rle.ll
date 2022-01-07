; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdsubenc.c_dvd_encode_rle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdsubenc.c_dvd_encode_rle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32, i32, i32, i32*)* @dvd_encode_rle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvd_encode_rle(i32** %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32**, i32*** %7, align 8
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %149, %6
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %152

26:                                               ; preds = %22
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %27

27:                                               ; preds = %134, %26
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %138

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %19, align 4
  store i32 1, i32* %18, align 4
  br label %37

37:                                               ; preds = %55, %31
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %18, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %18, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %19, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %58

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %18, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %18, align 4
  br label %37

58:                                               ; preds = %53, %37
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %19, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp slt i32 %64, 4
  %66 = zext i1 %65 to i32
  %67 = call i32 @av_assert0(i32 %66)
  %68 = load i32, i32* %18, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %76

70:                                               ; preds = %58
  %71 = load i32, i32* %18, align 4
  %72 = shl i32 %71, 2
  %73 = load i32, i32* %19, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @PUTNIBBLE(i32 %74)
  br label %133

76:                                               ; preds = %58
  %77 = load i32, i32* %18, align 4
  %78 = icmp slt i32 %77, 16
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i32, i32* %18, align 4
  %81 = ashr i32 %80, 2
  %82 = call i32 @PUTNIBBLE(i32 %81)
  %83 = load i32, i32* %18, align 4
  %84 = shl i32 %83, 2
  %85 = load i32, i32* %19, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @PUTNIBBLE(i32 %86)
  br label %132

88:                                               ; preds = %76
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %89, 64
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = call i32 @PUTNIBBLE(i32 0)
  %93 = load i32, i32* %18, align 4
  %94 = ashr i32 %93, 2
  %95 = call i32 @PUTNIBBLE(i32 %94)
  %96 = load i32, i32* %18, align 4
  %97 = shl i32 %96, 2
  %98 = load i32, i32* %19, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @PUTNIBBLE(i32 %99)
  br label %131

101:                                              ; preds = %88
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = call i32 @PUTNIBBLE(i32 0)
  %109 = call i32 @PUTNIBBLE(i32 0)
  %110 = call i32 @PUTNIBBLE(i32 0)
  %111 = load i32, i32* %19, align 4
  %112 = call i32 @PUTNIBBLE(i32 %111)
  br label %130

113:                                              ; preds = %101
  %114 = load i32, i32* %18, align 4
  %115 = icmp sgt i32 %114, 255
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 255, i32* %18, align 4
  br label %117

117:                                              ; preds = %116, %113
  %118 = call i32 @PUTNIBBLE(i32 0)
  %119 = load i32, i32* %18, align 4
  %120 = ashr i32 %119, 6
  %121 = call i32 @PUTNIBBLE(i32 %120)
  %122 = load i32, i32* %18, align 4
  %123 = ashr i32 %122, 2
  %124 = call i32 @PUTNIBBLE(i32 %123)
  %125 = load i32, i32* %18, align 4
  %126 = shl i32 %125, 2
  %127 = load i32, i32* %19, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @PUTNIBBLE(i32 %128)
  br label %130

130:                                              ; preds = %117, %107
  br label %131

131:                                              ; preds = %130, %91
  br label %132

132:                                              ; preds = %131, %79
  br label %133

133:                                              ; preds = %132, %70
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %16, align 4
  br label %27

138:                                              ; preds = %27
  %139 = load i32, i32* %15, align 4
  %140 = and i32 %139, 1
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = call i32 @PUTNIBBLE(i32 0)
  br label %144

144:                                              ; preds = %142, %138
  %145 = load i32, i32* %9, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32* %148, i32** %8, align 8
  br label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %17, align 4
  br label %22

152:                                              ; preds = %22
  %153 = load i32*, i32** %13, align 8
  %154 = load i32**, i32*** %7, align 8
  store i32* %153, i32** %154, align 8
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @PUTNIBBLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
