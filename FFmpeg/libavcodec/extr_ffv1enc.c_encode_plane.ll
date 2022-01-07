; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1enc.c_encode_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1enc.c_encode_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i32, i32, i32, i32)* @encode_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_plane(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
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
  %21 = alloca [3 x i32*], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 3, i32 2
  store i32 %27, i32* %20, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %20, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 6
  %36 = mul nsw i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memset(i32* %32, i32 0, i32 %39)
  store i32 0, i32* %17, align 4
  br label %41

41:                                               ; preds = %206, %7
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %209

45:                                               ; preds = %41
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %70, %45
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %20, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 6
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %18, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %17, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* %20, align 4
  %62 = srem i32 %60, %61
  %63 = mul nsw i32 %55, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %53, i64 %64
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 %68
  store i32* %66, i32** %69, align 8
  br label %70

70:                                               ; preds = %50
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %18, align 4
  br label %46

73:                                               ; preds = %46
  %74 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 0
  %79 = load i32*, i32** %78, align 16
  %80 = getelementptr inbounds i32, i32* %79, i64 -1
  store i32 %77, i32* %80, align 4
  %81 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp sle i32 %95, 8
  br i1 %96, label %97, label %132

97:                                               ; preds = %73
  store i32 0, i32* %16, align 4
  br label %98

98:                                               ; preds = %119, %97
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %98
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %15, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %17, align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %106, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %103, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 0
  %115 = load i32*, i32** %114, align 16
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %113, i32* %118, align 4
  br label %119

119:                                              ; preds = %102
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %16, align 4
  br label %98

122:                                              ; preds = %98
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %124 = load i32, i32* %11, align 4
  %125 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 0
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @encode_line(%struct.TYPE_4__* %123, i32 %124, i32** %125, i32 %126, i32 8)
  store i32 %127, i32* %19, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i32, i32* %19, align 4
  store i32 %130, i32* %8, align 4
  br label %210

131:                                              ; preds = %122
  br label %205

132:                                              ; preds = %73
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %162

137:                                              ; preds = %132
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %158, %137
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %161

142:                                              ; preds = %138
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %17, align 4
  %146 = mul nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 0
  %154 = load i32*, i32** %153, align 16
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %152, i32* %157, align 4
  br label %158

158:                                              ; preds = %142
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %16, align 4
  br label %138

161:                                              ; preds = %138
  br label %192

162:                                              ; preds = %132
  store i32 0, i32* %16, align 4
  br label %163

163:                                              ; preds = %188, %162
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %191

167:                                              ; preds = %163
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %17, align 4
  %171 = mul nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = sub nsw i32 16, %180
  %182 = ashr i32 %177, %181
  %183 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 0
  %184 = load i32*, i32** %183, align 16
  %185 = load i32, i32* %16, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %182, i32* %187, align 4
  br label %188

188:                                              ; preds = %167
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %16, align 4
  br label %163

191:                                              ; preds = %163
  br label %192

192:                                              ; preds = %191, %161
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %194 = load i32, i32* %11, align 4
  %195 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 0
  %196 = load i32, i32* %14, align 4
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @encode_line(%struct.TYPE_4__* %193, i32 %194, i32** %195, i32 %196, i32 %199)
  store i32 %200, i32* %19, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %192
  %203 = load i32, i32* %19, align 4
  store i32 %203, i32* %8, align 4
  br label %210

204:                                              ; preds = %192
  br label %205

205:                                              ; preds = %204, %131
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %17, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %17, align 4
  br label %41

209:                                              ; preds = %41
  store i32 0, i32* %8, align 4
  br label %210

210:                                              ; preds = %209, %202, %129
  %211 = load i32, i32* %8, align 4
  ret i32 %211
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @encode_line(%struct.TYPE_4__*, i32, i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
