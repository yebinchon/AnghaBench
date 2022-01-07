; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signalstats.c_filter16_brng.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signalstats.c_filter16_brng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, i32)* @filter16_brng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter16_brng(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %9, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %10, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %11, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %12, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 8
  %45 = shl i32 1, %44
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %14, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = mul nsw i32 %57, %59
  %61 = load i32, i32* %8, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %19, align 4
  br label %64

64:                                               ; preds = %192, %4
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %195

68:                                               ; preds = %64
  %69 = load i32, i32* %19, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %69, %72
  store i32 %73, i32* %21, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = load i32**, i32*** %75, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %19, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %79, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %78, i64 %86
  store i32* %87, i32** %22, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i32**, i32*** %89, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %21, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %93, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %92, i64 %100
  store i32* %101, i32** %23, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i32**, i32*** %103, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %21, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %107, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %106, i64 %114
  store i32* %115, i32** %24, align 8
  store i32 0, i32* %18, align 4
  br label %116

116:                                              ; preds = %188, %68
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %191

120:                                              ; preds = %116
  %121 = load i32, i32* %18, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %121, %124
  store i32 %125, i32* %25, align 4
  %126 = load i32*, i32** %22, align 8
  %127 = load i32, i32* %18, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %26, align 4
  %131 = load i32*, i32** %23, align 8
  %132 = load i32, i32* %25, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %27, align 4
  %136 = load i32*, i32** %24, align 8
  %137 = load i32, i32* %25, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %28, align 4
  %141 = load i32, i32* %26, align 4
  %142 = load i32, i32* %13, align 4
  %143 = mul nsw i32 16, %142
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %170, label %145

145:                                              ; preds = %120
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* %13, align 4
  %148 = mul nsw i32 235, %147
  %149 = icmp sgt i32 %146, %148
  br i1 %149, label %170, label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %27, align 4
  %152 = load i32, i32* %13, align 4
  %153 = mul nsw i32 16, %152
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %170, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %27, align 4
  %157 = load i32, i32* %13, align 4
  %158 = mul nsw i32 240, %157
  %159 = icmp sgt i32 %156, %158
  br i1 %159, label %170, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* %28, align 4
  %162 = load i32, i32* %13, align 4
  %163 = mul nsw i32 16, %162
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %170, label %165

165:                                              ; preds = %160
  %166 = load i32, i32* %28, align 4
  %167 = load i32, i32* %13, align 4
  %168 = mul nsw i32 240, %167
  %169 = icmp sgt i32 %166, %168
  br label %170

170:                                              ; preds = %165, %160, %155, %150, %145, %120
  %171 = phi i1 [ true, %160 ], [ true, %155 ], [ true, %150 ], [ true, %145 ], [ true, %120 ], [ %169, %165 ]
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %29, align 4
  %173 = load i32, i32* %29, align 4
  %174 = load i32, i32* %20, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %20, align 4
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %177 = icmp ne %struct.TYPE_10__* %176, null
  br i1 %177, label %178, label %187

178:                                              ; preds = %170
  %179 = load i32, i32* %29, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* %19, align 4
  %186 = call i32 @burn_frame16(%struct.TYPE_9__* %182, %struct.TYPE_10__* %183, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %181, %178, %170
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %18, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %18, align 4
  br label %116

191:                                              ; preds = %116
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %19, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %19, align 4
  br label %64

195:                                              ; preds = %64
  %196 = load i32, i32* %20, align 4
  ret i32 %196
}

declare dso_local i32 @burn_frame16(%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
