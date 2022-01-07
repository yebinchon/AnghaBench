; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est.c_ff_fix_long_p_mvs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est.c_ff_fix_long_p_mvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i64, i32, i32, i32, i32, i32*, %struct.TYPE_9__, %struct.TYPE_8__*, i64, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { i32***, i32* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@AV_PICTURE_TYPE_P = common dso_local global i64 0, align 8
@FMT_MPEG1 = common dso_local global i64 0, align 8
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i64 0, align 8
@FF_COMPLIANCE_NORMAL = common dso_local global i64 0, align 8
@AV_CODEC_FLAG_4MV = common dso_local global i32 0, align 4
@CANDIDATE_MB_TYPE_INTER4V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_fix_long_p_mvs(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 12
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @av_assert0(i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FMT_MPEG1, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %2
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 11
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %2
  %40 = phi i1 [ true, %2 ], [ %38, %34 ]
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 8, i32 16
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sle i32 %45, 16
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 11
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %47, %39
  %54 = phi i1 [ true, %39 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @av_assert0(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp sle i32 %57, 256
  br i1 %58, label %76, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AV_CODEC_ID_MPEG2VIDEO, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 10
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @FF_COMPLIANCE_NORMAL, align 8
  %72 = icmp sge i64 %70, %71
  br label %73

73:                                               ; preds = %65, %59
  %74 = phi i1 [ false, %59 ], [ %72, %65 ]
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %73, %53
  %77 = phi i1 [ true, %53 ], [ %75, %73 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @av_assert0(i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %76
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %87, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %94, %86, %76
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 10
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @AV_CODEC_FLAG_4MV, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %249

109:                                              ; preds = %100
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %245, %109
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %248

119:                                              ; preds = %113
  %120 = load i32, i32* %7, align 4
  %121 = mul nsw i32 %120, 2
  %122 = load i32, i32* %9, align 4
  %123 = mul nsw i32 %121, %122
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %124, %127
  store i32 %128, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %129

129:                                              ; preds = %241, %119
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %244

135:                                              ; preds = %129
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 8
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @CANDIDATE_MB_TYPE_INTER4V, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %236

146:                                              ; preds = %135
  store i32 0, i32* %13, align 4
  br label %147

147:                                              ; preds = %232, %146
  %148 = load i32, i32* %13, align 4
  %149 = icmp slt i32 %148, 4
  br i1 %149, label %150, label %235

150:                                              ; preds = %147
  %151 = load i32, i32* %13, align 4
  %152 = and i32 %151, 1
  %153 = load i32, i32* %13, align 4
  %154 = ashr i32 %153, 1
  %155 = load i32, i32* %9, align 4
  %156 = mul nsw i32 %154, %155
  %157 = add nsw i32 %152, %156
  store i32 %157, i32* %14, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 9
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32***, i32**** %160, align 8
  %162 = getelementptr inbounds i32**, i32*** %161, i64 0
  %163 = load i32**, i32*** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32*, i32** %163, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %15, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 9
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i32***, i32**** %174, align 8
  %176 = getelementptr inbounds i32**, i32*** %175, i64 0
  %177 = load i32**, i32*** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32*, i32** %177, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %16, align 4
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp sge i32 %186, %187
  br i1 %188, label %203, label %189

189:                                              ; preds = %150
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %8, align 4
  %192 = sub nsw i32 0, %191
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %203, label %194

194:                                              ; preds = %189
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp sge i32 %195, %196
  br i1 %197, label %203, label %198

198:                                              ; preds = %194
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %8, align 4
  %201 = sub nsw i32 0, %200
  %202 = icmp slt i32 %199, %201
  br i1 %202, label %203, label %231

203:                                              ; preds = %198, %194, %189, %150
  %204 = load i32, i32* @CANDIDATE_MB_TYPE_INTER4V, align 4
  %205 = xor i32 %204, -1
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 8
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, %205
  store i32 %213, i32* %211, align 4
  %214 = load i32, i32* %4, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 8
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %214
  store i32 %222, i32* %220, align 4
  %223 = load i32, i32* %4, align 4
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 9
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %223, i32* %230, align 4
  br label %231

231:                                              ; preds = %203, %198
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %13, align 4
  br label %147

235:                                              ; preds = %147
  br label %236

236:                                              ; preds = %235, %135
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 2
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %11, align 4
  br label %241

241:                                              ; preds = %236
  %242 = load i32, i32* %12, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %12, align 4
  br label %129

244:                                              ; preds = %129
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %113

248:                                              ; preds = %113
  br label %249

249:                                              ; preds = %248, %100
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
