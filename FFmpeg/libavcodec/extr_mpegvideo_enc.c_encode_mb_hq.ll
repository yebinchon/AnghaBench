; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_enc.c_encode_mb_hq.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_enc.c_encode_mb_hq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32**, i32, %struct.TYPE_15__*, i8*, i8*, i64, i8*, %struct.TYPE_14__, i32* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32* }

@FF_MB_DECISION_RD = common dso_local global i64 0, align 8
@FF_LAMBDA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i8**, i8**, i8**, i32*, i32*, i32, i32)* @encode_mb_hq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_mb_hq(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, i32 %3, i8** %4, i8** %5, i8** %6, i32* %7, i32* %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [3 x i32*], align 16
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8** %4, i8*** %16, align 8
  store i8** %5, i8*** %17, align 8
  store i8** %6, i8*** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @copy_context_before_encode(%struct.TYPE_16__* %25, %struct.TYPE_16__* %26, i32 %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 10
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %20, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i8**, i8*** %16, align 8
  %40 = load i32*, i32** %20, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %11
  %52 = load i8**, i8*** %17, align 8
  %53 = load i32*, i32** %20, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load i8**, i8*** %18, align 8
  %61 = load i32*, i32** %20, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %51, %11
  %69 = load i32*, i32** %20, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %121

72:                                               ; preds = %68
  %73 = getelementptr inbounds [3 x i32*], [3 x i32*]* %24, i64 0, i64 0
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = call i32 @memcpy(i32** %73, i32** %76, i32 8)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 0
  store i32* %81, i32** %85, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 16, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 2
  %98 = load i32**, i32*** %97, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  store i32* %95, i32** %99, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 16, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = getelementptr inbounds i32, i32* %109, i64 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  %113 = load i32**, i32*** %112, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 2
  store i32* %110, i32** %114, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %117, 32
  %119 = zext i1 %118 to i32
  %120 = call i32 @av_assert0(i32 %119)
  br label %121

121:                                              ; preds = %72, %68
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %22, align 4
  %125 = call i32 @encode_mb(%struct.TYPE_16__* %122, i32 %123, i32 %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 8
  %128 = call i32 @put_bits_count(i8** %127)
  store i32 %128, i32* %23, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %121
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 6
  %136 = call i32 @put_bits_count(i8** %135)
  %137 = load i32, i32* %23, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %23, align 4
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 5
  %141 = call i32 @put_bits_count(i8** %140)
  %142 = load i32, i32* %23, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %23, align 4
  br label %144

144:                                              ; preds = %133, %121
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @FF_MB_DECISION_RD, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %144
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @ff_mpv_reconstruct_mb(%struct.TYPE_16__* %153, i32 %156)
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %23, align 4
  %162 = mul nsw i32 %161, %160
  store i32 %162, i32* %23, align 4
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %164 = call i32 @sse_mb(%struct.TYPE_16__* %163)
  %165 = load i32, i32* @FF_LAMBDA_SHIFT, align 4
  %166 = shl i32 %164, %165
  %167 = load i32, i32* %23, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %23, align 4
  br label %169

169:                                              ; preds = %152, %144
  %170 = load i32*, i32** %20, align 8
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  %176 = load i32**, i32*** %175, align 8
  %177 = getelementptr inbounds [3 x i32*], [3 x i32*]* %24, i64 0, i64 0
  %178 = call i32 @memcpy(i32** %176, i32** %177, i32 8)
  br label %179

179:                                              ; preds = %173, %169
  %180 = load i32, i32* %23, align 4
  %181 = load i32*, i32** %19, align 8
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  %185 = load i32, i32* %23, align 4
  %186 = load i32*, i32** %19, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32*, i32** %20, align 8
  %188 = load i32, i32* %187, align 4
  %189 = xor i32 %188, 1
  store i32 %189, i32* %187, align 4
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %192 = load i32, i32* %15, align 4
  %193 = call i32 @copy_context_after_encode(%struct.TYPE_16__* %190, %struct.TYPE_16__* %191, i32 %192)
  br label %194

194:                                              ; preds = %184, %179
  ret void
}

declare dso_local i32 @copy_context_before_encode(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @memcpy(i32**, i32**, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @encode_mb(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @put_bits_count(i8**) #1

declare dso_local i32 @ff_mpv_reconstruct_mb(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sse_mb(%struct.TYPE_16__*) #1

declare dso_local i32 @copy_context_after_encode(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
