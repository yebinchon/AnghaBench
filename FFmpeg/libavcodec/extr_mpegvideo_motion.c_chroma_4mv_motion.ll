; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_motion.c_chroma_4mv_motion.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_motion.c_chroma_4mv_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32*, i32**, i32 (i32*, i32*, i32, i32)**, i32, i32)* @chroma_4mv_motion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chroma_4mv_motion(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32** %3, i32 (i32*, i32*, i32, i32)** %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32 (i32*, i32*, i32, i32)**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32 (i32*, i32*, i32, i32)** %4, i32 (i32*, i32*, i32, i32)*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @ff_h263_round_chroma(i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @ff_h263_round_chroma(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = and i32 %25, 1
  %27 = shl i32 %26, 1
  %28 = load i32, i32* %13, align 4
  %29 = and i32 %28, 1
  %30 = or i32 %27, %29
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %13, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = ashr i32 %33, 1
  store i32 %34, i32* %14, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 8
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %16, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 8
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 1
  %52 = call i32 @av_clip(i32 %47, i32 -8, i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = ashr i32 %56, 1
  %58 = icmp eq i32 %53, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %7
  %60 = load i32, i32* %18, align 4
  %61 = and i32 %60, -2
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %59, %7
  %63 = load i32, i32* %17, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 1
  %68 = call i32 @av_clip(i32 %63, i32 -8, i32 %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 1
  %74 = icmp eq i32 %69, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load i32, i32* %18, align 4
  %77 = and i32 %76, -3
  store i32 %77, i32* %18, align 4
  br label %78

78:                                               ; preds = %75, %62
  %79 = load i32, i32* %17, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %79, %82
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %20, align 4
  %86 = load i32**, i32*** %11, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32* %91, i32** %15, align 8
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 1
  %97 = load i32, i32* %18, align 4
  %98 = and i32 %97, 1
  %99 = sub nsw i32 %96, %98
  %100 = sub nsw i32 %99, 7
  %101 = call i32 @FFMAX(i32 %100, i32 0)
  %102 = icmp uge i32 %92, %101
  br i1 %102, label %115, label %103

103:                                              ; preds = %78
  %104 = load i32, i32* %17, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = ashr i32 %107, 1
  %109 = load i32, i32* %18, align 4
  %110 = ashr i32 %109, 1
  %111 = sub nsw i32 %108, %110
  %112 = sub nsw i32 %111, 7
  %113 = call i32 @FFMAX(i32 %112, i32 0)
  %114 = icmp uge i32 %104, %113
  br i1 %114, label %115, label %146

115:                                              ; preds = %103, %78
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = ashr i32 %135, 1
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = ashr i32 %139, 1
  %141 = call i32 %119(i32* %123, i32* %124, i32 %127, i32 %130, i32 9, i32 9, i32 %131, i32 %132, i32 %136, i32 %140)
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  store i32* %145, i32** %15, align 8
  store i32 1, i32* %19, align 4
  br label %146

146:                                              ; preds = %115, %103
  %147 = load i32 (i32*, i32*, i32, i32)**, i32 (i32*, i32*, i32, i32)*** %12, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %147, i64 %149
  %151 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %150, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = load i32*, i32** %15, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 %151(i32* %152, i32* %153, i32 %156, i32 8)
  %158 = load i32**, i32*** %11, align 8
  %159 = getelementptr inbounds i32*, i32** %158, i64 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %20, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32* %163, i32** %15, align 8
  %164 = load i32, i32* %19, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %197

166:                                              ; preds = %146
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %169, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 7
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32*, i32** %15, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %17, align 4
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 1
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = ashr i32 %190, 1
  %192 = call i32 %170(i32* %174, i32* %175, i32 %178, i32 %181, i32 9, i32 9, i32 %182, i32 %183, i32 %187, i32 %191)
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 7
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  store i32* %196, i32** %15, align 8
  br label %197

197:                                              ; preds = %166, %146
  %198 = load i32 (i32*, i32*, i32, i32)**, i32 (i32*, i32*, i32, i32)*** %12, align 8
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %198, i64 %200
  %202 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %201, align 8
  %203 = load i32*, i32** %10, align 8
  %204 = load i32*, i32** %15, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = call i32 %202(i32* %203, i32* %204, i32 %207, i32 8)
  ret void
}

declare dso_local i32 @ff_h263_round_chroma(i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
