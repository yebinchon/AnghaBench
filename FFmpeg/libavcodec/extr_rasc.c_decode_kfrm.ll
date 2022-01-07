; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rasc.c_decode_kfrm.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rasc.c_decode_kfrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_18__, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_14__ = type { i32*, i32** }
%struct.TYPE_18__ = type { i32, i32*, i32, i64 }
%struct.TYPE_13__ = type { i32*, i32** }
%struct.TYPE_16__ = type { i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Inflate reset error: %d\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Inflate failed with return code: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32)* @decode_kfrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_kfrm(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %8, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @bytestream2_tell(i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @bytestream2_peek_le32(i32* %23)
  %25 = icmp eq i32 %24, 101
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @decode_fint(%struct.TYPE_17__* %27, %struct.TYPE_16__* %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %4, align 4
  br label %226

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %46, i32* %4, align 4
  br label %226

47:                                               ; preds = %36
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = call i32 @inflateReset(%struct.TYPE_18__* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @Z_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @av_log(%struct.TYPE_17__* %55, i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %59, i32* %4, align 4
  br label %226

60:                                               ; preds = %47
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @bytestream2_tell(i32* %64)
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %63, %66
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 3
  store i64 %67, i64* %70, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @bytestream2_get_bytes_left(i32* %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %86, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %82, i64 %95
  store i32* %96, i32** %10, align 8
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %143, %60
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %146

103:                                              ; preds = %97
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  store i32* %104, i32** %107, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %117 = call i32 @inflate(%struct.TYPE_18__* %115, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @Z_OK, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %103
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @Z_STREAM_END, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = load i32, i32* @AV_LOG_ERROR, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @av_log(%struct.TYPE_17__* %126, i32 %127, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %130, i32* %4, align 4
  br label %226

131:                                              ; preds = %121, %103
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = sext i32 %138 to i64
  %141 = sub i64 0, %140
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32* %142, i32** %10, align 8
  br label %143

143:                                              ; preds = %131
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  br label %97

146:                                              ; preds = %97
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i32**, i32*** %150, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 0
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %156, 1
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %157, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %153, i64 %166
  store i32* %167, i32** %10, align 8
  store i32 0, i32* %15, align 4
  br label %168

168:                                              ; preds = %214, %146
  %169 = load i32, i32* %15, align 4
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %217

174:                                              ; preds = %168
  %175 = load i32*, i32** %10, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  store i32* %175, i32** %178, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 1
  %187 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %188 = call i32 @inflate(%struct.TYPE_18__* %186, i32 %187)
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @Z_OK, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %174
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* @Z_STREAM_END, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %192
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %198 = load i32, i32* @AV_LOG_ERROR, align 4
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @av_log(%struct.TYPE_17__* %197, i32 %198, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %201, i32* %4, align 4
  br label %226

202:                                              ; preds = %192, %174
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %10, align 8
  %211 = sext i32 %209 to i64
  %212 = sub i64 0, %211
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  store i32* %213, i32** %10, align 8
  br label %214

214:                                              ; preds = %202
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %15, align 4
  br label %168

217:                                              ; preds = %168
  %218 = load i32*, i32** %9, align 8
  %219 = load i32, i32* %7, align 4
  %220 = load i32*, i32** %9, align 8
  %221 = call i32 @bytestream2_tell(i32* %220)
  %222 = load i32, i32* %11, align 4
  %223 = sub i32 %221, %222
  %224 = sub i32 %219, %223
  %225 = call i32 @bytestream2_skip(i32* %218, i32 %224)
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %217, %196, %125, %54, %45, %33
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_peek_le32(i32*) #1

declare dso_local i32 @decode_fint(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @inflateReset(%struct.TYPE_18__*) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @inflate(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
