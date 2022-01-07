; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_shorten.c_decode_subframe_lpc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_shorten.c_decode_subframe_lpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32**, i32, i32, i32, i32 }

@FN_QLPC = common dso_local global i32 0, align 4
@LPCQSIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid pred_order %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LPCQUANT = common dso_local global i32 0, align 4
@fixed_coeffs = common dso_local global i32** null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32, i32)* @decode_subframe_lpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_subframe_lpc(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @FN_QLPC, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  %25 = load i32, i32* @LPCQSIZE, align 4
  %26 = call i32 @get_ur_golomb_shorten(i32* %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ugt i32 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @av_log(i32 %35, i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @AVERROR(i32 %39)
  store i32 %40, i32* %6, align 4
  br label %227

41:                                               ; preds = %22
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  %49 = load i32, i32* @LPCQUANT, align 4
  %50 = call i32 @get_sr_golomb_shorten(i32* %48, i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %16, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %18, align 8
  %64 = load i32, i32* @LPCQUANT, align 4
  store i32 %64, i32* %14, align 4
  br label %85

65:                                               ; preds = %5
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32**, i32*** @fixed_coeffs, align 8
  %69 = call i32 @FF_ARRAY_ELEMS(i32** %68)
  %70 = icmp sge i32 %67, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @AV_LOG_ERROR, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @av_log(i32 %74, i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %78, i32* %6, align 4
  br label %227

79:                                               ; preds = %65
  %80 = load i32**, i32*** @fixed_coeffs, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %18, align 8
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %79, %60
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @FN_QLPC, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %85
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %112, %92
  %96 = load i32, i32* %16, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sub i32 %110, %99
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %98
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %16, align 4
  br label %95

115:                                              ; preds = %95
  br label %116

116:                                              ; preds = %115, %89, %85
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @FN_QLPC, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  br label %128

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %123
  %129 = phi i32 [ %126, %123 ], [ 0, %127 ]
  br label %132

130:                                              ; preds = %116
  %131 = load i32, i32* %11, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  store i32 %133, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %134

134:                                              ; preds = %191, %132
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %194

140:                                              ; preds = %134
  %141 = load i32, i32* %15, align 4
  store i32 %141, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %142

142:                                              ; preds = %169, %140
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %172

146:                                              ; preds = %142
  %147 = load i32*, i32** %18, align 8
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i32**, i32*** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %17, align 4
  %161 = sub nsw i32 %159, %160
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %158, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = mul i32 %151, %165
  %167 = load i32, i32* %13, align 4
  %168 = add i32 %167, %166
  store i32 %168, i32* %13, align 4
  br label %169

169:                                              ; preds = %146
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  br label %142

172:                                              ; preds = %142
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 5
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @get_sr_golomb_shorten(i32* %174, i32 %175)
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %14, align 4
  %179 = ashr i32 %177, %178
  %180 = add i32 %176, %179
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  %183 = load i32**, i32*** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  store i32 %180, i32* %190, align 4
  br label %191

191:                                              ; preds = %172
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %16, align 4
  br label %134

194:                                              ; preds = %134
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @FN_QLPC, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %226

198:                                              ; preds = %194
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %226

201:                                              ; preds = %198
  store i32 0, i32* %16, align 4
  br label %202

202:                                              ; preds = %222, %201
  %203 = load i32, i32* %16, align 4
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %225

208:                                              ; preds = %202
  %209 = load i32, i32* %11, align 4
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 2
  %212 = load i32**, i32*** %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32*, i32** %212, i64 %214
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = add i32 %220, %209
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %208
  %223 = load i32, i32* %16, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %16, align 4
  br label %202

225:                                              ; preds = %202
  br label %226

226:                                              ; preds = %225, %198, %194
  store i32 0, i32* %6, align 4
  br label %227

227:                                              ; preds = %226, %71, %32
  %228 = load i32, i32* %6, align 4
  ret i32 %228
}

declare dso_local i32 @get_ur_golomb_shorten(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @get_sr_golomb_shorten(i32*, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
