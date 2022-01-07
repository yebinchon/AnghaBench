; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pictordec.c_picmemset.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pictordec.c_picmemset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32, i32*, i32*, i32*, i32)* @picmemset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @picmemset(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %25 = load i32*, i32** %15, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %16, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %16, align 4
  %30 = shl i32 1, %29
  %31 = sub i32 %30, 1
  %32 = load i32, i32* %18, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* %19, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %20, align 4
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %21, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %22, align 4
  %40 = load i32, i32* %16, align 4
  %41 = sdiv i32 8, %40
  store i32 %41, i32* %23, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %21, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %50, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %49, i64 %57
  store i32* %58, i32** %17, align 8
  br label %59

59:                                               ; preds = %211, %8
  %60 = load i32, i32* %12, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %214

62:                                               ; preds = %59
  %63 = load i32, i32* %16, align 4
  %64 = sub nsw i32 8, %63
  store i32 %64, i32* %24, align 4
  br label %65

65:                                               ; preds = %207, %62
  %66 = load i32, i32* %24, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %211

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %24, align 4
  %71 = lshr i32 %69, %70
  %72 = load i32, i32* %19, align 4
  %73 = and i32 %71, %72
  %74 = load i32*, i32** %17, align 8
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %73
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %20, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %20, align 4
  br label %82

82:                                               ; preds = %205, %68
  %83 = load i32, i32* %20, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %206

88:                                               ; preds = %82
  %89 = load i32, i32* %21, align 4
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %21, align 4
  store i32 0, i32* %20, align 4
  %91 = load i32, i32* %21, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %21, align 4
  %98 = load i32, i32* %22, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %22, align 4
  %100 = load i32, i32* %22, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp sge i32 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  br label %215

106:                                              ; preds = %93
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 %108, %107
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %19, align 4
  %112 = shl i32 %111, %110
  store i32 %112, i32* %19, align 4
  br label %113

113:                                              ; preds = %106, %88
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32**, i32*** %115, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %21, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %119, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %118, i64 %126
  store i32* %127, i32** %17, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %205

132:                                              ; preds = %113
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %23, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp sge i32 %135, %138
  br i1 %139, label %140, label %205

140:                                              ; preds = %132
  %141 = load i32, i32* %23, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %205

146:                                              ; preds = %140
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %23, align 4
  %151 = srem i32 %149, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %205

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %180, %153
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* %23, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %183

158:                                              ; preds = %154
  %159 = load i32, i32* %24, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %165

163:                                              ; preds = %158
  %164 = load i32, i32* %24, align 4
  br label %165

165:                                              ; preds = %163, %162
  %166 = phi i32 [ 8, %162 ], [ %164, %163 ]
  %167 = load i32, i32* %16, align 4
  %168 = sub nsw i32 %166, %167
  store i32 %168, i32* %24, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %24, align 4
  %171 = lshr i32 %169, %170
  %172 = load i32, i32* %19, align 4
  %173 = and i32 %171, %172
  %174 = load i32*, i32** %17, align 8
  %175 = load i32, i32* %20, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %173
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %165
  %181 = load i32, i32* %20, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %20, align 4
  br label %154

183:                                              ; preds = %154
  %184 = load i32*, i32** %17, align 8
  %185 = load i32, i32* %20, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %23, align 4
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %20, align 4
  %193 = sub nsw i32 %191, %192
  %194 = call i32 @av_memcpy_backptr(i32* %187, i32 %188, i32 %193)
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %23, align 4
  %199 = sdiv i32 %197, %198
  %200 = load i32, i32* %12, align 4
  %201 = sub nsw i32 %200, %199
  store i32 %201, i32* %12, align 4
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %20, align 4
  br label %205

205:                                              ; preds = %183, %146, %140, %132, %113
  br label %82

206:                                              ; preds = %82
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* %24, align 4
  %210 = sub nsw i32 %209, %208
  store i32 %210, i32* %24, align 4
  br label %65

211:                                              ; preds = %65
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %12, align 4
  br label %59

214:                                              ; preds = %59
  br label %215

215:                                              ; preds = %214, %105
  %216 = load i32, i32* %20, align 4
  %217 = load i32*, i32** %13, align 8
  store i32 %216, i32* %217, align 4
  %218 = load i32, i32* %21, align 4
  %219 = load i32*, i32** %14, align 8
  store i32 %218, i32* %219, align 4
  %220 = load i32, i32* %22, align 4
  %221 = load i32*, i32** %15, align 8
  store i32 %220, i32* %221, align 4
  ret void
}

declare dso_local i32 @av_memcpy_backptr(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
