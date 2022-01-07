; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_filter_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_filter_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32*, i32*, i32 (%struct.TYPE_10__*, i32*, i32, i32*, i32, i32, i32, i32, i32)*, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, i32)* @filter_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_slice(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %9, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %10, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %12, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %13, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %14, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %15, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %16, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %17, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %18, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = call i32 @FFMAX(i32 0, i64 %74)
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = call i32 @FFMAX(i32 0, i64 %81)
  store i32 %82, i32* %21, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %83, %84
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* %11, align 4
  %88 = sdiv i32 %86, %87
  %89 = load i32, i32* %7, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = sdiv i32 %90, %91
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 %92, %93
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %96, 1
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %4
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %100, %101
  br label %117

103:                                              ; preds = %4
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %104, %105
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* %11, align 4
  %109 = sdiv i32 %107, %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  %112 = mul nsw i32 %109, %111
  %113 = load i32, i32* %8, align 4
  %114 = sdiv i32 %112, %113
  %115 = load i32, i32* %11, align 4
  %116 = mul nsw i32 %114, %115
  br label %117

117:                                              ; preds = %103, %99
  %118 = phi i32 [ %102, %99 ], [ %116, %103 ]
  store i32 %118, i32* %23, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %19, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = call i32 @memset(i32 %121, i32 0, i32 %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %19, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memset(i32 %131, i32 0, i32 %137)
  %139 = load i32, i32* %22, align 4
  store i32 %139, i32* %25, align 4
  br label %140

140:                                              ; preds = %190, %117
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* %23, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %194

144:                                              ; preds = %140
  %145 = load i32, i32* %25, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* %20, align 4
  store i32 %149, i32* %25, align 4
  br label %150

150:                                              ; preds = %148, %144
  store i32 0, i32* %24, align 4
  br label %151

151:                                              ; preds = %185, %150
  %152 = load i32, i32* %24, align 4
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %153, %154
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %189

157:                                              ; preds = %151
  %158 = load i32, i32* %24, align 4
  %159 = load i32, i32* %21, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* %21, align 4
  store i32 %162, i32* %24, align 4
  br label %163

163:                                              ; preds = %161, %157
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %165 = load i32*, i32** %14, align 8
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %25, align 4
  %168 = load i32, i32* %24, align 4
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @block_matching(%struct.TYPE_10__* %164, i32* %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170)
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 3
  %174 = load i32 (%struct.TYPE_10__*, i32*, i32, i32*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_10__*, i32*, i32, i32*, i32, i32, i32, i32, i32)** %173, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %176 = load i32*, i32** %13, align 8
  %177 = load i32, i32* %15, align 4
  %178 = load i32*, i32** %14, align 8
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %25, align 4
  %181 = load i32, i32* %24, align 4
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* %7, align 4
  %184 = call i32 %174(%struct.TYPE_10__* %175, i32* %176, i32 %177, i32* %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %163
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %24, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %24, align 4
  br label %151

189:                                              ; preds = %151
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %25, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %25, align 4
  br label %140

194:                                              ; preds = %140
  ret i32 0
}

declare dso_local i32 @FFMAX(i32, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @block_matching(%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
