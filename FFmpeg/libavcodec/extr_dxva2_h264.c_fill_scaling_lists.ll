; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_h264.c_fill_scaling_lists.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_h264.c_fill_scaling_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32**, i32** }
%struct.TYPE_11__ = type { i32**, i32** }

@FF_DXVA2_WORKAROUND_SCALING_LIST_ZIGZAG = common dso_local global i32 0, align 4
@ff_zigzag_scan = common dso_local global i64* null, align 8
@ff_zigzag_direct = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_10__*, %struct.TYPE_11__*)* @fill_scaling_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_scaling_lists(i32* %0, i32* %1, %struct.TYPE_10__* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %9, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = call i32 @memset(%struct.TYPE_11__* %16, i32 0, i32 16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @DXVA_CONTEXT_WORKAROUND(i32* %18, i32* %19)
  %21 = load i32, i32* @FF_DXVA2_WORKAROUND_SCALING_LIST_ZIGZAG, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %104

24:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %58, %24
  %26 = load i32, i32* %10, align 4
  %27 = icmp ult i32 %26, 6
  br i1 %27, label %28, label %61

28:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %54, %28
  %30 = load i32, i32* %11, align 4
  %31 = icmp ult i32 %30, 16
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %43, i32* %53, align 4
  br label %54

54:                                               ; preds = %32
  %55 = load i32, i32* %11, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %29

57:                                               ; preds = %29
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %25

61:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %100, %61
  %63 = load i32, i32* %10, align 4
  %64 = icmp ult i32 %63, 64
  br i1 %64, label %65, label %103

65:                                               ; preds = %62
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %74, i32* %82, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32**, i32*** %93, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %91, i32* %99, align 4
  br label %100

100:                                              ; preds = %65
  %101 = load i32, i32* %10, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %62

103:                                              ; preds = %62
  br label %193

104:                                              ; preds = %4
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %141, %104
  %106 = load i32, i32* %10, align 4
  %107 = icmp ult i32 %106, 6
  br i1 %107, label %108, label %144

108:                                              ; preds = %105
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %137, %108
  %110 = load i32, i32* %11, align 4
  %111 = icmp ult i32 %110, 16
  br i1 %111, label %112, label %140

112:                                              ; preds = %109
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i64*, i64** @ff_zigzag_scan, align 8
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32, i32* %119, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %126, i32* %136, align 4
  br label %137

137:                                              ; preds = %112
  %138 = load i32, i32* %11, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %109

140:                                              ; preds = %109
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %105

144:                                              ; preds = %105
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %189, %144
  %146 = load i32, i32* %10, align 4
  %147 = icmp ult i32 %146, 64
  br i1 %147, label %148, label %192

148:                                              ; preds = %145
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32**, i32*** %150, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i64*, i64** @ff_zigzag_direct, align 8
  %155 = load i32, i32* %10, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i32, i32* %153, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32**, i32*** %162, align 8
  %164 = getelementptr inbounds i32*, i32** %163, i64 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %160, i32* %168, align 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32**, i32*** %170, align 8
  %172 = getelementptr inbounds i32*, i32** %171, i64 3
  %173 = load i32*, i32** %172, align 8
  %174 = load i64*, i64** @ff_zigzag_direct, align 8
  %175 = load i32, i32* %10, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i32, i32* %173, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i32**, i32*** %182, align 8
  %184 = getelementptr inbounds i32*, i32** %183, i64 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %180, i32* %188, align 4
  br label %189

189:                                              ; preds = %148
  %190 = load i32, i32* %10, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %145

192:                                              ; preds = %145
  br label %193

193:                                              ; preds = %192, %103
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @DXVA_CONTEXT_WORKAROUND(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
