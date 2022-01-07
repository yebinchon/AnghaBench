; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pixlet.c_init_decoder.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pixlet.c_init_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__**, i8*, i8** }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@NB_LEVELS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @init_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_decoder(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @av_malloc_array(i32 %16, i32 4)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 5
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  store i8* %17, i8** %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @FFMAX(i32 %24, i32 %27)
  %29 = add i32 %28, 16
  %30 = call i8* @av_malloc_array(i32 %29, i32 4)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  store i8* %30, i8** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NB_LEVELS, align 4
  %39 = lshr i32 %37, %38
  %40 = call i8* @av_malloc_array(i32 %39, i32 4)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 5
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56, %49, %1
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %233

64:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %229, %64
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %68, label %232

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp sgt i32 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %7, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = lshr i32 %74, %75
  store i32 %76, i32* %8, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = lshr i32 %79, %80
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @NB_LEVELS, align 4
  %84 = lshr i32 %82, %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %87, i64 %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 %84, i32* %93, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @NB_LEVELS, align 4
  %96 = lshr i32 %94, %95
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %99, i64 %101
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i32 %96, i32* %105, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @NB_LEVELS, align 4
  %108 = lshr i32 %106, %107
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @NB_LEVELS, align 4
  %111 = lshr i32 %109, %110
  %112 = mul i32 %108, %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %115, i64 %117
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  store i32 %112, i32* %121, align 4
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %225, %68
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @NB_LEVELS, align 4
  %125 = mul i32 %124, 3
  %126 = icmp ult i32 %123, %125
  br i1 %126, label %127, label %228

127:                                              ; preds = %122
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sdiv i32 %131, 3
  %133 = sub nsw i32 %130, %132
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %10, align 4
  %136 = lshr i32 %134, %135
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %139, i64 %141
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  store i32 %136, i32* %148, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %10, align 4
  %151 = lshr i32 %149, %150
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %154, i64 %156
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  store i32 %151, i32* %163, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %10, align 4
  %166 = lshr i32 %164, %165
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %10, align 4
  %169 = lshr i32 %167, %168
  %170 = mul i32 %166, %169
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %173, i64 %175
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  store i32 %170, i32* %182, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %10, align 4
  %185 = lshr i32 %183, %184
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 1
  %188 = srem i32 %187, 3
  %189 = icmp ne i32 %188, 2
  %190 = zext i1 %189 to i32
  %191 = mul i32 %185, %190
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %194, i64 %196
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 3
  store i32 %191, i32* %203, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %10, align 4
  %206 = lshr i32 %204, %205
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, 1
  %209 = srem i32 %208, 3
  %210 = icmp ne i32 %209, 1
  %211 = zext i1 %210 to i32
  %212 = mul i32 %206, %211
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %215, i64 %217
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = load i32, i32* %5, align 4
  %221 = add nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 4
  store i32 %212, i32* %224, align 4
  br label %225

225:                                              ; preds = %127
  %226 = load i32, i32* %5, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %5, align 4
  br label %122

228:                                              ; preds = %122
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  br label %65

232:                                              ; preds = %65
  store i32 0, i32* %2, align 4
  br label %233

233:                                              ; preds = %232, %61
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i8* @av_malloc_array(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
