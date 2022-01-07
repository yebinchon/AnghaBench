; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_qcelp.c_return_stored_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_qcelp.c_return_stored_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i64, i64, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@frame_sizes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32*, i32)* @return_stored_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @return_stored_frame(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_14__* %2, %struct.TYPE_15__* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 6
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i64 %24
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %16, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %7
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %13, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @store_packet(i32* %40, %struct.TYPE_12__* %41, %struct.TYPE_14__* %42, %struct.TYPE_15__* %43, i32* %44, i32 %47, i64 %50)
  store i32 %51, i32* %18, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %8, align 4
  br label %187

55:                                               ; preds = %30, %7
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %62 = call i32 @av_new_packet(%struct.TYPE_15__* %61, i32 1)
  store i32 %62, i32* %18, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %18, align 4
  store i32 %65, i32* %8, align 4
  br label %187

66:                                               ; preds = %60
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  store i64 0, i64* %70, align 8
  br label %155

71:                                               ; preds = %55
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp uge i64 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %80, i32* %8, align 4
  br label %187

81:                                               ; preds = %71
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i32*, i32** @frame_sizes, align 8
  %91 = call i64 @FF_ARRAY_ELEMS(i32* %90)
  %92 = icmp uge i64 %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %81
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %94, i32* %8, align 4
  br label %187

95:                                               ; preds = %81
  %96 = load i32*, i32** @frame_sizes, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %96, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %17, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %109, %111
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ugt i64 %112, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %95
  %118 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %118, i32* %8, align 4
  br label %187

119:                                              ; preds = %95
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @av_new_packet(%struct.TYPE_15__* %120, i32 %121)
  store i32 %122, i32* %18, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* %18, align 4
  store i32 %125, i32* %8, align 4
  br label %187

126:                                              ; preds = %119
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  %132 = load i64*, i64** %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i64, i64* %132, i64 %135
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @memcpy(i64* %129, i64* %136, i32 %137)
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, %140
  store i64 %144, i64* %142, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp uge i64 %147, %150
  %152 = zext i1 %151 to i32
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %126, %66
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %163, %166
  br i1 %167, label %168, label %182

168:                                              ; preds = %155
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  store i64 0, i64* %170, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %168
  store i32 1, i32* %8, align 4
  br label %187

176:                                              ; preds = %168
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp sgt i64 %179, 0
  %181 = zext i1 %180 to i32
  store i32 %181, i32* %8, align 4
  br label %187

182:                                              ; preds = %155
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %184, align 8
  store i32 1, i32* %8, align 4
  br label %187

187:                                              ; preds = %182, %176, %175, %124, %117, %93, %79, %64, %35
  %188 = load i32, i32* %8, align 4
  ret i32 %188
}

declare dso_local i32 @store_packet(i32*, %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32, i64) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
