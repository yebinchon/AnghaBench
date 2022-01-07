; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8.c_x8_get_prediction.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8.c_x8_get_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @x8_get_prediction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x8_get_prediction(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = mul nsw i32 1, %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = mul nsw i32 2, %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 2, %32
  %34 = sub nsw i32 %33, 1
  %35 = icmp sge i32 %29, %34
  %36 = zext i1 %35 to i32
  %37 = mul nsw i32 4, %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 3
  switch i32 %45, label %88 [
    i32 0, label %46
    i32 1, label %47
    i32 2, label %66
    i32 3, label %83
  ]

46:                                               ; preds = %1
  br label %88

47:                                               ; preds = %1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %50, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 6
  store i32 1, i32* %65, align 8
  br label %203

66:                                               ; preds = %1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 2, %72
  %74 = sub nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %69, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 6
  store i32 2, i32* %82, align 8
  br label %203

83:                                               ; preds = %1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  store i32 16, i32* %85, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 6
  store i32 0, i32* %87, align 8
  br label %203

88:                                               ; preds = %1, %46
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 2, %94
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = add nsw i32 %95, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %91, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %4, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 2, %112
  %114 = sub nsw i32 %113, 2
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, 1
  %119 = add nsw i32 %114, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %109, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %3, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 2, %128
  %130 = sub nsw i32 %129, 2
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, 1
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = add nsw i32 %130, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %125, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %3, align 4
  %144 = call i8* @FFMIN(i32 %142, i32 %143)
  %145 = ptrtoint i8* %144 to i32
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %150, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %88
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i8* @FFMIN(i32 %157, i32 %160)
  %162 = ptrtoint i8* %161 to i32
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %156, %88
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = ashr i32 %168, 2
  store i32 %169, i32* %167, align 8
  %170 = load i32, i32* %3, align 4
  %171 = and i32 %170, 3
  store i32 %171, i32* %3, align 4
  %172 = load i32, i32* %4, align 4
  %173 = and i32 %172, 3
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* %5, align 4
  %175 = and i32 %174, 3
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %4, align 4
  %177 = mul nsw i32 2, %176
  %178 = load i32, i32* %3, align 4
  %179 = mul nsw i32 8, %178
  %180 = add nsw i32 %177, %179
  %181 = lshr i32 -1379132, %180
  %182 = and i32 %181, 3
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp ne i32 %183, 3
  br i1 %184, label %185, label %189

185:                                              ; preds = %165
  %186 = load i32, i32* %6, align 4
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 6
  store i32 %186, i32* %188, align 8
  br label %203

189:                                              ; preds = %165
  %190 = load i32, i32* %5, align 4
  %191 = mul nsw i32 2, %190
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  %195 = icmp sgt i32 %194, 12
  %196 = zext i1 %195 to i32
  %197 = mul nsw i32 8, %196
  %198 = add nsw i32 %191, %197
  %199 = ashr i32 16771800, %198
  %200 = and i32 %199, 3
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 6
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %47, %66, %83, %189, %185
  ret void
}

declare dso_local i8* @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
