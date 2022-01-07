; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2enc.c_ff_wmv2_encode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2enc.c_ff_wmv2_encode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i64, i64, i32, i32, i64, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i64 }

@ff_wmv2_inter_table = common dso_local global i32*** null, align 8
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@ff_msmp4_mb_i_table = common dso_local global i32** null, align 8
@ff_table_inter_intra = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_wmv2_encode_mb(%struct.TYPE_11__* %0, [64 x i32]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca [64 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store [64 x i32]* %1, [64 x i32]** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = bitcast %struct.TYPE_11__* %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %9, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = call i32 @ff_msmpeg4_handle_slices(%struct.TYPE_11__* %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %105, label %26

26:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %46, %26
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 6
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 5, %40
  %42 = shl i32 1, %41
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %39, %30
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %27

49:                                               ; preds = %27
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 7
  %52 = load i32***, i32**** @ff_wmv2_inter_table, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32**, i32*** %52, i64 %55
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 64
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %57, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32***, i32**** @ff_wmv2_inter_table, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32**, i32*** %65, i64 %68
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 64
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %70, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @put_bits(i32* %51, i32 %64, i32 %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = call i64 @get_bits_diff(%struct.TYPE_11__* %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = call i32 @ff_h263_pred_motion(%struct.TYPE_11__* %87, i32 0, i32 0, i32* %13, i32* %14)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %13, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %14, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i32 @ff_msmpeg4_encode_motion(%struct.TYPE_11__* %89, i32 %92, i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = call i64 @get_bits_diff(%struct.TYPE_11__* %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  br label %237

105:                                              ; preds = %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %106

106:                                              ; preds = %143, %105
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %107, 6
  br i1 %108, label %109, label %146

109:                                              ; preds = %106
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %116, 1
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %12, align 4
  %121 = sub nsw i32 5, %120
  %122 = shl i32 %119, %121
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %125, 4
  br i1 %126, label %127, label %136

127:                                              ; preds = %109
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @ff_msmpeg4_coded_block_pred(%struct.TYPE_11__* %128, i32 %129, i32** %15)
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32*, i32** %15, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %17, align 4
  %135 = xor i32 %133, %134
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %127, %109
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %12, align 4
  %139 = sub nsw i32 5, %138
  %140 = shl i32 %137, %139
  %141 = load i32, i32* %11, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %136
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %106

146:                                              ; preds = %106
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %146
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 7
  %155 = load i32**, i32*** @ff_msmp4_mb_i_table, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32**, i32*** @ff_msmp4_mb_i_table, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @put_bits(i32* %154, i32 %161, i32 %168)
  br label %198

170:                                              ; preds = %146
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 7
  %173 = load i32***, i32**** @ff_wmv2_inter_table, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds i32**, i32*** %173, i64 %176
  %178 = load i32**, i32*** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32***, i32**** @ff_wmv2_inter_table, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i32**, i32*** %185, i64 %188
  %190 = load i32**, i32*** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32*, i32** %190, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @put_bits(i32* %172, i32 %184, i32 %196)
  br label %198

198:                                              ; preds = %170, %152
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 7
  %201 = call i32 @put_bits(i32* %200, i32 1, i32 0)
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 8
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %228

206:                                              ; preds = %198
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 2
  store i64 0, i64* %208, align 8
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 7
  %211 = load i32**, i32*** @ff_table_inter_intra, align 8
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds i32*, i32** %211, i64 %214
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32**, i32*** @ff_table_inter_intra, align 8
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds i32*, i32** %219, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @put_bits(i32* %210, i32 %218, i32 %226)
  br label %228

228:                                              ; preds = %206, %198
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %230 = call i64 @get_bits_diff(%struct.TYPE_11__* %229)
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %230
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %232, align 8
  br label %237

237:                                              ; preds = %228, %49
  store i32 0, i32* %12, align 4
  br label %238

238:                                              ; preds = %250, %237
  %239 = load i32, i32* %12, align 4
  %240 = icmp slt i32 %239, 6
  br i1 %240, label %241, label %253

241:                                              ; preds = %238
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %243 = load [64 x i32]*, [64 x i32]** %6, align 8
  %244 = load i32, i32* %12, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [64 x i32], [64 x i32]* %243, i64 %245
  %247 = getelementptr inbounds [64 x i32], [64 x i32]* %246, i64 0, i64 0
  %248 = load i32, i32* %12, align 4
  %249 = call i32 @ff_msmpeg4_encode_block(%struct.TYPE_11__* %242, i32* %247, i32 %248)
  br label %250

250:                                              ; preds = %241
  %251 = load i32, i32* %12, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %12, align 4
  br label %238

253:                                              ; preds = %238
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 5
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %253
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %260 = call i64 @get_bits_diff(%struct.TYPE_11__* %259)
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %264, %260
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %262, align 4
  br label %276

267:                                              ; preds = %253
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %269 = call i64 @get_bits_diff(%struct.TYPE_11__* %268)
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %273, %269
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %271, align 8
  br label %276

276:                                              ; preds = %267, %258
  ret void
}

declare dso_local i32 @ff_msmpeg4_handle_slices(%struct.TYPE_11__*) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i64 @get_bits_diff(%struct.TYPE_11__*) #1

declare dso_local i32 @ff_h263_pred_motion(%struct.TYPE_11__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ff_msmpeg4_encode_motion(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ff_msmpeg4_coded_block_pred(%struct.TYPE_11__*, i32, i32**) #1

declare dso_local i32 @ff_msmpeg4_encode_block(%struct.TYPE_11__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
