; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bink.c_read_dcs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bink.c_read_dcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"DC value went out of bounds: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_4__*, i32, i32)* @read_dcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_dcs(i32* %0, i32* %1, %struct.TYPE_4__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %20, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %21, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @CHECK_READ_VAL(i32* %29, %struct.TYPE_4__* %30, i32 %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @get_bits_left(i32* %33)
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sub nsw i32 %35, %36
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %6, align 4
  br label %166

41:                                               ; preds = %5
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call i32 @get_bits(i32* %42, i32 %45)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @get_bits1(i32* %53)
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %17, align 4
  %58 = xor i32 %56, %57
  %59 = load i32, i32* %17, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %18, align 4
  br label %61

61:                                               ; preds = %52, %49, %41
  %62 = load i32*, i32** %21, align 8
  %63 = load i32*, i32** %20, align 8
  %64 = ptrtoint i32* %62 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = icmp slt i64 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %70, i32* %6, align 4
  br label %166

71:                                               ; preds = %61
  %72 = load i32, i32* %18, align 4
  %73 = load i32*, i32** %20, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %20, align 8
  store i32 %72, i32* %73, align 4
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %159, %71
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %162

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %82, %83
  %85 = call i32 @FFMIN(i32 %84, i32 8)
  store i32 %85, i32* %15, align 4
  %86 = load i32*, i32** %21, align 8
  %87 = load i32*, i32** %20, align 8
  %88 = ptrtoint i32* %86 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %81
  %96 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %96, i32* %6, align 4
  br label %166

97:                                               ; preds = %81
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @get_bits(i32* %98, i32 4)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %145

102:                                              ; preds = %97
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %141, %102
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %144

107:                                              ; preds = %103
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @get_bits(i32* %108, i32 %109)
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @get_bits1(i32* %114)
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %17, align 4
  %119 = xor i32 %117, %118
  %120 = load i32, i32* %17, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %19, align 4
  br label %122

122:                                              ; preds = %113, %107
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* %18, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32*, i32** %20, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %20, align 8
  store i32 %126, i32* %127, align 4
  %129 = load i32, i32* %18, align 4
  %130 = icmp slt i32 %129, -32768
  br i1 %130, label %134, label %131

131:                                              ; preds = %122
  %132 = load i32, i32* %18, align 4
  %133 = icmp sgt i32 %132, 32767
  br i1 %133, label %134, label %140

134:                                              ; preds = %131, %122
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* @AV_LOG_ERROR, align 4
  %137 = load i32, i32* %18, align 4
  %138 = call i32 @av_log(i32* %135, i32 %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %139, i32* %6, align 4
  br label %166

140:                                              ; preds = %131
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %103

144:                                              ; preds = %103
  br label %158

145:                                              ; preds = %97
  store i32 0, i32* %13, align 4
  br label %146

146:                                              ; preds = %154, %145
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = load i32, i32* %18, align 4
  %152 = load i32*, i32** %20, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %20, align 8
  store i32 %151, i32* %152, align 4
  br label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %146

157:                                              ; preds = %146
  br label %158

158:                                              ; preds = %157, %144
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 8
  store i32 %161, i32* %12, align 4
  br label %77

162:                                              ; preds = %77
  %163 = load i32*, i32** %20, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i32* %163, i32** %165, align 8
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %162, %134, %95, %69, %39
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local i32 @CHECK_READ_VAL(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
