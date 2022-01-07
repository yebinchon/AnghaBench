; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdrw.c_decode_rle_bpp2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdrw.c_decode_rle_bpp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32**, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*)* @decode_rle_bpp2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_rle_bpp2(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %205, %3
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %208

32:                                               ; preds = %26
  %33 = load i32*, i32** %9, align 8
  store i32* %33, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sdiv i32 %34, 4
  %36 = icmp sgt i32 %35, 200
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @bytestream2_get_be16(i32* %38)
  store i32 %39, i32* %13, align 4
  store i32 %39, i32* %12, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @bytestream2_get_byte(i32* %41)
  store i32 %42, i32* %13, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @bytestream2_get_bytes_left(i32* %44)
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %49, i32* %4, align 4
  br label %209

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %195, %50
  %52 = load i32, i32* %13, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %196

54:                                               ; preds = %51
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @bytestream2_get_byte(i32* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = and i32 %57, 128
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %126

60:                                               ; preds = %54
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @bytestream2_get_byte(i32* %61)
  store i32 %62, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %120, %60
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 257, %65
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %123

68:                                               ; preds = %63
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i32, i32* %15, align 4
  %74 = and i32 %73, 192
  %75 = ashr i32 %74, 6
  %76 = load i32*, i32** %16, align 8
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %75, i32* %80, align 4
  br label %81

81:                                               ; preds = %72, %68
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32, i32* %15, align 4
  %87 = and i32 %86, 48
  %88 = ashr i32 %87, 4
  %89 = load i32*, i32** %16, align 8
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %17, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  br label %94

94:                                               ; preds = %85, %81
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i32, i32* %15, align 4
  %100 = and i32 %99, 12
  %101 = ashr i32 %100, 2
  %102 = load i32*, i32** %16, align 8
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %17, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %101, i32* %106, align 4
  br label %107

107:                                              ; preds = %98, %94
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i32, i32* %15, align 4
  %113 = and i32 %112, 3
  %114 = load i32*, i32** %16, align 8
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32 %113, i32* %118, align 4
  br label %119

119:                                              ; preds = %111, %107
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %63

123:                                              ; preds = %63
  %124 = load i32, i32* %13, align 4
  %125 = sub nsw i32 %124, 2
  store i32 %125, i32* %13, align 4
  br label %195

126:                                              ; preds = %54
  store i32 0, i32* %11, align 4
  br label %127

127:                                              ; preds = %186, %126
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %132, label %189

132:                                              ; preds = %127
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @bytestream2_get_byte(i32* %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %132
  %139 = load i32, i32* %15, align 4
  %140 = and i32 %139, 192
  %141 = ashr i32 %140, 6
  %142 = load i32*, i32** %16, align 8
  %143 = load i32, i32* %17, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %17, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  store i32 %141, i32* %146, align 4
  br label %147

147:                                              ; preds = %138, %132
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load i32, i32* %15, align 4
  %153 = and i32 %152, 48
  %154 = ashr i32 %153, 4
  %155 = load i32*, i32** %16, align 8
  %156 = load i32, i32* %17, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %17, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  store i32 %154, i32* %159, align 4
  br label %160

160:                                              ; preds = %151, %147
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = load i32, i32* %15, align 4
  %166 = and i32 %165, 12
  %167 = ashr i32 %166, 2
  %168 = load i32*, i32** %16, align 8
  %169 = load i32, i32* %17, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %17, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  store i32 %167, i32* %172, align 4
  br label %173

173:                                              ; preds = %164, %160
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %173
  %178 = load i32, i32* %15, align 4
  %179 = and i32 %178, 3
  %180 = load i32*, i32** %16, align 8
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %17, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  store i32 %179, i32* %184, align 4
  br label %185

185:                                              ; preds = %177, %173
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  br label %127

189:                                              ; preds = %127
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 1
  %192 = add nsw i32 1, %191
  %193 = load i32, i32* %13, align 4
  %194 = sub nsw i32 %193, %192
  store i32 %194, i32* %13, align 4
  br label %195

195:                                              ; preds = %189, %123
  br label %51

196:                                              ; preds = %51
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %9, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32* %204, i32** %9, align 8
  br label %205

205:                                              ; preds = %196
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  br label %26

208:                                              ; preds = %26
  store i32 0, i32* %4, align 4
  br label %209

209:                                              ; preds = %208, %48
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
