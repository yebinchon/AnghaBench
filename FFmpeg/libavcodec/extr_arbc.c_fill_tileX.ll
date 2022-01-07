; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_arbc.c_fill_tileX.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_arbc.c_fill_tileX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32, %struct.TYPE_6__*)* @fill_tileX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_tileX(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %12, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32* %35, i32** %13, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sdiv i32 %36, 4
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sdiv i32 %38, 4
  store i32 %39, i32* %15, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @bytestream2_get_le16(i32* %40)
  store i32 %41, i32* %16, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sdiv i32 %48, %49
  %51 = add nsw i32 %50, 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sdiv i32 %54, %55
  %57 = add nsw i32 %56, 1
  %58 = mul nsw i32 %51, %57
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %210

62:                                               ; preds = %5
  store i32 0, i32* %19, align 4
  br label %63

63:                                               ; preds = %205, %62
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %208

67:                                               ; preds = %63
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @bytestream2_get_byte(i32* %68)
  store i32 %69, i32* %20, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @bytestream2_get_byte(i32* %70)
  store i32 %71, i32* %21, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @bytestream2_get_le16(i32* %72)
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %23, align 4
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %8, align 4
  %79 = mul nsw i32 %77, %78
  store i32 %79, i32* %24, align 4
  %80 = load i32, i32* %23, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %25, align 4
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %26, align 4
  %86 = load i32, i32* %24, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %86, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %67
  %92 = load i32, i32* %23, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sge i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91, %67
  br label %205

98:                                               ; preds = %91
  %99 = load i32, i32* %23, align 4
  store i32 %99, i32* %27, align 4
  br label %100

100:                                              ; preds = %200, %98
  %101 = load i32, i32* %27, align 4
  %102 = load i32, i32* %25, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %204

104:                                              ; preds = %100
  %105 = load i32, i32* %24, align 4
  store i32 %105, i32* %28, align 4
  br label %106

106:                                              ; preds = %195, %104
  %107 = load i32, i32* %28, align 4
  %108 = load i32, i32* %26, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %199

110:                                              ; preds = %106
  %111 = load i32, i32* %22, align 4
  %112 = and i32 %111, 32768
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %192

114:                                              ; preds = %110
  store i32 0, i32* %29, align 4
  br label %115

115:                                              ; preds = %171, %114
  %116 = load i32, i32* %29, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %174

119:                                              ; preds = %115
  store i32 0, i32* %30, align 4
  br label %120

120:                                              ; preds = %167, %119
  %121 = load i32, i32* %30, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %170

124:                                              ; preds = %120
  %125 = load i32, i32* %27, align 4
  %126 = load i32, i32* %29, align 4
  %127 = add nsw i32 %125, %126
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp sge i32 %127, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %28, align 4
  %134 = load i32, i32* %30, align 4
  %135 = add nsw i32 %133, %134
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp sge i32 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %132, %124
  br label %167

141:                                              ; preds = %132
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32**, i32*** %143, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 0
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %27, align 4
  %154 = load i32, i32* %29, align 4
  %155 = add nsw i32 %153, %154
  %156 = sub nsw i32 %152, %155
  %157 = mul nsw i32 %151, %156
  %158 = load i32, i32* %28, align 4
  %159 = load i32, i32* %30, align 4
  %160 = add nsw i32 %158, %159
  %161 = mul nsw i32 3, %160
  %162 = add nsw i32 %157, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %146, i64 %163
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @AV_WB24(i32* %164, i32 %165)
  br label %167

167:                                              ; preds = %141, %140
  %168 = load i32, i32* %30, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %30, align 4
  br label %120

170:                                              ; preds = %120
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %29, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %29, align 4
  br label %115

174:                                              ; preds = %115
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %27, align 4
  %180 = sub nsw i32 %178, %179
  %181 = call i32 @FFMIN(i32 %175, i32 %180)
  %182 = load i32, i32* %15, align 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %28, align 4
  %187 = sub nsw i32 %185, %186
  %188 = call i32 @FFMIN(i32 %182, i32 %187)
  %189 = mul nsw i32 %181, %188
  %190 = load i32, i32* %18, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %18, align 4
  br label %192

192:                                              ; preds = %174, %110
  %193 = load i32, i32* %22, align 4
  %194 = shl i32 %193, 1
  store i32 %194, i32* %22, align 4
  br label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %28, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %28, align 4
  br label %106

199:                                              ; preds = %106
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %27, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %27, align 4
  br label %100

204:                                              ; preds = %100
  br label %205

205:                                              ; preds = %204, %97
  %206 = load i32, i32* %19, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %19, align 4
  br label %63

208:                                              ; preds = %63
  %209 = load i32, i32* %18, align 4
  store i32 %209, i32* %6, align 4
  br label %210

210:                                              ; preds = %208, %61
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @AV_WB24(i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
