; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_qtpalette.c_ff_get_qtpalette.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_qtpalette.c_ff_get_qtpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_CUR = common dso_local global i32 0, align 4
@AV_CODEC_ID_CINEPAK = common dso_local global i32 0, align 4
@ff_qt_default_palette_2 = common dso_local global i32* null, align 8
@ff_qt_default_palette_4 = common dso_local global i32* null, align 8
@ff_qt_default_palette_16 = common dso_local global i32* null, align 8
@ff_qt_default_palette_256 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_get_qtpalette(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @SEEK_CUR, align 4
  %24 = call i32 @avio_seek(i32* %22, i32 82, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @avio_rb16(i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 31
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 32
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @avio_rb16(i32* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @AV_CODEC_ID_CINEPAK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %216

40:                                               ; preds = %35, %3
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %215

52:                                               ; preds = %49, %46, %43, %40
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %96

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %96

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 1, %62
  store i32 %63, i32* %13, align 4
  store i32 255, i32* %19, align 4
  %64 = load i32, i32* %13, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sdiv i32 256, %65
  store i32 %66, i32* %20, align 4
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %92, %61
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %67
  %72 = load i32, i32* %19, align 4
  store i32 %72, i32* %18, align 4
  store i32 %72, i32* %17, align 4
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = shl i32 %73, 16
  %75 = or i32 -16777216, %74
  %76 = load i32, i32* %17, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 %75, %77
  %79 = load i32, i32* %18, align 4
  %80 = or i32 %78, %79
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %19, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %71
  store i32 0, i32* %19, align 4
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %67

95:                                               ; preds = %67
  br label %214

96:                                               ; preds = %58, %55, %52
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %163

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = shl i32 1, %100
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32*, i32** @ff_qt_default_palette_2, align 8
  store i32* %105, i32** %21, align 8
  br label %120

106:                                              ; preds = %99
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32*, i32** @ff_qt_default_palette_4, align 8
  store i32* %110, i32** %21, align 8
  br label %119

111:                                              ; preds = %106
  %112 = load i32, i32* %9, align 4
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32*, i32** @ff_qt_default_palette_16, align 8
  store i32* %115, i32** %21, align 8
  br label %118

116:                                              ; preds = %111
  %117 = load i32*, i32** @ff_qt_default_palette_256, align 8
  store i32* %117, i32** %21, align 8
  br label %118

118:                                              ; preds = %116, %114
  br label %119

119:                                              ; preds = %118, %109
  br label %120

120:                                              ; preds = %119, %104
  store i32 0, i32* %12, align 4
  br label %121

121:                                              ; preds = %159, %120
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %162

125:                                              ; preds = %121
  %126 = load i32*, i32** %21, align 8
  %127 = load i32, i32* %12, align 4
  %128 = mul nsw i32 %127, 3
  %129 = add nsw i32 %128, 0
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %16, align 4
  %133 = load i32*, i32** %21, align 8
  %134 = load i32, i32* %12, align 4
  %135 = mul nsw i32 %134, 3
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %17, align 4
  %140 = load i32*, i32** %21, align 8
  %141 = load i32, i32* %12, align 4
  %142 = mul nsw i32 %141, 3
  %143 = add nsw i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %16, align 4
  %148 = shl i32 %147, 16
  %149 = or i32 -16777216, %148
  %150 = load i32, i32* %17, align 4
  %151 = shl i32 %150, 8
  %152 = or i32 %149, %151
  %153 = load i32, i32* %18, align 4
  %154 = or i32 %152, %153
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %154, i32* %158, align 4
  br label %159

159:                                              ; preds = %125
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %121

162:                                              ; preds = %121
  br label %213

163:                                              ; preds = %96
  %164 = load i32*, i32** %6, align 8
  %165 = call i32 @avio_rb32(i32* %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32*, i32** %6, align 8
  %167 = call i32 @avio_rb16(i32* %166)
  %168 = load i32*, i32** %6, align 8
  %169 = call i32 @avio_rb16(i32* %168)
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp sle i32 %170, 255
  br i1 %171, label %172, label %212

172:                                              ; preds = %163
  %173 = load i32, i32* %15, align 4
  %174 = icmp sle i32 %173, 255
  br i1 %174, label %175, label %212

175:                                              ; preds = %172
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %208, %175
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp sle i32 %178, %179
  br i1 %180, label %181, label %211

181:                                              ; preds = %177
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 @avio_skip(i32* %182, i32 2)
  %184 = load i32*, i32** %6, align 8
  %185 = call i32 @avio_r8(i32* %184)
  store i32 %185, i32* %16, align 4
  %186 = load i32*, i32** %6, align 8
  %187 = call i32 @avio_r8(i32* %186)
  %188 = load i32*, i32** %6, align 8
  %189 = call i32 @avio_r8(i32* %188)
  store i32 %189, i32* %17, align 4
  %190 = load i32*, i32** %6, align 8
  %191 = call i32 @avio_r8(i32* %190)
  %192 = load i32*, i32** %6, align 8
  %193 = call i32 @avio_r8(i32* %192)
  store i32 %193, i32* %18, align 4
  %194 = load i32*, i32** %6, align 8
  %195 = call i32 @avio_r8(i32* %194)
  %196 = load i32, i32* %16, align 4
  %197 = shl i32 %196, 16
  %198 = or i32 -16777216, %197
  %199 = load i32, i32* %17, align 4
  %200 = shl i32 %199, 8
  %201 = or i32 %198, %200
  %202 = load i32, i32* %18, align 4
  %203 = or i32 %201, %202
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %203, i32* %207, align 4
  br label %208

208:                                              ; preds = %181
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %12, align 4
  br label %177

211:                                              ; preds = %177
  br label %212

212:                                              ; preds = %211, %172, %163
  br label %213

213:                                              ; preds = %212, %162
  br label %214

214:                                              ; preds = %213, %95
  store i32 1, i32* %4, align 4
  br label %216

215:                                              ; preds = %49
  store i32 0, i32* %4, align 4
  br label %216

216:                                              ; preds = %215, %214, %39
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_r8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
