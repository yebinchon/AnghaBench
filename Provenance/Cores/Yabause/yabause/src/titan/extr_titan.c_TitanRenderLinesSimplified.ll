; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanRenderLinesSimplified.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanRenderLinesSimplified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, %struct.PixelData**, %struct.TYPE_3__*, i32, i32 }
%struct.PixelData = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@tt_context = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TITAN_RBG0 = common dso_local global i32 0, align 4
@TITAN_BACK = common dso_local global i32 0, align 4
@TITAN_SPRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TitanRenderLinesSimplified(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [8 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.PixelData, align 8
  %19 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %20 = bitcast [8 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 32, i1 false)
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tt_context, i32 0, i32 5), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tt_context, i32 0, i32 4), align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %3
  br label %214

27:                                               ; preds = %23
  %28 = call i32 @Vdp2GetInterlaceInfo(i32* %14, i32* %13)
  store i32 7, i32* %9, align 4
  br label %29

29:                                               ; preds = %63, %27
  %30 = load i32, i32* %9, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %29
  %33 = load i32, i32* @TITAN_RBG0, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %59, %32
  %35 = load i32, i32* %10, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tt_context, i32 0, i32 0), align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tt_context, i32 0, i32 0), align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %16, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %52, %44, %37
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %10, align 4
  br label %34

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4
  br label %29

66:                                               ; preds = %29
  %67 = load i32, i32* @TITAN_BACK, align 4
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @set_layer_y(i32 %72, i32* %12)
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %210, %66
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %214

81:                                               ; preds = %77
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %204, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tt_context, i32 0, i32 1), align 8
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %207

86:                                               ; preds = %82
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tt_context, i32 0, i32 1), align 8
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tt_context, i32 0, i32 1), align 8
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %94, %95
  store i32 %96, i32* %9, align 4
  %97 = load i64*, i64** %4, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 0, i64* %100, align 8
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %200, %86
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %203

105:                                              ; preds = %101
  %106 = load %struct.PixelData**, %struct.PixelData*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tt_context, i32 0, i32 2), align 8
  %107 = load i64, i64* @TITAN_SPRITE, align 8
  %108 = getelementptr inbounds %struct.PixelData*, %struct.PixelData** %106, i64 %107
  %109 = load %struct.PixelData*, %struct.PixelData** %108, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %109, i64 %111
  %113 = bitcast %struct.PixelData* %18 to i8*
  %114 = bitcast %struct.PixelData* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 8 %114, i64 16, i1 false)
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* @TITAN_BACK, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %146

122:                                              ; preds = %105
  %123 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %18, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %18, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @TitanFixAlpha(i64 %128)
  %130 = load i64*, i64** %4, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  store i64 %129, i64* %133, align 8
  br label %203

134:                                              ; preds = %122
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tt_context, i32 0, i32 3), align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @TitanFixAlpha(i64 %140)
  %142 = load i64*, i64** %4, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  store i64 %141, i64* %145, align 8
  br label %203

146:                                              ; preds = %105
  %147 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %18, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tt_context, i32 0, i32 0), align 8
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = icmp sge i64 %148, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %146
  %157 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %18, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %18, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @TitanFixAlpha(i64 %162)
  %164 = load i64*, i64** %4, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  store i64 %163, i64* %167, align 8
  br label %203

168:                                              ; preds = %156
  br label %198

169:                                              ; preds = %146
  %170 = load %struct.PixelData**, %struct.PixelData*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tt_context, i32 0, i32 2), align 8
  %171 = load i32, i32* %19, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.PixelData*, %struct.PixelData** %170, i64 %172
  %174 = load %struct.PixelData*, %struct.PixelData** %173, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %174, i64 %176
  %178 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %197

181:                                              ; preds = %169
  %182 = load %struct.PixelData**, %struct.PixelData*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tt_context, i32 0, i32 2), align 8
  %183 = load i32, i32* %19, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.PixelData*, %struct.PixelData** %182, i64 %184
  %186 = load %struct.PixelData*, %struct.PixelData** %185, align 8
  %187 = load i32, i32* %17, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %186, i64 %188
  %190 = getelementptr inbounds %struct.PixelData, %struct.PixelData* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @TitanFixAlpha(i64 %191)
  %193 = load i64*, i64** %4, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  store i64 %192, i64* %196, align 8
  br label %203

197:                                              ; preds = %169
  br label %198

198:                                              ; preds = %197, %168
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %11, align 4
  br label %101

203:                                              ; preds = %181, %160, %134, %126, %101
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %7, align 4
  br label %82

207:                                              ; preds = %82
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %12, align 4
  br label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %8, align 4
  br label %77

214:                                              ; preds = %26, %77
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @Vdp2GetInterlaceInfo(i32*, i32*) #2

declare dso_local i32 @set_layer_y(i32, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @TitanFixAlpha(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
