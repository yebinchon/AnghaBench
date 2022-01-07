; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_refs.c_ff_hevc_frame_rps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_refs.c_ff_hevc_frame_rps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_13__, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32*, i64* }
%struct.TYPE_11__ = type { i32, i32*, i32, i32* }

@NB_RPS_TYPE = common dso_local global i32 0, align 4
@ST_FOLL = common dso_local global i32 0, align 4
@ST_CURR_BEF = common dso_local global i32 0, align 4
@ST_CURR_AFT = common dso_local global i32 0, align 4
@HEVC_FRAME_FLAG_SHORT_REF = common dso_local global i32 0, align 4
@LT_CURR = common dso_local global i32 0, align 4
@LT_FOLL = common dso_local global i32 0, align 4
@HEVC_FRAME_FLAG_LONG_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_hevc_frame_rps(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %4, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %5, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %6, align 8
  store i32 0, i32* %8, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  store i32 0, i32* %2, align 4
  br label %197

33:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @FF_ARRAY_ELEMS(i32* %38)
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %34
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %57

54:                                               ; preds = %41
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @mark_ref(i32* %55, i32 0)
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %34

60:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %71, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @NB_RPS_TYPE, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %61

74:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %127, %74
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %130

81:                                               ; preds = %75
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %84, %91
  store i32 %92, i32* %10, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %81
  %102 = load i32, i32* @ST_FOLL, align 4
  store i32 %102, i32* %11, align 4
  br label %114

103:                                              ; preds = %81
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @ST_CURR_BEF, align 4
  store i32 %110, i32* %11, align 4
  br label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @ST_CURR_AFT, align 4
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %111, %109
  br label %114

114:                                              ; preds = %113, %101
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 %118
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @HEVC_FRAME_FLAG_SHORT_REF, align 4
  %122 = call i32 @add_candidate_ref(%struct.TYPE_14__* %115, %struct.TYPE_12__* %119, i32 %120, i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  br label %175

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %75

130:                                              ; preds = %75
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %171, %130
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %174

137:                                              ; preds = %131
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %12, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %137
  %154 = load i32, i32* @LT_CURR, align 4
  br label %157

155:                                              ; preds = %137
  %156 = load i32, i32* @LT_FOLL, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  store i32 %158, i32* %13, align 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i64 %162
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @HEVC_FRAME_FLAG_LONG_REF, align 4
  %166 = call i32 @add_candidate_ref(%struct.TYPE_14__* %159, %struct.TYPE_12__* %163, i32 %164, i32 %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  br label %175

170:                                              ; preds = %157
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %131

174:                                              ; preds = %131
  br label %175

175:                                              ; preds = %174, %169, %125
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %192, %175
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @FF_ARRAY_ELEMS(i32* %180)
  %182 = icmp slt i32 %177, %181
  br i1 %182, label %183, label %195

183:                                              ; preds = %176
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = call i32 @ff_hevc_unref_frame(%struct.TYPE_14__* %184, i32* %190, i32 0)
  br label %192

192:                                              ; preds = %183
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  br label %176

195:                                              ; preds = %176
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %2, align 4
  br label %197

197:                                              ; preds = %195, %26
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @mark_ref(i32*, i32) #1

declare dso_local i32 @add_candidate_ref(%struct.TYPE_14__*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ff_hevc_unref_frame(%struct.TYPE_14__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
