; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1dec.c_decode_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1dec.c_decode_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32)* @decode_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_plane(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32*], align 16
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  store i32* %25, i32** %26, align 16
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = getelementptr inbounds i32, i32* %32, i64 6
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 1
  store i32* %34, i32** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 6
  %43 = mul nsw i32 2, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memset(i32* %40, i32 0, i32 %46)
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %220, %7
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %223

52:                                               ; preds = %48
  %53 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %54 = load i32*, i32** %53, align 16
  store i32* %54, i32** %19, align 8
  %55 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  store i32* %56, i32** %57, align 16
  %58 = load i32*, i32** %19, align 8
  %59 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 1
  store i32* %58, i32** %59, align 8
  %60 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %61 = load i32*, i32** %60, align 16
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 -1
  store i32 %63, i32* %66, align 4
  %67 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %68 = load i32*, i32** %67, align 16
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %75 = load i32*, i32** %74, align 16
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %73, i32* %78, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %83, 8
  br i1 %84, label %85, label %121

85:                                               ; preds = %52
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @decode_line(%struct.TYPE_6__* %86, i32 %87, i32** %88, i32 %89, i32 8)
  store i32 %90, i32* %20, align 4
  %91 = load i32, i32* %20, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* %20, align 4
  store i32 %94, i32* %8, align 4
  br label %224

95:                                               ; preds = %85
  store i32 0, i32* %16, align 4
  br label %96

96:                                               ; preds = %117, %95
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %96
  %101 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %15, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %17, align 4
  %113 = mul nsw i32 %111, %112
  %114 = add nsw i32 %110, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %107, i64 %115
  store i32 %106, i32* %116, align 4
  br label %117

117:                                              ; preds = %100
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %96

120:                                              ; preds = %96
  br label %219

121:                                              ; preds = %52
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %123 = load i32, i32* %11, align 4
  %124 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @decode_line(%struct.TYPE_6__* %122, i32 %123, i32** %124, i32 %125, i32 %130)
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %21, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %121
  %135 = load i32, i32* %21, align 4
  store i32 %135, i32* %8, align 4
  br label %224

136:                                              ; preds = %121
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %136
  store i32 0, i32* %16, align 4
  br label %142

142:                                              ; preds = %164, %141
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %167

146:                                              ; preds = %142
  %147 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %10, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %17, align 4
  %156 = mul nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %15, align 4
  %161 = mul nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %158, i64 %162
  store i32 %152, i32* %163, align 4
  br label %164

164:                                              ; preds = %146
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %16, align 4
  br label %142

167:                                              ; preds = %142
  br label %218

168:                                              ; preds = %136
  store i32 0, i32* %16, align 4
  br label %169

169:                                              ; preds = %214, %168
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %217

173:                                              ; preds = %169
  %174 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %16, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 16, %184
  %186 = shl i32 %179, %185
  %187 = getelementptr inbounds [2 x i32*], [2 x i32*]* %18, i64 0, i64 0
  %188 = getelementptr inbounds i32*, i32** %187, i64 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 2, %198
  %200 = sub nsw i32 %199, 16
  %201 = ashr i32 %193, %200
  %202 = or i32 %186, %201
  %203 = load i32*, i32** %10, align 8
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %17, align 4
  %206 = mul nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %203, i64 %207
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* %15, align 4
  %211 = mul nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %208, i64 %212
  store i32 %202, i32* %213, align 4
  br label %214

214:                                              ; preds = %173
  %215 = load i32, i32* %16, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %16, align 4
  br label %169

217:                                              ; preds = %169
  br label %218

218:                                              ; preds = %217, %167
  br label %219

219:                                              ; preds = %218, %120
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %17, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %17, align 4
  br label %48

223:                                              ; preds = %48
  store i32 0, i32* %8, align 4
  br label %224

224:                                              ; preds = %223, %134, %93
  %225 = load i32, i32* %8, align 4
  ret i32 %225
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @decode_line(%struct.TYPE_6__*, i32, i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
