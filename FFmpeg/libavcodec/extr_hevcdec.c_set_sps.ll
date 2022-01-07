; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_set_sps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_set_sps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, i8**, i8**, %struct.TYPE_13__*, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, %struct.TYPE_14__**, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32, i32*, i32, i32*, i32, i32, i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32)* @set_sps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sps(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = call i32 @pic_arrays_free(%struct.TYPE_17__* %14)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %18, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %194

25:                                               ; preds = %3
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = call i32 @pic_arrays_init(%struct.TYPE_17__* %26, %struct.TYPE_16__* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %187

32:                                               ; preds = %25
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = call i32 @export_stream_params(%struct.TYPE_17__* %33, %struct.TYPE_16__* %34)
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ff_hevc_pred_init(i32* %42, i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ff_hevc_dsp_init(i32* %48, i32 %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ff_videodsp_init(i32* %54, i32 %57)
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %77, %32
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = call i32 @av_freep(i8** %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = call i32 @av_freep(i8** %75)
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %59

80:                                               ; preds = %59
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 9
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %164

85:                                               ; preds = %80
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %164, label %92

92:                                               ; preds = %85
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 3, i32 1
  store i32 %98, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %160, %92
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %163

103:                                              ; preds = %99
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %106, %113
  store i32 %114, i32* %12, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %117, %124
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %12, align 4
  %127 = mul nsw i32 %126, 2
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %127, %130
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %131, %134
  %136 = call i8* @av_malloc(i32 %135)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* %136, i8** %142, align 8
  %143 = load i32, i32* %13, align 4
  %144 = mul nsw i32 %143, 2
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %144, %147
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %148, %151
  %153 = call i8* @av_malloc(i32 %152)
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = load i8**, i8*** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  store i8* %153, i8** %159, align 8
  br label %160

160:                                              ; preds = %103
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %99

163:                                              ; preds = %99
  br label %164

164:                                              ; preds = %163, %85, %80
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  store %struct.TYPE_16__* %165, %struct.TYPE_16__** %168, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %171, align 8
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 8
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %172, i64 %178
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = inttoptr i64 %182 to i32*
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 2
  store i32* %183, i32** %186, align 8
  store i32 0, i32* %4, align 4
  br label %194

187:                                              ; preds = %31
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %189 = call i32 @pic_arrays_free(%struct.TYPE_17__* %188)
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %192, align 8
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %187, %164, %24
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @pic_arrays_free(%struct.TYPE_17__*) #1

declare dso_local i32 @pic_arrays_init(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @export_stream_params(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ff_hevc_pred_init(i32*, i32) #1

declare dso_local i32 @ff_hevc_dsp_init(i32*, i32) #1

declare dso_local i32 @ff_videodsp_init(i32*, i32) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i8* @av_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
