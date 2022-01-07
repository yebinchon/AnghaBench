; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp8.c_vp8_get_quants.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp8.c_vp8_get_quants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32, i64 }

@vp8_dc_qlookup = common dso_local global i32* null, align 8
@vp8_ac_qlookup = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @vp8_get_quants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp8_get_quants(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @vp8_rac_get_uint(i32* %8, i32 7)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @vp8_rac_get_sint(i32* %13, i32 4)
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @vp8_rac_get_sint(i32* %19, i32 4)
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i8* @vp8_rac_get_sint(i32* %25, i32 4)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @vp8_rac_get_sint(i32* %31, i32 4)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i8* @vp8_rac_get_sint(i32* %37, i32 4)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 5
  store i32 %39, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %232, %1
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %235

46:                                               ; preds = %43
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %46
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %5, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %52
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %66, %52
  br label %79

74:                                               ; preds = %46
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %74, %73
  %80 = load i32*, i32** @vp8_dc_qlookup, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %81, %85
  %87 = call i64 @av_clip_uintp2(i32 %86, i32 7)
  %88 = getelementptr inbounds i32, i32* %80, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %89, i32* %98, align 4
  %99 = load i32*, i32** @vp8_ac_qlookup, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i64 @av_clip_uintp2(i32 %100, i32 7)
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %103, i32* %112, align 4
  %113 = load i32*, i32** @vp8_dc_qlookup, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %114, %118
  %120 = call i64 @av_clip_uintp2(i32 %119, i32 7)
  %121 = getelementptr inbounds i32, i32* %113, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %122, 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %123, i32* %132, align 4
  %133 = load i32*, i32** @vp8_ac_qlookup, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %134, %138
  %140 = call i64 @av_clip_uintp2(i32 %139, i32 7)
  %141 = getelementptr inbounds i32, i32* %133, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %142, 101581
  %144 = ashr i32 %143, 16
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  store i32 %144, i32* %153, align 4
  %154 = load i32*, i32** @vp8_dc_qlookup, align 8
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %155, %159
  %161 = call i64 @av_clip_uintp2(i32 %160, i32 7)
  %162 = getelementptr inbounds i32, i32* %154, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  store i32 %163, i32* %172, align 4
  %173 = load i32*, i32** @vp8_ac_qlookup, align 8
  %174 = load i32, i32* %5, align 4
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %174, %178
  %180 = call i64 @av_clip_uintp2(i32 %179, i32 7)
  %181 = getelementptr inbounds i32, i32* %173, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = load i32, i32* %4, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  store i32 %182, i32* %191, align 4
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load i32, i32* %4, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @FFMAX(i32 %201, i32 8)
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  store i32 %202, i32* %211, align 4
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = load i32, i32* %4, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @FFMIN(i32 %221, i32 132)
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  store i32 %222, i32* %231, align 4
  br label %232

232:                                              ; preds = %79
  %233 = load i32, i32* %4, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %4, align 4
  br label %43

235:                                              ; preds = %43
  ret void
}

declare dso_local i32 @vp8_rac_get_uint(i32*, i32) #1

declare dso_local i8* @vp8_rac_get_sint(i32*, i32) #1

declare dso_local i64 @av_clip_uintp2(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
