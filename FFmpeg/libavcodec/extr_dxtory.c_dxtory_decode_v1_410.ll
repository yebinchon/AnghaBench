; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_dxtory_decode_v1_410.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_dxtory_decode_v1_410.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i64** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"packet too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV410P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i64*, i32)* @dxtory_decode_v1_410 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxtory_decode_v1_410(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @FFALIGN(i32 %23, i32 4)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @FFALIGN(i32 %27, i32 4)
  %29 = mul nsw i64 %24, %28
  %30 = mul nsw i64 %29, 9
  %31 = sdiv i64 %30, 8
  %32 = icmp slt i64 %20, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = call i32 @av_log(%struct.TYPE_9__* %34, i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %37, i32* %5, align 4
  br label %223

38:                                               ; preds = %4
  %39 = load i32, i32* @AV_PIX_FMT_YUV410P, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = call i32 @ff_get_buffer(%struct.TYPE_9__* %42, %struct.TYPE_8__* %43, i32 0)
  store i32 %44, i32* %18, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %18, align 4
  store i32 %47, i32* %5, align 4
  br label %223

48:                                               ; preds = %38
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64**, i64*** %50, align 8
  %52 = getelementptr inbounds i64*, i64** %51, i64 0
  %53 = load i64*, i64** %52, align 8
  store i64* %53, i64** %12, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64**, i64*** %55, align 8
  %57 = getelementptr inbounds i64*, i64** %56, i64 0
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %58, i64 %64
  store i64* %65, i64** %13, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i64**, i64*** %67, align 8
  %69 = getelementptr inbounds i64*, i64** %68, i64 0
  %70 = load i64*, i64** %69, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %70, i64 %77
  store i64* %78, i64** %14, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64**, i64*** %80, align 8
  %82 = getelementptr inbounds i64*, i64** %81, i64 0
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %88, 3
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %83, i64 %90
  store i64* %91, i64** %15, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i64**, i64*** %93, align 8
  %95 = getelementptr inbounds i64*, i64** %94, i64 1
  %96 = load i64*, i64** %95, align 8
  store i64* %96, i64** %16, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64**, i64*** %98, align 8
  %100 = getelementptr inbounds i64*, i64** %99, i64 2
  %101 = load i64*, i64** %100, align 8
  store i64* %101, i64** %17, align 8
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %219, %48
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %222

108:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %163, %108
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %166

115:                                              ; preds = %109
  %116 = load i64*, i64** %12, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64*, i64** %8, align 8
  %121 = call i32 @AV_COPY32U(i64* %119, i64* %120)
  %122 = load i64*, i64** %13, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64*, i64** %8, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 4
  %128 = call i32 @AV_COPY32U(i64* %125, i64* %127)
  %129 = load i64*, i64** %14, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64*, i64** %8, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 8
  %135 = call i32 @AV_COPY32U(i64* %132, i64* %134)
  %136 = load i64*, i64** %15, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64*, i64** %8, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 12
  %142 = call i32 @AV_COPY32U(i64* %139, i64* %141)
  %143 = load i64*, i64** %8, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 16
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 128
  %147 = load i64*, i64** %16, align 8
  %148 = load i32, i32* %11, align 4
  %149 = ashr i32 %148, 2
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %147, i64 %150
  store i64 %146, i64* %151, align 8
  %152 = load i64*, i64** %8, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 17
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 128
  %156 = load i64*, i64** %17, align 8
  %157 = load i32, i32* %11, align 4
  %158 = ashr i32 %157, 2
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %156, i64 %159
  store i64 %155, i64* %160, align 8
  %161 = load i64*, i64** %8, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 18
  store i64* %162, i64** %8, align 8
  br label %163

163:                                              ; preds = %115
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 4
  store i32 %165, i32* %11, align 4
  br label %109

166:                                              ; preds = %109
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 2
  %173 = load i64*, i64** %12, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  store i64* %175, i64** %12, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 2
  %182 = load i64*, i64** %13, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  store i64* %184, i64** %13, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 %189, 2
  %191 = load i64*, i64** %14, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  store i64* %193, i64** %14, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = shl i32 %198, 2
  %200 = load i64*, i64** %15, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i64, i64* %200, i64 %201
  store i64* %202, i64** %15, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = load i64*, i64** %16, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i64, i64* %208, i64 %209
  store i64* %210, i64** %16, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 2
  %215 = load i32, i32* %214, align 4
  %216 = load i64*, i64** %17, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  store i64* %218, i64** %17, align 8
  br label %219

219:                                              ; preds = %166
  %220 = load i32, i32* %10, align 4
  %221 = add nsw i32 %220, 4
  store i32 %221, i32* %10, align 4
  br label %102

222:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %223

223:                                              ; preds = %222, %46, %33
  %224 = load i32, i32* %5, align 4
  ret i32 %224
}

declare dso_local i64 @FFALIGN(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_9__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @AV_COPY32U(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
