; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xfacedec.c_xface_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xfacedec.c_xface_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_16__ = type { i32, i64* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i8**, i32* }

@XFACE_FIRST_PRINT = common dso_local global i64 0, align 8
@XFACE_LAST_PRINT = common dso_local global i64 0, align 8
@XFACE_MAX_DIGITS = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Buffer is longer than expected, truncating at byte %d\0A\00", align 1
@XFACE_PRINTS = common dso_local global i32 0, align 4
@XFACE_PIXELS = common dso_local global i32 0, align 4
@XFACE_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_16__*)* @xface_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xface_decode_frame(%struct.TYPE_18__* %0, i8* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %10, align 8
  %23 = bitcast %struct.TYPE_15__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %19, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %28 = call i32 @ff_get_buffer(%struct.TYPE_18__* %26, %struct.TYPE_17__* %27, i32 0)
  store i32 %28, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %208

32:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %83, %32
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %39, %33
  %49 = phi i1 [ false, %33 ], [ %47, %39 ]
  br i1 %49, label %50, label %86

50:                                               ; preds = %48
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %18, align 8
  %58 = load i64, i64* %18, align 8
  %59 = load i64, i64* @XFACE_FIRST_PRINT, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %50
  %62 = load i64, i64* %18, align 8
  %63 = load i64, i64* @XFACE_LAST_PRINT, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %50
  br label %83

66:                                               ; preds = %61
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* @XFACE_MAX_DIGITS, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = load i32, i32* @AV_LOG_WARNING, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @av_log(%struct.TYPE_18__* %72, i32 %73, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %86

76:                                               ; preds = %66
  %77 = load i32, i32* @XFACE_PRINTS, align 4
  %78 = call i32 @ff_big_mul(%struct.TYPE_15__* %16, i32 %77)
  %79 = load i64, i64* %18, align 8
  %80 = load i64, i64* @XFACE_FIRST_PRINT, align 8
  %81 = sub nsw i64 %79, %80
  %82 = call i32 @ff_big_add(%struct.TYPE_15__* %16, i64 %81)
  br label %83

83:                                               ; preds = %76, %65
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %33

86:                                               ; preds = %71, %48
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* @XFACE_PIXELS, align 4
  %91 = call i32 @memset(i8* %89, i32 0, i32 %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %17, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 @decode_block(%struct.TYPE_15__* %16, i8* %95, i32 16, i32 16, i32 0)
  %97 = load i8*, i8** %17, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 16
  %99 = call i32 @decode_block(%struct.TYPE_15__* %16, i8* %98, i32 16, i32 16, i32 0)
  %100 = load i8*, i8** %17, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 32
  %102 = call i32 @decode_block(%struct.TYPE_15__* %16, i8* %101, i32 16, i32 16, i32 0)
  %103 = load i8*, i8** %17, align 8
  %104 = load i32, i32* @XFACE_WIDTH, align 4
  %105 = mul nsw i32 %104, 16
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = call i32 @decode_block(%struct.TYPE_15__* %16, i8* %107, i32 16, i32 16, i32 0)
  %109 = load i8*, i8** %17, align 8
  %110 = load i32, i32* @XFACE_WIDTH, align 4
  %111 = mul nsw i32 %110, 16
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = getelementptr inbounds i8, i8* %113, i64 16
  %115 = call i32 @decode_block(%struct.TYPE_15__* %16, i8* %114, i32 16, i32 16, i32 0)
  %116 = load i8*, i8** %17, align 8
  %117 = load i32, i32* @XFACE_WIDTH, align 4
  %118 = mul nsw i32 %117, 16
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = getelementptr inbounds i8, i8* %120, i64 32
  %122 = call i32 @decode_block(%struct.TYPE_15__* %16, i8* %121, i32 16, i32 16, i32 0)
  %123 = load i8*, i8** %17, align 8
  %124 = load i32, i32* @XFACE_WIDTH, align 4
  %125 = mul nsw i32 %124, 32
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = call i32 @decode_block(%struct.TYPE_15__* %16, i8* %127, i32 16, i32 16, i32 0)
  %129 = load i8*, i8** %17, align 8
  %130 = load i32, i32* @XFACE_WIDTH, align 4
  %131 = mul nsw i32 %130, 32
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = getelementptr inbounds i8, i8* %133, i64 16
  %135 = call i32 @decode_block(%struct.TYPE_15__* %16, i8* %134, i32 16, i32 16, i32 0)
  %136 = load i8*, i8** %17, align 8
  %137 = load i32, i32* @XFACE_WIDTH, align 4
  %138 = mul nsw i32 %137, 32
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  %141 = getelementptr inbounds i8, i8* %140, i64 32
  %142 = call i32 @decode_block(%struct.TYPE_15__* %16, i8* %141, i32 16, i32 16, i32 0)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @ff_xface_generate_face(i8* %145, i8* %148)
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i8**, i8*** %151, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  %154 = load i8*, i8** %153, align 8
  store i8* %154, i8** %17, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %155

155:                                              ; preds = %200, %86
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @XFACE_PIXELS, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %203

159:                                              ; preds = %155
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp eq i32 %170, 7
  br i1 %171, label %172, label %180

172:                                              ; preds = %159
  %173 = load i32, i32* %15, align 4
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %17, align 8
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  store i8 %174, i8* %179, align 1
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %185

180:                                              ; preds = %159
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %14, align 4
  %183 = load i32, i32* %15, align 4
  %184 = shl i32 %183, 1
  store i32 %184, i32* %15, align 4
  br label %185

185:                                              ; preds = %180, %172
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* @XFACE_WIDTH, align 4
  %188 = sdiv i32 %187, 8
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %185
  store i32 0, i32* %13, align 4
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = load i8*, i8** %17, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  store i8* %198, i8** %17, align 8
  br label %199

199:                                              ; preds = %190, %185
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %155

203:                                              ; preds = %155
  %204 = load i32*, i32** %8, align 8
  store i32 1, i32* %204, align 4
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %203, %30
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, i32) #2

declare dso_local i32 @ff_big_mul(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @ff_big_add(%struct.TYPE_15__*, i64) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @decode_block(%struct.TYPE_15__*, i8*, i32, i32, i32) #2

declare dso_local i32 @ff_xface_generate_face(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
