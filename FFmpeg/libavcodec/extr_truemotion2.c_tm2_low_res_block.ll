; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_low_res_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_low_res_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64 }

@TM2_C_LO = common dso_local global i32 0, align 4
@U = common dso_local global i32 0, align 4
@Ustride = common dso_local global i32 0, align 4
@clast = common dso_local global i64 0, align 8
@V = common dso_local global i32 0, align 4
@Vstride = common dso_local global i32 0, align 4
@TM2_L_LO = common dso_local global i32 0, align 4
@last = common dso_local global i32* null, align 8
@Y = common dso_local global i32 0, align 4
@Ystride = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32)* @tm2_low_res_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tm2_low_res_block(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [16 x i32], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = call i32 (...) @TM2_INIT_POINTERS()
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = load i32, i32* @TM2_C_LO, align 4
  %16 = call i32 @GET_TOK(%struct.TYPE_5__* %14, i32 %15)
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 3
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 2
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 1
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @U, align 4
  %22 = load i32, i32* @Ustride, align 4
  %23 = load i64, i64* @clast, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @tm2_low_chroma(i32 %21, i32 %22, i64 %23, i64 %26, i32* %27, i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = load i32, i32* @TM2_C_LO, align 4
  %32 = call i32 @GET_TOK(%struct.TYPE_5__* %30, i32 %31)
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  store i32 %32, i32* %33, align 16
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 3
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 2
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 1
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* @V, align 4
  %38 = load i32, i32* @Vstride, align 4
  %39 = load i64, i64* @clast, align 8
  %40 = add nsw i64 %39, 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 2
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @tm2_low_chroma(i32 %37, i32 %38, i64 %40, i64 %44, i32* %45, i32 %46)
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %55, %4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 16
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %53
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %48

58:                                               ; preds = %48
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = load i32, i32* @TM2_L_LO, align 4
  %61 = call i32 @GET_TOK(%struct.TYPE_5__* %59, i32 %60)
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  store i32 %61, i32* %62, align 16
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = load i32, i32* @TM2_L_LO, align 4
  %65 = call i32 @GET_TOK(%struct.TYPE_5__* %63, i32 %64)
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 2
  store i32 %65, i32* %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = load i32, i32* @TM2_L_LO, align 4
  %69 = call i32 @GET_TOK(%struct.TYPE_5__* %67, i32 %68)
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 8
  store i32 %69, i32* %70, align 16
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = load i32, i32* @TM2_L_LO, align 4
  %73 = call i32 @GET_TOK(%struct.TYPE_5__* %71, i32 %72)
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 10
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %58
  %78 = load i32*, i32** @last, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 -1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = sub i32 %80, %85
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = sub i32 %86, %91
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = sub i32 %92, %97
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = sub i32 %98, %103
  %105 = load i32*, i32** @last, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = add i32 %104, %107
  %109 = ashr i32 %108, 1
  %110 = load i32*, i32** @last, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %109, i32* %111, align 4
  br label %143

112:                                              ; preds = %58
  %113 = load i32*, i32** @last, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = sub i32 %115, %120
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = sub i32 %121, %126
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = sub i32 %127, %132
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 3
  %138 = load i32, i32* %137, align 4
  %139 = sub i32 %133, %138
  %140 = ashr i32 %139, 1
  %141 = load i32*, i32** @last, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %112, %77
  %144 = load i32*, i32** @last, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** @last, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %146, %149
  %151 = ashr i32 %150, 1
  %152 = load i32*, i32** @last, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %158, %163
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = ashr i32 %165, 1
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  store i32 %166, i32* %170, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = ashr i32 %172, 1
  %174 = sub nsw i32 %171, %173
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  store i32 %174, i32* %178, align 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 3
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %183, %188
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = ashr i32 %190, 1
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  store i32 %191, i32* %195, align 4
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %11, align 4
  %198 = ashr i32 %197, 1
  %199 = sub nsw i32 %196, %198
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 3
  store i32 %199, i32* %203, align 4
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %205 = load i32, i32* @Y, align 4
  %206 = load i32, i32* @Ystride, align 4
  %207 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %208 = load i32*, i32** @last, align 8
  %209 = call i32 @tm2_apply_deltas(%struct.TYPE_5__* %204, i32 %205, i32 %206, i32* %207, i32* %208)
  ret void
}

declare dso_local i32 @TM2_INIT_POINTERS(...) #1

declare dso_local i32 @GET_TOK(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @tm2_low_chroma(i32, i32, i64, i64, i32*, i32) #1

declare dso_local i32 @tm2_apply_deltas(%struct.TYPE_5__*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
