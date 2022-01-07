; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegenc_common.c_ff_mjpeg_escape_FF.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegenc_common.c_ff_mjpeg_escape_FF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_mjpeg_escape_FF(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = sub i64 0, %21
  %23 = and i64 %22, 3
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = call i32 @put_bits_count(%struct.TYPE_7__* %25)
  %27 = sub nsw i32 0, %26
  %28 = and i32 %27, 7
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @put_bits(%struct.TYPE_7__* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %31, %2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = call i32 @flush_put_bits(%struct.TYPE_7__* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = call i32 @put_bits_count(%struct.TYPE_7__* %41)
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 %43, 8
  %45 = sub nsw i32 %42, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 7
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @av_assert1(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %51, 3
  store i32 %52, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %74, %38
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i1 [ false, %53 ], [ %60, %57 ]
  br i1 %62, label %63, label %77

63:                                               ; preds = %61
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 255
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %63
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %53

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %155, %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %80, 15
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %158

83:                                               ; preds = %78
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = ashr i32 %90, 4
  %92 = and i32 %89, %91
  %93 = and i32 %92, 252645135
  %94 = add nsw i32 %93, 16843009
  %95 = and i32 %94, 269488144
  store i32 %95, i32* %11, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = ashr i32 %103, 4
  %105 = and i32 %102, %104
  %106 = and i32 %105, 252645135
  %107 = add nsw i32 %106, 16843009
  %108 = and i32 %107, 269488144
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %11, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = ashr i32 %118, 4
  %120 = and i32 %117, %119
  %121 = and i32 %120, 252645135
  %122 = add nsw i32 %121, 16843009
  %123 = and i32 %122, 269488144
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %11, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 12
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = ashr i32 %133, 4
  %135 = and i32 %132, %134
  %136 = and i32 %135, 252645135
  %137 = add nsw i32 %136, 16843009
  %138 = and i32 %137, 269488144
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = ashr i32 %141, 4
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = ashr i32 %143, 16
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = ashr i32 %147, 8
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = and i32 %151, 255
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %83
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 16
  store i32 %157, i32* %6, align 4
  br label %78

158:                                              ; preds = %78
  br label %159

159:                                              ; preds = %174, %158
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %159
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 255
  br i1 %169, label %170, label %173

170:                                              ; preds = %163
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %170, %163
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  br label %159

177:                                              ; preds = %159
  %178 = load i32, i32* %7, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  br label %220

181:                                              ; preds = %177
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %183 = call i32 @flush_put_bits(%struct.TYPE_7__* %182)
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @skip_put_bytes(%struct.TYPE_7__* %184, i32 %185)
  %187 = load i32, i32* %5, align 4
  %188 = sub nsw i32 %187, 1
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %217, %181
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %220

192:                                              ; preds = %189
  %193 = load i32*, i32** %8, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %13, align 4
  %198 = load i32, i32* %13, align 4
  %199 = icmp eq i32 %198, 255
  br i1 %199, label %200, label %209

200:                                              ; preds = %192
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %201, i64 %205
  store i32 0, i32* %206, align 4
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %7, align 4
  br label %209

209:                                              ; preds = %200, %192
  %210 = load i32, i32* %13, align 4
  %211 = load i32*, i32** %8, align 8
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %211, i64 %215
  store i32 %210, i32* %216, align 4
  br label %217

217:                                              ; preds = %209
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %6, align 4
  br label %189

220:                                              ; preds = %180, %189
  ret void
}

declare dso_local i32 @put_bits_count(%struct.TYPE_7__*) #1

declare dso_local i32 @put_bits(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @flush_put_bits(%struct.TYPE_7__*) #1

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @skip_put_bytes(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
