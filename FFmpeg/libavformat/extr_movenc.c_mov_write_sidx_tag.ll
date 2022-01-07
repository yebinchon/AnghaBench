; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_sidx_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_sidx_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64, i32, i64 }
%struct.TYPE_5__ = type { i64, i64, i32 }

@MOV_SYNC_SAMPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sidx\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Non-consecutive fragments, writing incorrect sidx\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32, i32)* @mov_write_sidx_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_sidx_tag(i32* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @avio_tell(i32* %19)
  store i64 %20, i64* %10, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %4
  store i32 1, i32* %18, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %32, %38
  store i64 %39, i64* %13, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %48, %54
  %56 = sub nsw i64 %42, %55
  store i64 %56, i64* %14, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MOV_SYNC_SAMPLE, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %16, align 4
  %65 = load i64, i64* %13, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %25
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %71

71:                                               ; preds = %67, %25
  br label %86

72:                                               ; preds = %4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %219

79:                                               ; preds = %72
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 6
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %13, align 8
  br label %86

86:                                               ; preds = %79, %71
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @avio_wb32(i32* %87, i32 0)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @ffio_wfourcc(i32* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @avio_w8(i32* %91, i32 1)
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @avio_wb24(i32* %93, i32 0)
  %95 = load i32*, i32** %6, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @avio_wb32(i32* %95, i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @avio_wb32(i32* %100, i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @avio_wb64(i32* %105, i64 %106)
  %108 = load i32*, i32** %6, align 8
  %109 = call i64 @avio_tell(i32* %108)
  store i64 %109, i64* %11, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @avio_wb64(i32* %110, i64 0)
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @avio_wb16(i32* %112, i32 0)
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @avio_wb16(i32* %114, i32 %115)
  store i32 0, i32* %17, align 4
  br label %117

117:                                              ; preds = %193, %86
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %18, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %196

121:                                              ; preds = %117
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %179, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %17, align 4
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %162

129:                                              ; preds = %126
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 6
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 6
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %146, %156
  %158 = icmp ne i64 %137, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %129
  %160 = load i32, i32* @AV_LOG_ERROR, align 4
  %161 = call i32 @av_log(i32* null, i32 %160, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %129, %126
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 6
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load i32, i32* %17, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %14, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 6
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %8, align 4
  store i32 1, i32* %16, align 4
  br label %179

179:                                              ; preds = %162, %121
  %180 = load i32*, i32** %6, align 8
  %181 = load i32, i32* %8, align 4
  %182 = and i32 %181, 2147483647
  %183 = or i32 0, %182
  %184 = call i32 @avio_wb32(i32* %180, i32 %183)
  %185 = load i32*, i32** %6, align 8
  %186 = load i64, i64* %14, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 @avio_wb32(i32* %185, i32 %187)
  %189 = load i32*, i32** %6, align 8
  %190 = load i32, i32* %16, align 4
  %191 = shl i32 %190, 31
  %192 = call i32 @avio_wb32(i32* %189, i32 %191)
  br label %193

193:                                              ; preds = %179
  %194 = load i32, i32* %17, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %17, align 4
  br label %117

196:                                              ; preds = %117
  %197 = load i32*, i32** %6, align 8
  %198 = call i64 @avio_tell(i32* %197)
  store i64 %198, i64* %12, align 8
  %199 = load i64, i64* %10, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %199, %201
  %203 = load i64, i64* %12, align 8
  %204 = sub nsw i64 %202, %203
  store i64 %204, i64* %15, align 8
  %205 = load i32*, i32** %6, align 8
  %206 = load i64, i64* %11, align 8
  %207 = load i32, i32* @SEEK_SET, align 4
  %208 = call i32 @avio_seek(i32* %205, i64 %206, i32 %207)
  %209 = load i32*, i32** %6, align 8
  %210 = load i64, i64* %15, align 8
  %211 = call i32 @avio_wb64(i32* %209, i64 %210)
  %212 = load i32*, i32** %6, align 8
  %213 = load i64, i64* %12, align 8
  %214 = load i32, i32* @SEEK_SET, align 4
  %215 = call i32 @avio_seek(i32* %212, i64 %213, i32 %214)
  %216 = load i32*, i32** %6, align 8
  %217 = load i64, i64* %10, align 8
  %218 = call i32 @update_size(i32* %216, i64 %217)
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %196, %78
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb24(i32*, i32) #1

declare dso_local i32 @avio_wb64(i32*, i64) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

declare dso_local i32 @update_size(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
