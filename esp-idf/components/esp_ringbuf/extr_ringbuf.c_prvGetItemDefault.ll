; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/extr_ringbuf.c_prvGetItemDefault.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/extr_ringbuf.c_prvGetItemDefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i32*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i64, i32 }

@rbBUFFER_FULL_FLAG = common dso_local global i32 0, align 4
@rbITEM_DUMMY_DATA_FLAG = common dso_local global i32 0, align 4
@rbHEADER_SIZE = common dso_local global i32 0, align 4
@rbITEM_SPLIT_FLAG = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i32 0, align 4
@pdFALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i32*, i64, i64*)* @prvGetItemDefault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @prvGetItemDefault(%struct.TYPE_4__* %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @configASSERT(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %26, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %23
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @rbBUFFER_FULL_FLAG, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %31, %23
  %39 = phi i1 [ true, %23 ], [ %37, %31 ]
  br label %40

40:                                               ; preds = %38, %4
  %41 = phi i1 [ false, %4 ], [ %39, %38 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @configASSERT(i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @rbCHECK_ALIGNED(i32* %46)
  %48 = call i32 @configASSERT(i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = icmp uge i32* %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %40
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ult i32* %59, %62
  br label %64

64:                                               ; preds = %56, %40
  %65 = phi i1 [ false, %40 ], [ %63, %56 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @configASSERT(i32 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ule i64 %70, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %64
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @rbITEM_DUMMY_DATA_FLAG, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %75, %64
  %83 = phi i1 [ true, %64 ], [ %81, %75 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @configASSERT(i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @rbITEM_DUMMY_DATA_FLAG, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %82
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  store i32* %95, i32** %97, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = bitcast i32* %100 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %101, %struct.TYPE_5__** %9, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ule i64 %104, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @configASSERT(i32 %109)
  br label %111

111:                                              ; preds = %92, %82
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* @rbHEADER_SIZE, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32* %117, i32** %10, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %111
  %123 = load i32*, i32** %10, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = icmp uge i32* %123, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load i32*, i32** %10, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ule i32* %129, %132
  br label %134

134:                                              ; preds = %128, %122
  %135 = phi i1 [ false, %122 ], [ %133, %128 ]
  %136 = zext i1 %135 to i32
  %137 = call i32 @configASSERT(i32 %136)
  br label %154

138:                                              ; preds = %111
  %139 = load i32*, i32** %10, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = icmp uge i32* %139, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load i32*, i32** %10, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ult i32* %145, %148
  br label %150

150:                                              ; preds = %144, %138
  %151 = phi i1 [ false, %138 ], [ %149, %144 ]
  %152 = zext i1 %151 to i32
  %153 = call i32 @configASSERT(i32 %152)
  br label %154

154:                                              ; preds = %150, %134
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %8, align 8
  store i64 %157, i64* %158, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, -1
  store i64 %162, i64* %160, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @rbITEM_SPLIT_FLAG, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %154
  %170 = load i32, i32* @pdTRUE, align 4
  br label %173

171:                                              ; preds = %154
  %172 = load i32, i32* @pdFALSE, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %175 = load i32*, i32** %6, align 8
  store i32 %174, i32* %175, align 4
  %176 = load i32, i32* @rbHEADER_SIZE, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @rbALIGN_SIZE(i64 %179)
  %181 = add nsw i32 %176, %180
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 4
  %184 = load i32*, i32** %183, align 8
  %185 = sext i32 %181 to i64
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32* %186, i32** %183, align 8
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 5
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 4
  %192 = load i32*, i32** %191, align 8
  %193 = ptrtoint i32* %189 to i64
  %194 = ptrtoint i32* %192 to i64
  %195 = sub i64 %193, %194
  %196 = sdiv exact i64 %195, 4
  %197 = load i32, i32* @rbHEADER_SIZE, align 4
  %198 = sext i32 %197 to i64
  %199 = icmp slt i64 %196, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %173
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 4
  store i32* %203, i32** %205, align 8
  br label %206

206:                                              ; preds = %200, %173
  %207 = load i32*, i32** %10, align 8
  %208 = bitcast i32* %207 to i8*
  ret i8* %208
}

declare dso_local i32 @configASSERT(i32) #1

declare dso_local i32 @rbCHECK_ALIGNED(i32*) #1

declare dso_local i32 @rbALIGN_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
