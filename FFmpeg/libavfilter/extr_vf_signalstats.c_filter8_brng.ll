; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signalstats.c_filter8_brng.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signalstats.c_filter8_brng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, i32)* @filter8_brng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter8_brng(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %9, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %10, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %11, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %12, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = mul nsw i32 %51, %53
  %55 = load i32, i32* %8, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %18, align 4
  br label %58

58:                                               ; preds = %174, %4
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %177

62:                                               ; preds = %58
  %63 = load i32, i32* %18, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %63, %66
  store i32 %67, i32* %20, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i32**, i32*** %69, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %18, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %73, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %72, i64 %80
  store i32* %81, i32** %21, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %20, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %87, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %86, i64 %94
  store i32* %95, i32** %22, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i32**, i32*** %97, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %20, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %101, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %100, i64 %108
  store i32* %109, i32** %23, align 8
  store i32 0, i32* %17, align 4
  br label %110

110:                                              ; preds = %170, %62
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %173

114:                                              ; preds = %110
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %115, %118
  store i32 %119, i32* %24, align 4
  %120 = load i32*, i32** %21, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %25, align 4
  %125 = load i32*, i32** %22, align 8
  %126 = load i32, i32* %24, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %26, align 4
  %130 = load i32*, i32** %23, align 8
  %131 = load i32, i32* %24, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %27, align 4
  %135 = load i32, i32* %25, align 4
  %136 = icmp slt i32 %135, 16
  br i1 %136, label %152, label %137

137:                                              ; preds = %114
  %138 = load i32, i32* %25, align 4
  %139 = icmp sgt i32 %138, 235
  br i1 %139, label %152, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %26, align 4
  %142 = icmp slt i32 %141, 16
  br i1 %142, label %152, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %26, align 4
  %145 = icmp sgt i32 %144, 240
  br i1 %145, label %152, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %27, align 4
  %148 = icmp slt i32 %147, 16
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %27, align 4
  %151 = icmp sgt i32 %150, 240
  br label %152

152:                                              ; preds = %149, %146, %143, %140, %137, %114
  %153 = phi i1 [ true, %146 ], [ true, %143 ], [ true, %140 ], [ true, %137 ], [ true, %114 ], [ %151, %149 ]
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %28, align 4
  %155 = load i32, i32* %28, align 4
  %156 = load i32, i32* %19, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %19, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %159 = icmp ne %struct.TYPE_10__* %158, null
  br i1 %159, label %160, label %169

160:                                              ; preds = %152
  %161 = load i32, i32* %28, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @burn_frame8(%struct.TYPE_9__* %164, %struct.TYPE_10__* %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %163, %160, %152
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %17, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %17, align 4
  br label %110

173:                                              ; preds = %110
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %18, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %18, align 4
  br label %58

177:                                              ; preds = %58
  %178 = load i32, i32* %19, align 4
  ret i32 %178
}

declare dso_local i32 @burn_frame8(%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
