; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss12.c_decode_region_masked.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss12.c_decode_region_masked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32*)* @decode_region_masked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_region_masked(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %19, align 4
  %32 = mul nsw i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %20, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %34, i64 %40
  store i32* %41, i32** %27, align 8
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %16, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %42, %45
  %47 = load i32*, i32** %15, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %15, align 8
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %18, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %50, %53
  %55 = load i32*, i32** %17, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %17, align 8
  store i32 0, i32* %25, align 4
  br label %58

58:                                               ; preds = %240, %11
  %59 = load i32, i32* %25, align 4
  %60 = load i32, i32* %22, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %243

62:                                               ; preds = %58
  store i32 0, i32* %24, align 4
  br label %63

63:                                               ; preds = %222, %62
  %64 = load i32, i32* %24, align 4
  %65 = load i32, i32* %21, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %225

67:                                               ; preds = %63
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AV_EF_EXPLODE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %122

76:                                               ; preds = %67
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %102

81:                                               ; preds = %76
  %82 = load i32*, i32** %17, align 8
  %83 = load i32, i32* %24, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %102

88:                                               ; preds = %81
  %89 = load i32*, i32** %17, align 8
  %90 = load i32, i32* %24, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 2
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load i32*, i32** %17, align 8
  %97 = load i32, i32* %24, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 4
  br i1 %101, label %121, label %102

102:                                              ; preds = %95, %88, %81, %76
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %122, label %107

107:                                              ; preds = %102
  %108 = load i32*, i32** %17, align 8
  %109 = load i32, i32* %24, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 128
  br i1 %113, label %114, label %122

114:                                              ; preds = %107
  %115 = load i32*, i32** %17, align 8
  %116 = load i32, i32* %24, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 255
  br i1 %120, label %121, label %122

121:                                              ; preds = %114, %95
  store i32 -1, i32* %12, align 4
  br label %244

122:                                              ; preds = %114, %107, %102, %67
  %123 = load i32*, i32** %17, align 8
  %124 = load i32, i32* %24, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %24, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %25, align 4
  %136 = add nsw i32 %134, %135
  %137 = call i32 @copy_rectangles(%struct.TYPE_7__* %130, i32 %133, i32 %136, i32 1, i32 1)
  br label %221

138:                                              ; preds = %122
  %139 = load i32*, i32** %17, align 8
  %140 = load i32, i32* %24, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 4
  br i1 %144, label %145, label %157

145:                                              ; preds = %138
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %24, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %20, align 4
  %151 = load i32, i32* %25, align 4
  %152 = add nsw i32 %150, %151
  %153 = call i64 @motion_compensation(%struct.TYPE_7__* %146, i32 %149, i32 %152, i32 1, i32 1)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  store i32 -1, i32* %12, align 4
  br label %244

156:                                              ; preds = %145
  br label %220

157:                                              ; preds = %138
  %158 = load i32*, i32** %17, align 8
  %159 = load i32, i32* %24, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 128
  br i1 %163, label %164, label %219

164:                                              ; preds = %157
  %165 = load i32, i32* %24, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %25, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = load i32*, i32** %14, align 8
  %172 = load i32*, i32** %23, align 8
  %173 = call i32 @decode_pixel(i32* %171, i32* %172, i32* null, i32 0, i32 0)
  store i32 %173, i32* %26, align 4
  br label %189

174:                                              ; preds = %167, %164
  %175 = load i32*, i32** %14, align 8
  %176 = load i32*, i32** %23, align 8
  %177 = load i32*, i32** %15, align 8
  %178 = load i32, i32* %24, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %24, align 4
  %183 = load i32, i32* %25, align 4
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* %24, align 4
  %186 = sub nsw i32 %184, %185
  %187 = sub nsw i32 %186, 1
  %188 = call i32 @decode_pixel_in_context(i32* %175, i32* %176, i32* %180, i32 %181, i32 %182, i32 %183, i32 %187)
  store i32 %188, i32* %26, align 4
  br label %189

189:                                              ; preds = %174, %170
  %190 = load i32, i32* %26, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load i32, i32* %26, align 4
  store i32 %193, i32* %12, align 4
  br label %244

194:                                              ; preds = %189
  %195 = load i32, i32* %26, align 4
  %196 = load i32*, i32** %15, align 8
  %197 = load i32, i32* %24, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %195, i32* %199, align 4
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %218

204:                                              ; preds = %194
  %205 = load i32*, i32** %27, align 8
  %206 = load i32, i32* %24, align 4
  %207 = mul nsw i32 %206, 3
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %26, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @AV_WB24(i32* %209, i32 %216)
  br label %218

218:                                              ; preds = %204, %194
  br label %219

219:                                              ; preds = %218, %157
  br label %220

220:                                              ; preds = %219, %156
  br label %221

221:                                              ; preds = %220, %129
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %24, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %24, align 4
  br label %63

225:                                              ; preds = %63
  %226 = load i32, i32* %16, align 4
  %227 = load i32*, i32** %15, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  store i32* %229, i32** %15, align 8
  %230 = load i32, i32* %18, align 4
  %231 = load i32*, i32** %17, align 8
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  store i32* %233, i32** %17, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load i32*, i32** %27, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  store i32* %239, i32** %27, align 8
  br label %240

240:                                              ; preds = %225
  %241 = load i32, i32* %25, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %25, align 4
  br label %58

243:                                              ; preds = %58
  store i32 0, i32* %12, align 4
  br label %244

244:                                              ; preds = %243, %192, %155, %121
  %245 = load i32, i32* %12, align 4
  ret i32 %245
}

declare dso_local i32 @copy_rectangles(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i64 @motion_compensation(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @decode_pixel(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @decode_pixel_in_context(i32*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @AV_WB24(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
