; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqx.c_hqx_decode_422a.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqx.c_hqx_decode_422a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i64, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32**, i32 }

@hqx_quants = common dso_local global i32** null, align 8
@hqx_quant_luma = common dso_local global i32 0, align 4
@hqx_quant_chroma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32)* @hqx_decode_422a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hqx_decode_422a(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %10, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32* %26, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @get_vlc2(i32* %27, i32 %31, i32 %35, i32 1)
  store i32 %36, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %49, %4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 12
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @memset(i32* %47, i32 0, i32 256)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %15, align 4
  br label %37

52:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %65, %52
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 12
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 -2048, i32* %64, align 4
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %53

68:                                               ; preds = %53
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %159

71:                                               ; preds = %68
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @get_bits1(i32* %77)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32**, i32*** @hqx_quants, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i64 @get_bits(i32* %81, i32 4)
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %12, align 8
  %85 = load i32, i32* %17, align 4
  %86 = shl i32 %85, 4
  %87 = load i32, i32* %17, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = and i32 %89, 3
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %79
  %93 = load i32, i32* %17, align 4
  %94 = or i32 %93, 1280
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %92, %79
  %96 = load i32, i32* %17, align 4
  %97 = and i32 %96, 12
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %17, align 4
  %101 = or i32 %100, 2560
  store i32 %101, i32* %17, align 4
  br label %102

102:                                              ; preds = %99, %95
  store i32 0, i32* %15, align 4
  br label %103

103:                                              ; preds = %155, %102
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %104, 12
  br i1 %105, label %106, label %158

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %15, align 4
  %111 = icmp eq i32 %110, 4
  br i1 %111, label %118, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %15, align 4
  %114 = icmp eq i32 %113, 8
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %15, align 4
  %117 = icmp eq i32 %116, 10
  br i1 %117, label %118, label %119

118:                                              ; preds = %115, %112, %109, %106
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %118, %115
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %15, align 4
  %122 = shl i32 1, %121
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %154

125:                                              ; preds = %119
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, 9
  store i32 %129, i32* %18, align 4
  %130 = load i32*, i32** %11, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32*, i32** %12, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @decode_block(i32* %130, i32* %136, i32* %137, i32 %140, i32* %147, i32* %14)
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %125
  %152 = load i32, i32* %16, align 4
  store i32 %152, i32* %5, align 4
  br label %260

153:                                              ; preds = %125
  br label %154

154:                                              ; preds = %153, %119
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %103

158:                                              ; preds = %103
  br label %159

159:                                              ; preds = %158, %68
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32**, i32*** %165, align 8
  %167 = getelementptr inbounds i32*, i32** %166, i64 0
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32**, i32*** %170, align 8
  %172 = getelementptr inbounds i32*, i32** %171, i64 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* @hqx_quant_luma, align 4
  %175 = call i32 @put_blocks(%struct.TYPE_8__* %160, i32 3, i32 %161, i32 %162, i32 %163, i32* %168, i32* %173, i32 %174)
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 8
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32**, i32*** %182, align 8
  %184 = getelementptr inbounds i32*, i32** %183, i64 1
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32**, i32*** %187, align 8
  %189 = getelementptr inbounds i32*, i32** %188, i64 3
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* @hqx_quant_luma, align 4
  %192 = call i32 @put_blocks(%struct.TYPE_8__* %176, i32 3, i32 %178, i32 %179, i32 %180, i32* %185, i32* %190, i32 %191)
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32**, i32*** %198, align 8
  %200 = getelementptr inbounds i32*, i32** %199, i64 4
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32**, i32*** %203, align 8
  %205 = getelementptr inbounds i32*, i32** %204, i64 6
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* @hqx_quant_luma, align 4
  %208 = call i32 @put_blocks(%struct.TYPE_8__* %193, i32 0, i32 %194, i32 %195, i32 %196, i32* %201, i32* %206, i32 %207)
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 8
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %13, align 4
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32**, i32*** %215, align 8
  %217 = getelementptr inbounds i32*, i32** %216, i64 5
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32**, i32*** %220, align 8
  %222 = getelementptr inbounds i32*, i32** %221, i64 7
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* @hqx_quant_luma, align 4
  %225 = call i32 @put_blocks(%struct.TYPE_8__* %209, i32 0, i32 %211, i32 %212, i32 %213, i32* %218, i32* %223, i32 %224)
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %227 = load i32, i32* %8, align 4
  %228 = ashr i32 %227, 1
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32**, i32*** %232, align 8
  %234 = getelementptr inbounds i32*, i32** %233, i64 8
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32**, i32*** %237, align 8
  %239 = getelementptr inbounds i32*, i32** %238, i64 9
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* @hqx_quant_chroma, align 4
  %242 = call i32 @put_blocks(%struct.TYPE_8__* %226, i32 2, i32 %228, i32 %229, i32 %230, i32* %235, i32* %240, i32 %241)
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %244 = load i32, i32* %8, align 4
  %245 = ashr i32 %244, 1
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* %13, align 4
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32**, i32*** %249, align 8
  %251 = getelementptr inbounds i32*, i32** %250, i64 10
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i32**, i32*** %254, align 8
  %256 = getelementptr inbounds i32*, i32** %255, i64 11
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* @hqx_quant_chroma, align 4
  %259 = call i32 @put_blocks(%struct.TYPE_8__* %243, i32 1, i32 %245, i32 %246, i32 %247, i32* %252, i32* %257, i32 %258)
  store i32 0, i32* %5, align 4
  br label %260

260:                                              ; preds = %159, %151
  %261 = load i32, i32* %5, align 4
  ret i32 %261
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @decode_block(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @put_blocks(%struct.TYPE_8__*, i32, i32, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
