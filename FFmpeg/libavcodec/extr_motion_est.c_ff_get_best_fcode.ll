; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est.c_ff_get_best_fcode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est.c_ff_get_best_fcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, i32, i32, i32*, i64, %struct.TYPE_6__, %struct.TYPE_5__*, i64, i32* }
%struct.TYPE_6__ = type { i64*, i64* }
%struct.TYPE_5__ = type { i32, i64 }

@FF_ME_ZERO = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i64 0, align 8
@FF_COMPLIANCE_NORMAL = common dso_local global i64 0, align 8
@MAX_MV = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_get_best_fcode(%struct.TYPE_7__* %0, [2 x i32]* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca [2 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store [2 x i32]* %1, [2 x i32]** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FF_ME_ZERO, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %243

26:                                               ; preds = %3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 9
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 9
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  br label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @INT_MAX, align 4
  %41 = sdiv i32 %40, 2
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i32 [ %38, %33 ], [ %41, %39 ]
  store i32 %43, i32* %11, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 11
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %12, align 8
  store i32 -1, i32* %13, align 4
  store i32 -10000000, i32* %14, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 10
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @FFMIN(i32 %52, i32 16)
  store i32 %53, i32* %11, align 4
  br label %72

54:                                               ; preds = %42
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AV_CODEC_ID_MPEG2VIDEO, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 9
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @FF_COMPLIANCE_NORMAL, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @FFMIN(i32 %69, i32 256)
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %68, %60, %54
  br label %72

72:                                               ; preds = %71, %51
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %86, %72
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 8
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 8, %80
  %82 = mul nsw i32 %79, %81
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %84
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %73

89:                                               ; preds = %73
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %217, %89
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %220

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %97, %100
  store i32 %101, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %102

102:                                              ; preds = %213, %96
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %216

108:                                              ; preds = %102
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %210

119:                                              ; preds = %108
  %120 = load [2 x i32]*, [2 x i32]** %6, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %120, i64 %122
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %123, i64 0, i64 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %17, align 4
  %126 = load [2 x i32]*, [2 x i32]** %6, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %126, i64 %128
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %129, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %18, align 4
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* @MAX_MV, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %12, align 8
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* @MAX_MV, align 4
  %142 = add nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @FFMAX(i32 %138, i32 %145)
  store i32 %146, i32* %19, align 4
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %164, label %150

150:                                              ; preds = %119
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %11, align 4
  %153 = sub nsw i32 0, %152
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %164, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* %11, align 4
  %162 = sub nsw i32 0, %161
  %163 = icmp slt i32 %160, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %159, %155, %150, %119
  br label %213

165:                                              ; preds = %159
  store i32 0, i32* %20, align 4
  br label %166

166:                                              ; preds = %206, %165
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* %19, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i32, i32* %20, align 4
  %172 = icmp slt i32 %171, 8
  br label %173

173:                                              ; preds = %170, %166
  %174 = phi i1 [ false, %166 ], [ %172, %170 ]
  br i1 %174, label %175, label %209

175:                                              ; preds = %173
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 7
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %199, label %181

181:                                              ; preds = %175
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load i64*, i64** %192, align 8
  %194 = load i32, i32* %16, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = icmp slt i64 %189, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %181, %175
  %200 = load i32, i32* %20, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %203, 170
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %199, %181
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %20, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %20, align 4
  br label %166

209:                                              ; preds = %173
  br label %210

210:                                              ; preds = %209, %108
  %211 = load i32, i32* %16, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %16, align 4
  br label %213

213:                                              ; preds = %210, %164
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %15, align 4
  br label %102

216:                                              ; preds = %102
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %90

220:                                              ; preds = %90
  store i32 1, i32* %9, align 4
  br label %221

221:                                              ; preds = %238, %220
  %222 = load i32, i32* %9, align 4
  %223 = icmp slt i32 %222, 8
  br i1 %223, label %224, label %241

224:                                              ; preds = %221
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %14, align 4
  %230 = icmp sgt i32 %228, %229
  br i1 %230, label %231, label %237

231:                                              ; preds = %224
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %14, align 4
  %236 = load i32, i32* %9, align 4
  store i32 %236, i32* %13, align 4
  br label %237

237:                                              ; preds = %231, %224
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %9, align 4
  br label %221

241:                                              ; preds = %221
  %242 = load i32, i32* %13, align 4
  store i32 %242, i32* %4, align 4
  br label %244

243:                                              ; preds = %3
  store i32 1, i32* %4, align 4
  br label %244

244:                                              ; preds = %243, %241
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
