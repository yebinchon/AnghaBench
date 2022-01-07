; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_mb.c_get_lowest_part_y.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_mb.c_get_lowest_part_y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32**, %struct.TYPE_21__** }
%struct.TYPE_21__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@scan8 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_20__*, [48 x i64]*, i32, i32, i32, i32, i32, i32*)* @get_lowest_part_y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_lowest_part_y(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1, [48 x i64]* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca [48 x i64]*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_21__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %11, align 8
  store [48 x i64]* %2, [48 x i64]** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %28 = call i32 @MB_FIELD(%struct.TYPE_20__* %27)
  %29 = ashr i32 %26, %28
  %30 = mul nsw i32 16, %29
  %31 = load i32, i32* %15, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %114

35:                                               ; preds = %9
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64*, i64** @scan8, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %20, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %50, i64 0
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  %53 = load i32, i32* %20, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i64 %54
  store %struct.TYPE_21__* %55, %struct.TYPE_21__** %21, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %63, %70
  br i1 %71, label %81, label %72

72:                                               ; preds = %35
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 3
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %113

81:                                               ; preds = %72, %35
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @get_lowest_part_list_y(%struct.TYPE_20__* %82, i32 %83, i32 %84, i32 %85, i32 0)
  store i32 %86, i32* %19, align 4
  %87 = load [48 x i64]*, [48 x i64]** %12, align 8
  %88 = getelementptr inbounds [48 x i64], [48 x i64]* %87, i64 0
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [48 x i64], [48 x i64]* %88, i64 0, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %81
  %95 = load i32*, i32** %18, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %94, %81
  %100 = load [48 x i64]*, [48 x i64]** %12, align 8
  %101 = getelementptr inbounds [48 x i64], [48 x i64]* %100, i64 0
  %102 = load i32, i32* %20, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [48 x i64], [48 x i64]* %101, i64 0, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %19, align 4
  %107 = call i64 @FFMAX(i64 %105, i32 %106)
  %108 = load [48 x i64]*, [48 x i64]** %12, align 8
  %109 = getelementptr inbounds [48 x i64], [48 x i64]* %108, i64 0
  %110 = load i32, i32* %20, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [48 x i64], [48 x i64]* %109, i64 0, i64 %111
  store i64 %107, i64* %112, align 8
  br label %113

113:                                              ; preds = %99, %72
  br label %114

114:                                              ; preds = %113, %9
  %115 = load i32, i32* %17, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %196

117:                                              ; preds = %114
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load i32**, i32*** %119, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i64*, i64** @scan8, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32, i32* %122, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %22, align 4
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %132, i64 1
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = load i32, i32* %22, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i64 %136
  store %struct.TYPE_21__* %137, %struct.TYPE_21__** %23, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %145, %152
  br i1 %153, label %163, label %154

154:                                              ; preds = %117
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, 3
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %158, %161
  br i1 %162, label %163, label %195

163:                                              ; preds = %154, %117
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %15, align 4
  %168 = call i32 @get_lowest_part_list_y(%struct.TYPE_20__* %164, i32 %165, i32 %166, i32 %167, i32 1)
  store i32 %168, i32* %19, align 4
  %169 = load [48 x i64]*, [48 x i64]** %12, align 8
  %170 = getelementptr inbounds [48 x i64], [48 x i64]* %169, i64 1
  %171 = load i32, i32* %22, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [48 x i64], [48 x i64]* %170, i64 0, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %163
  %177 = load i32*, i32** %18, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %176, %163
  %182 = load [48 x i64]*, [48 x i64]** %12, align 8
  %183 = getelementptr inbounds [48 x i64], [48 x i64]* %182, i64 1
  %184 = load i32, i32* %22, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [48 x i64], [48 x i64]* %183, i64 0, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %19, align 4
  %189 = call i64 @FFMAX(i64 %187, i32 %188)
  %190 = load [48 x i64]*, [48 x i64]** %12, align 8
  %191 = getelementptr inbounds [48 x i64], [48 x i64]* %190, i64 1
  %192 = load i32, i32* %22, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [48 x i64], [48 x i64]* %191, i64 0, i64 %193
  store i64 %189, i64* %194, align 8
  br label %195

195:                                              ; preds = %181, %154
  br label %196

196:                                              ; preds = %195, %114
  ret void
}

declare dso_local i32 @MB_FIELD(%struct.TYPE_20__*) #1

declare dso_local i32 @get_lowest_part_list_y(%struct.TYPE_20__*, i32, i32, i32, i32) #1

declare dso_local i64 @FFMAX(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
