; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_convert.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i64, i8* }

@LCT_PALETTE = common dso_local global i64 0, align 8
@LCT_RGBA = common dso_local global i64 0, align 8
@LCT_RGB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lodepng_convert(i8* %0, i8* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  %25 = alloca i16, align 2
  %26 = alloca i16, align 2
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = mul i32 %31, %32
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %19, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %37 = call i64 @lodepng_color_mode_equal(%struct.TYPE_12__* %35, %struct.TYPE_12__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %7
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %43 = call i64 @lodepng_get_raw_size(i32 %40, i32 %41, %struct.TYPE_12__* %42)
  store i64 %43, i64* %20, align 8
  store i64 0, i64* %17, align 8
  br label %44

44:                                               ; preds = %56, %39
  %45 = load i64, i64* %17, align 8
  %46 = load i64, i64* %20, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %17, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %17, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 %52, i8* %55, align 1
  br label %56

56:                                               ; preds = %48
  %57 = load i64, i64* %17, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %17, align 8
  br label %44

59:                                               ; preds = %44
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %8, align 4
  br label %232

61:                                               ; preds = %7
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LCT_PALETTE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %113

67:                                               ; preds = %61
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 1, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %21, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %21, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %21, align 8
  br label %82

82:                                               ; preds = %78, %67
  %83 = call i32 @color_tree_init(i32* %18)
  store i64 0, i64* %17, align 8
  br label %84

84:                                               ; preds = %109, %82
  %85 = load i64, i64* %17, align 8
  %86 = load i64, i64* %21, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %84
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* %17, align 8
  %93 = mul i64 %92, 4
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8* %94, i8** %22, align 8
  %95 = load i8*, i8** %22, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %22, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = load i8*, i8** %22, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %22, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 3
  %106 = load i8, i8* %105, align 1
  %107 = load i64, i64* %17, align 8
  %108 = call i32 @color_tree_add(i32* %18, i8 zeroext %97, i8 zeroext %100, i8 zeroext %103, i8 zeroext %106, i64 %107)
  br label %109

109:                                              ; preds = %88
  %110 = load i64, i64* %17, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %17, align 8
  br label %84

112:                                              ; preds = %84
  br label %113

113:                                              ; preds = %112, %61
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 16
  br i1 %117, label %118, label %153

118:                                              ; preds = %113
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 16
  br i1 %122, label %123, label %153

123:                                              ; preds = %118
  store i64 0, i64* %17, align 8
  br label %124

124:                                              ; preds = %149, %123
  %125 = load i64, i64* %17, align 8
  %126 = load i64, i64* %19, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %152

128:                                              ; preds = %124
  store i16 0, i16* %23, align 2
  store i16 0, i16* %24, align 2
  store i16 0, i16* %25, align 2
  store i16 0, i16* %26, align 2
  %129 = load i8*, i8** %10, align 8
  %130 = load i64, i64* %17, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %132 = call i32 @getPixelColorRGBA16(i16* %23, i16* %24, i16* %25, i16* %26, i8* %129, i64 %130, %struct.TYPE_12__* %131)
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %152

136:                                              ; preds = %128
  %137 = load i8*, i8** %9, align 8
  %138 = load i64, i64* %17, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %140 = load i16, i16* %23, align 2
  %141 = load i16, i16* %24, align 2
  %142 = load i16, i16* %25, align 2
  %143 = load i16, i16* %26, align 2
  %144 = call i32 @rgba16ToPixel(i8* %137, i64 %138, %struct.TYPE_12__* %139, i16 zeroext %140, i16 zeroext %141, i16 zeroext %142, i16 zeroext %143)
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  br label %152

148:                                              ; preds = %136
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %17, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %17, align 8
  br label %124

152:                                              ; preds = %147, %135, %124
  br label %222

153:                                              ; preds = %118, %113
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 8
  br i1 %157, label %158, label %171

158:                                              ; preds = %153
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @LCT_RGBA, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %158
  %165 = load i8*, i8** %9, align 8
  %166 = load i64, i64* %19, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @getPixelColorsRGBA8(i8* %165, i64 %166, i32 1, i8* %167, %struct.TYPE_12__* %168, i32 %169)
  store i32 %170, i32* %16, align 4
  br label %221

171:                                              ; preds = %158, %153
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 8
  br i1 %175, label %176, label %189

176:                                              ; preds = %171
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @LCT_RGB, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %176
  %183 = load i8*, i8** %9, align 8
  %184 = load i64, i64* %19, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %187 = load i32, i32* %15, align 4
  %188 = call i32 @getPixelColorsRGBA8(i8* %183, i64 %184, i32 0, i8* %185, %struct.TYPE_12__* %186, i32 %187)
  store i32 %188, i32* %16, align 4
  br label %220

189:                                              ; preds = %176, %171
  store i8 0, i8* %27, align 1
  store i8 0, i8* %28, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %30, align 1
  store i64 0, i64* %17, align 8
  br label %190

190:                                              ; preds = %216, %189
  %191 = load i64, i64* %17, align 8
  %192 = load i64, i64* %19, align 8
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %194, label %219

194:                                              ; preds = %190
  %195 = load i8*, i8** %10, align 8
  %196 = load i64, i64* %17, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %198 = load i32, i32* %15, align 4
  %199 = call i32 @getPixelColorRGBA8(i8* %27, i8* %28, i8* %29, i8* %30, i8* %195, i64 %196, %struct.TYPE_12__* %197, i32 %198)
  store i32 %199, i32* %16, align 4
  %200 = load i32, i32* %16, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  br label %219

203:                                              ; preds = %194
  %204 = load i8*, i8** %9, align 8
  %205 = load i64, i64* %17, align 8
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %207 = load i8, i8* %27, align 1
  %208 = load i8, i8* %28, align 1
  %209 = load i8, i8* %29, align 1
  %210 = load i8, i8* %30, align 1
  %211 = call i32 @rgba8ToPixel(i8* %204, i64 %205, %struct.TYPE_12__* %206, i32* %18, i8 zeroext %207, i8 zeroext %208, i8 zeroext %209, i8 zeroext %210)
  store i32 %211, i32* %16, align 4
  %212 = load i32, i32* %16, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %203
  br label %219

215:                                              ; preds = %203
  br label %216

216:                                              ; preds = %215
  %217 = load i64, i64* %17, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %17, align 8
  br label %190

219:                                              ; preds = %214, %202, %190
  br label %220

220:                                              ; preds = %219, %182
  br label %221

221:                                              ; preds = %220, %164
  br label %222

222:                                              ; preds = %221, %152
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @LCT_PALETTE, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = call i32 @color_tree_cleanup(i32* %18)
  br label %230

230:                                              ; preds = %228, %222
  %231 = load i32, i32* %16, align 4
  store i32 %231, i32* %8, align 4
  br label %232

232:                                              ; preds = %230, %59
  %233 = load i32, i32* %8, align 4
  ret i32 %233
}

declare dso_local i64 @lodepng_color_mode_equal(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i64 @lodepng_get_raw_size(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @color_tree_init(i32*) #1

declare dso_local i32 @color_tree_add(i32*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i64) #1

declare dso_local i32 @getPixelColorRGBA16(i16*, i16*, i16*, i16*, i8*, i64, %struct.TYPE_12__*) #1

declare dso_local i32 @rgba16ToPixel(i8*, i64, %struct.TYPE_12__*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @getPixelColorsRGBA8(i8*, i64, i32, i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @getPixelColorRGBA8(i8*, i8*, i8*, i8*, i8*, i64, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @rgba8ToPixel(i8*, i64, %struct.TYPE_12__*, i32*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @color_tree_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
