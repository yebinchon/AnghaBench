; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_update_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_update_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64 }

@Uo = common dso_local global i64* null, align 8
@TM2_UPD = common dso_local global i32 0, align 4
@U = common dso_local global i64* null, align 8
@Vo = common dso_local global i64* null, align 8
@V = common dso_local global i64* null, align 8
@Ustride = common dso_local global i32 0, align 4
@Vstride = common dso_local global i32 0, align 4
@oUstride = common dso_local global i32 0, align 4
@oVstride = common dso_local global i32 0, align 4
@clast = common dso_local global i64 0, align 8
@Yo = common dso_local global i32* null, align 8
@last = common dso_local global i32* null, align 8
@oYstride = common dso_local global i32 0, align 4
@Y = common dso_local global i32* null, align 8
@Ystride = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32, i32)* @tm2_update_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tm2_update_block(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = call i32 (...) @TM2_INIT_POINTERS_2()
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %67, %4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %70

16:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %47, %16
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %50

20:                                               ; preds = %17
  %21 = load i64*, i64** @Uo, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = load i32, i32* @TM2_UPD, align 4
  %28 = call i64 @GET_TOK(%struct.TYPE_4__* %26, i32 %27)
  %29 = add nsw i64 %25, %28
  %30 = load i64*, i64** @U, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64 %29, i64* %33, align 8
  %34 = load i64*, i64** @Vo, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = load i32, i32* @TM2_UPD, align 4
  %41 = call i64 @GET_TOK(%struct.TYPE_4__* %39, i32 %40)
  %42 = add nsw i64 %38, %41
  %43 = load i64*, i64** @V, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %42, i64* %46, align 8
  br label %47

47:                                               ; preds = %20
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %17

50:                                               ; preds = %17
  %51 = load i32, i32* @Ustride, align 4
  %52 = load i64*, i64** @U, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64* %54, i64** @U, align 8
  %55 = load i32, i32* @Vstride, align 4
  %56 = load i64*, i64** @V, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64* %58, i64** @V, align 8
  %59 = load i32, i32* @oUstride, align 4
  %60 = load i64*, i64** @Uo, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  store i64* %62, i64** @Uo, align 8
  %63 = load i32, i32* @oVstride, align 4
  %64 = load i64*, i64** @Vo, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64* %66, i64** @Vo, align 8
  br label %67

67:                                               ; preds = %50
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %13

70:                                               ; preds = %13
  %71 = load i32, i32* @Ustride, align 4
  %72 = mul nsw i32 %71, 2
  %73 = load i64*, i64** @U, align 8
  %74 = sext i32 %72 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64* %76, i64** @U, align 8
  %77 = load i32, i32* @Vstride, align 4
  %78 = mul nsw i32 %77, 2
  %79 = load i64*, i64** @V, align 8
  %80 = sext i32 %78 to i64
  %81 = sub i64 0, %80
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64* %82, i64** @V, align 8
  %83 = load i64*, i64** @U, align 8
  %84 = load i32, i32* @Ustride, align 4
  %85 = load i64, i64* @clast, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @TM2_RECALC_BLOCK(i64* %83, i32 %84, i64 %85, i64 %88)
  %90 = load i64*, i64** @V, align 8
  %91 = load i32, i32* @Vstride, align 4
  %92 = load i64, i64* @clast, align 8
  %93 = add nsw i64 %92, 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 2
  %98 = call i32 @TM2_RECALC_BLOCK(i64* %90, i32 %91, i64 %93, i64 %97)
  %99 = load i32*, i32** @Yo, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** @last, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = sub i32 %101, %104
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %105, i32* %109, align 4
  %110 = load i32*, i32** @Yo, align 8
  %111 = load i32, i32* @oYstride, align 4
  %112 = add nsw i32 3, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** @Yo, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = sub i32 %115, %118
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  store i32 %119, i32* %123, align 4
  %124 = load i32*, i32** @Yo, align 8
  %125 = load i32, i32* @oYstride, align 4
  %126 = mul nsw i32 %125, 2
  %127 = add nsw i32 3, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** @Yo, align 8
  %132 = load i32, i32* @oYstride, align 4
  %133 = add nsw i32 3, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = sub i32 %130, %136
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  store i32 %137, i32* %141, align 4
  %142 = load i32*, i32** @Yo, align 8
  %143 = load i32, i32* @oYstride, align 4
  %144 = mul nsw i32 %143, 3
  %145 = add nsw i32 3, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** @Yo, align 8
  %150 = load i32, i32* @oYstride, align 4
  %151 = mul nsw i32 %150, 2
  %152 = add nsw i32 3, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sub i32 %148, %155
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  store i32 %156, i32* %160, align 4
  store i32 0, i32* %10, align 4
  br label %161

161:                                              ; preds = %218, %70
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %162, 4
  br i1 %163, label %164, label %221

164:                                              ; preds = %161
  %165 = load i32*, i32** @last, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %168

168:                                              ; preds = %195, %164
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %169, 4
  br i1 %170, label %171, label %198

171:                                              ; preds = %168
  %172 = load i32*, i32** @Yo, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %178 = load i32, i32* @TM2_UPD, align 4
  %179 = call i64 @GET_TOK(%struct.TYPE_4__* %177, i32 %178)
  %180 = trunc i64 %179 to i32
  %181 = add i32 %176, %180
  %182 = load i32*, i32** @Y, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %181, i32* %185, align 4
  %186 = load i32*, i32** @Y, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** @last, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %190, i32* %194, align 4
  br label %195

195:                                              ; preds = %171
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %168

198:                                              ; preds = %168
  %199 = load i32*, i32** @last, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 3
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %11, align 4
  %203 = sub i32 %201, %202
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %203, i32* %209, align 4
  %210 = load i32, i32* @Ystride, align 4
  %211 = load i32*, i32** @Y, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32* %213, i32** @Y, align 8
  %214 = load i32, i32* @oYstride, align 4
  %215 = load i32*, i32** @Yo, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32* %217, i32** @Yo, align 8
  br label %218

218:                                              ; preds = %198
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %10, align 4
  br label %161

221:                                              ; preds = %161
  ret void
}

declare dso_local i32 @TM2_INIT_POINTERS_2(...) #1

declare dso_local i64 @GET_TOK(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @TM2_RECALC_BLOCK(i64*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
