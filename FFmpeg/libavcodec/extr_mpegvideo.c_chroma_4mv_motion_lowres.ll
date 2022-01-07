; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo.c_chroma_4mv_motion_lowres.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo.c_chroma_4mv_motion_lowres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32*, i32**, i32 (i32*, i32*, i32, i32, i32, i32)**, i32, i32)* @chroma_4mv_motion_lowres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chroma_4mv_motion_lowres(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32** %3, i32 (i32*, i32*, i32, i32, i32, i32)** %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32 (i32*, i32*, i32, i32, i32, i32)**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
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
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32 (i32*, i32*, i32, i32, i32, i32)** %4, i32 (i32*, i32*, i32, i32, i32, i32)*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @FFMIN(i32 %33, i32 3)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %15, align 4
  %36 = ashr i32 8, %35
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %15, align 4
  %38 = shl i32 2, %37
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %18, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 1
  %45 = ashr i32 %42, %44
  store i32 %45, i32* %19, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  %51 = ashr i32 %48, %50
  store i32 %51, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %7
  %57 = load i32, i32* %13, align 4
  %58 = sdiv i32 %57, 2
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = sdiv i32 %59, 2
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %56, %7
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @ff_h263_round_chroma(i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @ff_h263_round_chroma(i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %18, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %24, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %18, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %25, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %17, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  %80 = ashr i32 %77, %79
  %81 = add nsw i32 %76, %80
  store i32 %81, i32* %22, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %17, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  %90 = ashr i32 %87, %89
  %91 = add nsw i32 %86, %90
  store i32 %91, i32* %23, align 4
  %92 = load i32, i32* %23, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %92, %95
  %97 = load i32, i32* %22, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %26, align 4
  %99 = load i32**, i32*** %11, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %26, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32* %104, i32** %27, align 8
  %105 = load i32, i32* %22, align 4
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %24, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = sub nsw i32 %106, %111
  %113 = load i32, i32* %17, align 4
  %114 = sub nsw i32 %112, %113
  %115 = call i32 @FFMAX(i32 %114, i32 0)
  %116 = icmp ugt i32 %105, %115
  br i1 %116, label %130, label %117

117:                                              ; preds = %61
  %118 = load i32, i32* %23, align 4
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* %25, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = sub nsw i32 %119, %124
  %126 = load i32, i32* %17, align 4
  %127 = sub nsw i32 %125, %126
  %128 = call i32 @FFMAX(i32 %127, i32 0)
  %129 = icmp ugt i32 %118, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %117, %61
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %133, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32*, i32** %27, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %22, align 4
  %147 = load i32, i32* %23, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %20, align 4
  %150 = call i32 %134(i32* %138, i32* %139, i32 %142, i32 %145, i32 9, i32 9, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %27, align 8
  store i32 1, i32* %21, align 4
  br label %155

155:                                              ; preds = %130, %117
  %156 = load i32, i32* %24, align 4
  %157 = shl i32 %156, 2
  %158 = load i32, i32* %15, align 4
  %159 = ashr i32 %157, %158
  store i32 %159, i32* %24, align 4
  %160 = load i32, i32* %25, align 4
  %161 = shl i32 %160, 2
  %162 = load i32, i32* %15, align 4
  %163 = ashr i32 %161, %162
  store i32 %163, i32* %25, align 4
  %164 = load i32 (i32*, i32*, i32, i32, i32, i32)**, i32 (i32*, i32*, i32, i32, i32, i32)*** %12, align 8
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %164, i64 %166
  %168 = load i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %167, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = load i32*, i32** %27, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %24, align 4
  %176 = load i32, i32* %25, align 4
  %177 = call i32 %168(i32* %169, i32* %170, i32 %173, i32 %174, i32 %175, i32 %176)
  %178 = load i32**, i32*** %11, align 8
  %179 = getelementptr inbounds i32*, i32** %178, i64 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %26, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32* %183, i32** %27, align 8
  %184 = load i32, i32* %21, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %211

186:                                              ; preds = %155
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %189, align 8
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i32*, i32** %27, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %22, align 4
  %203 = load i32, i32* %23, align 4
  %204 = load i32, i32* %19, align 4
  %205 = load i32, i32* %20, align 4
  %206 = call i32 %190(i32* %194, i32* %195, i32 %198, i32 %201, i32 9, i32 9, i32 %202, i32 %203, i32 %204, i32 %205)
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  store i32* %210, i32** %27, align 8
  br label %211

211:                                              ; preds = %186, %155
  %212 = load i32 (i32*, i32*, i32, i32, i32, i32)**, i32 (i32*, i32*, i32, i32, i32, i32)*** %12, align 8
  %213 = load i32, i32* %16, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %212, i64 %214
  %216 = load i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %215, align 8
  %217 = load i32*, i32** %10, align 8
  %218 = load i32*, i32** %27, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %24, align 4
  %224 = load i32, i32* %25, align 4
  %225 = call i32 %216(i32* %217, i32* %218, i32 %221, i32 %222, i32 %223, i32 %224)
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_h263_round_chroma(i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
