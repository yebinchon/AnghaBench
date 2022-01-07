; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_j2kenc.c_truncpasses.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_j2kenc.c_truncpasses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@dwt_norms = common dso_local global i64*** null, align 8
@FF_DWT53 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_12__*)* @truncpasses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truncpasses(%struct.TYPE_15__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %11, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %152, %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %155

26:                                               ; preds = %20
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i64 %31
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %12, align 8
  store i32 0, i32* %7, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %146, %26
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %151

43:                                               ; preds = %37
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i64 %48
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %13, align 8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %142, %43
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  %59 = icmp slt i32 %51, %58
  br i1 %59, label %60, label %145

60:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %138, %60
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %141

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sgt i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = add nsw i32 %68, %71
  store i32 %72, i32* %14, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i64 %77
  store %struct.TYPE_19__* %78, %struct.TYPE_19__** %15, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i64 %83
  store %struct.TYPE_14__* %84, %struct.TYPE_14__** %16, align 8
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %134, %67
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = icmp slt i32 %86, %93
  br i1 %94, label %95, label %137

95:                                               ; preds = %85
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i64 %100
  store %struct.TYPE_18__* %101, %struct.TYPE_18__** %17, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i64***, i64**** @dwt_norms, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @FF_DWT53, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64**, i64*** %106, i64 %113
  %115 = load i64**, i64*** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64*, i64** %115, i64 %117
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = mul nsw i32 %124, %128
  %130 = ashr i32 %129, 15
  %131 = call i32 @getcut(%struct.TYPE_18__* %102, i32 %105, i32 %130)
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %95
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %85

137:                                              ; preds = %85
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %61

141:                                              ; preds = %61
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %50

145:                                              ; preds = %50
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %10, align 4
  br label %37

151:                                              ; preds = %37
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %20

155:                                              ; preds = %20
  ret void
}

declare dso_local i32 @getcut(%struct.TYPE_18__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
