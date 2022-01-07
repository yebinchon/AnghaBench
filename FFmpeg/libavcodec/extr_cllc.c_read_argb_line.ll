; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cllc.c_read_argb_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cllc.c_read_argb_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@bits = common dso_local global i32 0, align 4
@VLC_BITS = common dso_local global i32 0, align 4
@VLC_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*, %struct.TYPE_7__*, i32*)* @read_argb_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_argb_line(%struct.TYPE_8__* %0, i32* %1, i32* %2, %struct.TYPE_7__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* @bits, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @OPEN_READER(i32 %15, i32* %16)
  %18 = load i32*, i32** %10, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %21, i32* %22, align 16
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %29, i32* %30, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %143, %5
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %146

43:                                               ; preds = %35
  %44 = load i32, i32* @bits, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @UPDATE_CACHE(i32 %44, i32* %45)
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @bits, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @VLC_BITS, align 4
  %55 = load i32, i32* @VLC_DEPTH, align 4
  %56 = call i32 @GET_VLC(i32 %47, i32 %48, i32* %49, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %59 = load i32, i32* %58, align 16
  %60 = add nsw i32 %59, %57
  store i32 %60, i32* %58, align 16
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %133

69:                                               ; preds = %43
  %70 = load i32, i32* @bits, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @UPDATE_CACHE(i32 %70, i32* %71)
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @bits, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @VLC_BITS, align 4
  %81 = load i32, i32* @VLC_DEPTH, align 4
  %82 = call i32 @GET_VLC(i32 %73, i32 %74, i32* %75, i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %13, align 4
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %83
  store i32 %86, i32* %84, align 4
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @bits, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @UPDATE_CACHE(i32 %91, i32* %92)
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @bits, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @VLC_BITS, align 4
  %102 = load i32, i32* @VLC_DEPTH, align 4
  %103 = call i32 @GET_VLC(i32 %94, i32 %95, i32* %96, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %13, align 4
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, %104
  store i32 %107, i32* %105, align 8
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @bits, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @UPDATE_CACHE(i32 %112, i32* %113)
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @bits, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 3
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @VLC_BITS, align 4
  %123 = load i32, i32* @VLC_DEPTH, align 4
  %124 = call i32 @GET_VLC(i32 %115, i32 %116, i32* %117, i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %125
  store i32 %128, i32* %126, align 4
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  store i32 %130, i32* %132, align 4
  br label %140

133:                                              ; preds = %43
  %134 = load i32*, i32** %11, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 0, i32* %135, align 4
  %136 = load i32*, i32** %11, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  store i32 0, i32* %137, align 4
  %138 = load i32*, i32** %11, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %133, %69
  %141 = load i32*, i32** %11, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 4
  store i32* %142, i32** %11, align 8
  br label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  br label %35

146:                                              ; preds = %35
  %147 = load i32, i32* @bits, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @CLOSE_READER(i32 %147, i32* %148)
  %150 = load i32*, i32** %10, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 %152, i32* %154, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %146
  %160 = load i32*, i32** %10, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %8, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  store i32 %162, i32* %164, align 4
  %165 = load i32*, i32** %10, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %8, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  store i32 %167, i32* %169, align 4
  %170 = load i32*, i32** %10, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %8, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 3
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %159, %146
  ret i32 0
}

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_VLC(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
