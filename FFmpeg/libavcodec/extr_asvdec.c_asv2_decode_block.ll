; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_asvdec.c_asv2_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_asvdec.c_asv2_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }

@dc_ccp_vlc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@VLC_BITS = common dso_local global i32 0, align 4
@ac_ccp_vlc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @asv2_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asv2_decode_block(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = call i32 @asv2_get_bits(i32* %10, i32 4)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = call i32 @asv2_get_bits(i32* %13, i32 8)
  %15 = mul nsw i32 8, %14
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dc_ccp_vlc, i32 0, i32 0), align 4
  %21 = load i32, i32* @VLC_BITS, align 4
  %22 = call i8* @get_vlc2(i32* %19, i32 %20, i32 %21, i32 1)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %96

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = call i32 @asv2_get_level(i32* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %33, %38
  %40 = ashr i32 %39, 4
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  store i32 %40, i32* %48, align 4
  br label %49

49:                                               ; preds = %30, %26
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 2
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = call i32 @asv2_get_level(i32* %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %56, %61
  %63 = ashr i32 %62, 4
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %64, i64 %70
  store i32 %63, i32* %71, align 4
  br label %72

72:                                               ; preds = %53, %49
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = call i32 @asv2_get_level(i32* %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %79, %84
  %86 = ashr i32 %85, 4
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 3
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %87, i64 %93
  store i32 %86, i32* %94, align 4
  br label %95

95:                                               ; preds = %76, %72
  br label %96

96:                                               ; preds = %95, %2
  store i32 1, i32* %5, align 4
  br label %97

97:                                               ; preds = %237, %96
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %240

102:                                              ; preds = %97
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ac_ccp_vlc, i32 0, i32 0), align 4
  %106 = load i32, i32* @VLC_BITS, align 4
  %107 = call i8* @get_vlc2(i32* %104, i32 %105, i32 %106, i32 1)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %236

111:                                              ; preds = %102
  %112 = load i32, i32* %8, align 4
  %113 = and i32 %112, 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %111
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = call i32 @asv2_get_level(i32* %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = mul nsw i32 4, %122
  %124 = add nsw i32 %123, 0
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %118, %127
  %129 = ashr i32 %128, 4
  %130 = load i32*, i32** %4, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = mul nsw i32 4, %135
  %137 = add nsw i32 %136, 0
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %134, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i32, i32* %130, i64 %140
  store i32 %129, i32* %141, align 4
  br label %142

142:                                              ; preds = %115, %111
  %143 = load i32, i32* %8, align 4
  %144 = and i32 %143, 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %173

146:                                              ; preds = %142
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = call i32 @asv2_get_level(i32* %148)
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = mul nsw i32 4, %153
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %149, %158
  %160 = ashr i32 %159, 4
  %161 = load i32*, i32** %4, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = mul nsw i32 4, %166
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %165, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i32, i32* %161, i64 %171
  store i32 %160, i32* %172, align 4
  br label %173

173:                                              ; preds = %146, %142
  %174 = load i32, i32* %8, align 4
  %175 = and i32 %174, 2
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %204

177:                                              ; preds = %173
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = call i32 @asv2_get_level(i32* %179)
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = mul nsw i32 4, %184
  %186 = add nsw i32 %185, 2
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %180, %189
  %191 = ashr i32 %190, 4
  %192 = load i32*, i32** %4, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i64*, i64** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = mul nsw i32 4, %197
  %199 = add nsw i32 %198, 2
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %196, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds i32, i32* %192, i64 %202
  store i32 %191, i32* %203, align 4
  br label %204

204:                                              ; preds = %177, %173
  %205 = load i32, i32* %8, align 4
  %206 = and i32 %205, 1
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %235

208:                                              ; preds = %204
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = call i32 @asv2_get_level(i32* %210)
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = mul nsw i32 4, %215
  %217 = add nsw i32 %216, 3
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %214, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %211, %220
  %222 = ashr i32 %221, 4
  %223 = load i32*, i32** %4, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i64*, i64** %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = mul nsw i32 4, %228
  %230 = add nsw i32 %229, 3
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %227, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds i32, i32* %223, i64 %233
  store i32 %222, i32* %234, align 4
  br label %235

235:                                              ; preds = %208, %204
  br label %236

236:                                              ; preds = %235, %102
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %5, align 4
  br label %97

240:                                              ; preds = %97
  ret i32 0
}

declare dso_local i32 @asv2_get_bits(i32*, i32) #1

declare dso_local i8* @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @asv2_get_level(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
