; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_null_res_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_null_res_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64 }

@U = common dso_local global i32 0, align 4
@Ustride = common dso_local global i32 0, align 4
@clast = common dso_local global i64 0, align 8
@V = common dso_local global i32 0, align 4
@Vstride = common dso_local global i32 0, align 4
@last = common dso_local global i32* null, align 8
@Y = common dso_local global i32 0, align 4
@Ystride = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32, i32)* @tm2_null_res_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tm2_null_res_block(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [16 x i32], align 16
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = call i32 (...) @TM2_INIT_POINTERS()
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 3
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 2
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %20, align 16
  %21 = load i32, i32* @U, align 4
  %22 = load i32, i32* @Ustride, align 4
  %23 = load i64, i64* @clast, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @tm2_low_chroma(i32 %21, i32 %22, i64 %23, i64 %26, i32* %27, i32 %28)
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 3
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 2
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %33, align 16
  %34 = load i32, i32* @V, align 4
  %35 = load i32, i32* @Vstride, align 4
  %36 = load i64, i64* @clast, align 8
  %37 = add nsw i64 %36, 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 2
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @tm2_low_chroma(i32 %34, i32 %35, i64 %37, i64 %41, i32* %42, i32 %43)
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %52, %4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 16
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 %50
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %45

55:                                               ; preds = %45
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %60, %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = add i32 %66, %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %72, %77
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %55
  %82 = load i32*, i32** @last, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 -1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub i32 %84, %85
  store i32 %86, i32* %11, align 4
  br label %88

87:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %81
  %89 = load i32*, i32** @last, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sub i32 %92, %93
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %13, align 4
  %97 = ashr i32 %96, 2
  %98 = add i32 %95, %97
  %99 = load i32*, i32** @last, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %13, align 4
  %103 = ashr i32 %102, 1
  %104 = add i32 %101, %103
  %105 = load i32*, i32** @last, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = ashr i32 %108, 2
  %110 = sub i32 %107, %109
  %111 = load i32*, i32** @last, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32*, i32** @last, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %10, align 4
  %119 = ashr i32 %118, 2
  %120 = add i32 %117, %119
  %121 = load i32, i32* %11, align 4
  %122 = sub i32 %120, %121
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %122, i32* %126, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %11, align 4
  %133 = add i32 %132, %131
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %10, align 4
  %136 = ashr i32 %135, 1
  %137 = add i32 %134, %136
  %138 = load i32, i32* %11, align 4
  %139 = sub i32 %137, %138
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 %139, i32* %143, align 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %11, align 4
  %150 = add i32 %149, %148
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %151, %152
  %154 = load i32, i32* %10, align 4
  %155 = ashr i32 %154, 2
  %156 = sub i32 %153, %155
  %157 = load i32, i32* %11, align 4
  %158 = sub i32 %156, %157
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  store i32 %158, i32* %162, align 4
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %11, align 4
  %169 = add i32 %168, %167
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %10, align 4
  %172 = add i32 %170, %171
  %173 = load i32, i32* %11, align 4
  %174 = sub i32 %172, %173
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  store i32 %174, i32* %178, align 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %180 = load i32, i32* @Y, align 4
  %181 = load i32, i32* @Ystride, align 4
  %182 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %183 = load i32*, i32** @last, align 8
  %184 = call i32 @tm2_apply_deltas(%struct.TYPE_4__* %179, i32 %180, i32 %181, i32* %182, i32* %183)
  ret void
}

declare dso_local i32 @TM2_INIT_POINTERS(...) #1

declare dso_local i32 @tm2_low_chroma(i32, i32, i64, i64, i32*, i32) #1

declare dso_local i32 @tm2_apply_deltas(%struct.TYPE_4__*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
