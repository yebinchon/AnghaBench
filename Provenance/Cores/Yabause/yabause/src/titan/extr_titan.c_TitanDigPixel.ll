; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanDigPixel.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanDigPixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i32)*, i32**, i64 (i32)*, %struct.PixelData*, %struct.PixelData** }
%struct.PixelData = type { i32, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@TITAN_SPRITE = common dso_local global i32 0, align 4
@tt_context = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@TITAN_MSB_SHADOW = common dso_local global i64 0, align 8
@Vdp2Regs = common dso_local global %struct.TYPE_4__* null, align 8
@TITAN_NORMAL_SHADOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @TitanDigPixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TitanDigPixel(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x %struct.PixelData], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = bitcast [2 x %struct.PixelData]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 64, i1 false)
  store i32 0, i32* %6, align 4
  store i32 7, i32* %7, align 4
  br label %12

12:                                               ; preds = %58, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = load i32, i32* @TITAN_SPRITE, align 4
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %54, %15
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %17
  %21 = load %struct.PixelData**, %struct.PixelData*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 4), align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.PixelData*, %struct.PixelData** %21, i64 %23
  %25 = load %struct.PixelData*, %struct.PixelData** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %25, i64 %27
  %29 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 %35
  %37 = load %struct.PixelData**, %struct.PixelData*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 4), align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.PixelData*, %struct.PixelData** %37, i64 %39
  %41 = load %struct.PixelData*, %struct.PixelData** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %41, i64 %43
  %45 = bitcast %struct.PixelData* %36 to i8*
  %46 = bitcast %struct.PixelData* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %45, i8* align 8 %46, i64 32, i1 false)
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %33
  br label %71

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52, %20
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  br label %17

57:                                               ; preds = %17
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %7, align 4
  br label %12

61:                                               ; preds = %12
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 %63
  %65 = load %struct.PixelData*, %struct.PixelData** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 3), align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %65, i64 %67
  %69 = bitcast %struct.PixelData* %64 to i8*
  %70 = bitcast %struct.PixelData* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %69, i8* align 8 %70, i64 32, i1 false)
  br label %71

71:                                               ; preds = %61, %51
  %72 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %73 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 0), align 8
  %78 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %79 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 1), align 8
  %82 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %83 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %81, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 %77(i32 %80, i32 %91)
  %93 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %94 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %76, %71
  %96 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %97 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 16
  %99 = load i64, i64* @TITAN_MSB_SHADOW, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %95
  %102 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %103 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, 16777215
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %101
  %108 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 1
  %109 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 1
  %114 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @TitanBlendPixelsTop(i32 536870912, i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %119 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  br label %126

120:                                              ; preds = %107
  %121 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 1
  %122 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %125 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %120, %112
  br label %221

127:                                              ; preds = %101, %95
  %128 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %129 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 16
  %131 = load i64, i64* @TITAN_MSB_SHADOW, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %173

133:                                              ; preds = %127
  %134 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %135 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, 16777215
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %173

139:                                              ; preds = %133
  %140 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 2), align 8
  %141 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %142 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i64 %140(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %139
  %147 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 1
  %148 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %9, align 4
  %150 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 0), align 8
  %151 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %152 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 %150(i32 %153, i32 %154)
  %156 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %157 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %146, %139
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 16
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %166 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i8* @TitanBlendPixelsTop(i32 536870912, i32 %167)
  %169 = ptrtoint i8* %168 to i32
  %170 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %171 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %164, %158
  br label %220

173:                                              ; preds = %133, %127
  %174 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %175 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 16
  %177 = load i64, i64* @TITAN_NORMAL_SHADOW, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %199

179:                                              ; preds = %173
  %180 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 1
  %181 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 1
  %186 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i8* @TitanBlendPixelsTop(i32 536870912, i32 %187)
  %189 = ptrtoint i8* %188 to i32
  %190 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %191 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  br label %198

192:                                              ; preds = %179
  %193 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 1
  %194 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %197 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %192, %184
  br label %219

199:                                              ; preds = %173
  %200 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 2), align 8
  %201 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %202 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i64 %200(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %218

206:                                              ; preds = %199
  %207 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 1
  %208 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  store i32 %209, i32* %10, align 4
  %210 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 0), align 8
  %211 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %212 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = call i32 %210(i32 %213, i32 %214)
  %216 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %217 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %206, %199
  br label %219

219:                                              ; preds = %218, %198
  br label %220

220:                                              ; preds = %219, %172
  br label %221

221:                                              ; preds = %220, %126
  %222 = getelementptr inbounds [2 x %struct.PixelData], [2 x %struct.PixelData]* %5, i64 0, i64 0
  %223 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  ret i32 %224
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @TitanBlendPixelsTop(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
