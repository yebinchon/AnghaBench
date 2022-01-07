; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_crc.c_av_crc_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_crc.c_av_crc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_crc_init(i32* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %26, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 32
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = shl i64 1, %23
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %17, %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %6, align 4
  br label %162

29:                                               ; preds = %20
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 1028
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 4096
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %6, align 4
  br label %162

40:                                               ; preds = %33, %29
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %104, %40
  %42 = load i32, i32* %12, align 4
  %43 = icmp ult i32 %42, 256
  br i1 %43, label %44, label %107

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  store i64 %49, i64* %14, align 8
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %62, %47
  %51 = load i32, i32* %13, align 4
  %52 = icmp ult i32 %51, 8
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i64, i64* %14, align 8
  %55 = ashr i64 %54, 1
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %14, align 8
  %58 = and i64 %57, 1
  %59 = sub nsw i64 0, %58
  %60 = and i64 %56, %59
  %61 = xor i64 %55, %60
  store i64 %61, i64* %14, align 8
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %50

65:                                               ; preds = %50
  %66 = load i64, i64* %14, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %103

72:                                               ; preds = %44
  %73 = load i32, i32* %12, align 4
  %74 = shl i32 %73, 24
  %75 = zext i32 %74 to i64
  store i64 %75, i64* %14, align 8
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %93, %72
  %77 = load i32, i32* %13, align 4
  %78 = icmp ult i32 %77, 8
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load i64, i64* %14, align 8
  %81 = shl i64 %80, 1
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 32, %83
  %85 = zext i32 %84 to i64
  %86 = shl i64 %82, %85
  %87 = load i64, i64* %14, align 8
  %88 = trunc i64 %87 to i32
  %89 = ashr i32 %88, 31
  %90 = sext i32 %89 to i64
  %91 = and i64 %86, %90
  %92 = xor i64 %81, %91
  store i64 %92, i64* %14, align 8
  br label %93

93:                                               ; preds = %79
  %94 = load i32, i32* %13, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %76

96:                                               ; preds = %76
  %97 = load i64, i64* %14, align 8
  %98 = call i32 @av_bswap32(i64 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %96, %65
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %12, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %41

107:                                              ; preds = %41
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 256
  store i32 1, i32* %109, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp uge i64 %111, 4096
  br i1 %112, label %113, label %161

113:                                              ; preds = %107
  store i32 0, i32* %12, align 4
  br label %114

114:                                              ; preds = %157, %113
  %115 = load i32, i32* %12, align 4
  %116 = icmp ult i32 %115, 256
  br i1 %116, label %117, label %160

117:                                              ; preds = %114
  store i32 0, i32* %13, align 4
  br label %118

118:                                              ; preds = %153, %117
  %119 = load i32, i32* %13, align 4
  %120 = icmp ult i32 %119, 3
  br i1 %120, label %121, label %156

121:                                              ; preds = %118
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* %13, align 4
  %124 = mul i32 256, %123
  %125 = load i32, i32* %12, align 4
  %126 = add i32 %124, %125
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %122, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 8
  %131 = load i32*, i32** %7, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %13, align 4
  %134 = mul i32 256, %133
  %135 = load i32, i32* %12, align 4
  %136 = add i32 %134, %135
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %132, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 255
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %131, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = xor i32 %130, %143
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* %13, align 4
  %147 = add i32 %146, 1
  %148 = mul i32 256, %147
  %149 = load i32, i32* %12, align 4
  %150 = add i32 %148, %149
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %145, i64 %151
  store i32 %144, i32* %152, align 4
  br label %153

153:                                              ; preds = %121
  %154 = load i32, i32* %13, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %13, align 4
  br label %118

156:                                              ; preds = %118
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %12, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %114

160:                                              ; preds = %114
  br label %161

161:                                              ; preds = %160, %107
  store i32 0, i32* %6, align 4
  br label %162

162:                                              ; preds = %161, %37, %26
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_bswap32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
