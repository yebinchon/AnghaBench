; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adpcm.c_adpcm_swf_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adpcm.c_adpcm_swf_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@swf_index_tables = common dso_local global i64** null, align 8
@ff_adpcm_step_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32, i32*)* @adpcm_swf_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adpcm_swf_decode(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %26, 8
  store i32 %27, i32* %16, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @init_get_bits(i32* %10, i32* %28, i32 %29)
  %31 = call i32 @get_bits(i32* %10, i32 2)
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %14, align 4
  %33 = load i64**, i64*** @swf_index_tables, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sub nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64*, i64** %33, i64 %36
  %38 = load i64*, i64** %37, align 8
  store i64* %38, i64** %11, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sub nsw i32 %39, 2
  %41 = shl i32 1, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %14, align 4
  %43 = sub nsw i32 %42, 1
  %44 = shl i32 1, %43
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %240, %4
  %46 = call i32 @get_bits_count(i32* %10)
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 22, %50
  %52 = sub nsw i32 %47, %51
  %53 = icmp sle i32 %46, %52
  br i1 %53, label %54, label %241

54:                                               ; preds = %45
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %80, %54
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  %62 = call i32 @get_sbits(i32* %10, i32 16)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %8, align 8
  store i32 %62, i32* %70, align 4
  %72 = call i32 @get_bits(i32* %10, i32 6)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %72, i32* %79, align 4
  br label %80

80:                                               ; preds = %61
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  br label %55

83:                                               ; preds = %55
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %237, %83
  %85 = call i32 @get_bits_count(i32* %10)
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %87, %90
  %92 = sub nsw i32 %86, %91
  %93 = icmp sle i32 %85, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %95, 4095
  br label %97

97:                                               ; preds = %94, %84
  %98 = phi i1 [ false, %84 ], [ %96, %94 ]
  br i1 %98, label %99, label %240

99:                                               ; preds = %97
  store i32 0, i32* %18, align 4
  br label %100

100:                                              ; preds = %233, %99
  %101 = load i32, i32* %18, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %236

106:                                              ; preds = %100
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @get_bits(i32* %10, i32 %107)
  store i32 %108, i32* %19, align 4
  %109 = load i32*, i32** @ff_adpcm_step_table, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %109, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %22, align 4
  br label %122

122:                                              ; preds = %136, %106
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* %22, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %21, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %21, align 4
  br label %131

131:                                              ; preds = %127, %122
  %132 = load i32, i32* %20, align 4
  %133 = ashr i32 %132, 1
  store i32 %133, i32* %20, align 4
  %134 = load i32, i32* %22, align 4
  %135 = ashr i32 %134, 1
  store i32 %135, i32* %22, align 4
  br label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %22, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %122, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %21, align 4
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %13, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %139
  %148 = load i32, i32* %21, align 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %156, %148
  store i32 %157, i32* %155, align 4
  br label %169

158:                                              ; preds = %139
  %159 = load i32, i32* %21, align 4
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, %159
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %158, %147
  %170 = load i64*, i64** %11, align 8
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %13, align 4
  %173 = xor i32 %172, -1
  %174 = and i32 %171, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %170, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = load i32, i32* %18, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %186, %177
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %184, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = call i64 @av_clip(i64 %197, i32 0, i32 88)
  %199 = trunc i64 %198 to i32
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = load i32, i32* %18, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  store i32 %199, i32* %206, align 4
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %208, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @av_clip_int16(i32 %214)
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = load i32, i32* %18, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  store i32 %215, i32* %222, align 4
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = load i32, i32* %18, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %8, align 8
  %232 = getelementptr inbounds i32, i32* %231, i32 1
  store i32* %232, i32** %8, align 8
  store i32 %230, i32* %231, align 4
  br label %233

233:                                              ; preds = %169
  %234 = load i32, i32* %18, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %18, align 4
  br label %100

236:                                              ; preds = %100
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %15, align 4
  br label %84

240:                                              ; preds = %97
  br label %45

241:                                              ; preds = %45
  ret void
}

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @get_sbits(i32*, i32) #1

declare dso_local i64 @av_clip(i64, i32, i32) #1

declare dso_local i32 @av_clip_int16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
