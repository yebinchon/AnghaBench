; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvdec.c_ff_qsv_process_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvdec.c_ff_qsv_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i64, i32, i32, i64 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i64, i32 }

@AV_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_qsv_process_data(%struct.TYPE_28__* %0, %struct.TYPE_26__* %1, i32* %2, i32* %3, %struct.TYPE_27__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_25__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_27__, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %11, align 8
  %16 = bitcast %struct.TYPE_25__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load i32, i32* @AV_PIX_FMT_NV12, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %5
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %28 = call i32 @qsv_decode(%struct.TYPE_28__* %23, %struct.TYPE_26__* %24, i32* %25, i32* %26, %struct.TYPE_27__* %27)
  store i32 %28, i32* %6, align 4
  br label %181

29:                                               ; preds = %5
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 0
  store i32 1280, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 1
  store i32 720, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @qsv_decode_header(%struct.TYPE_28__* %57, %struct.TYPE_26__* %58, %struct.TYPE_27__* %59, i32 %60, %struct.TYPE_25__* %13)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %150

64:                                               ; preds = %56
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @ff_qsv_map_fourcc(i32 %71)
  %73 = icmp ne i64 %67, %72
  br i1 %73, label %94, label %74

74:                                               ; preds = %64
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %78, %82
  br i1 %83, label %94, label %84

84:                                               ; preds = %74
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %88, %92
  br i1 %93, label %94, label %150

94:                                               ; preds = %84, %74, %64
  %95 = bitcast %struct.TYPE_27__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %95, i8 0, i64 8, i1 false)
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %94
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 1
  store i32 1, i32* %102, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, -1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @qsv_decode(%struct.TYPE_28__* %107, %struct.TYPE_26__* %108, i32* %109, i32* %110, %struct.TYPE_27__* %15)
  store i32 %111, i32* %6, align 4
  br label %181

112:                                              ; preds = %94
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  store i32 0, i32* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @ff_qsv_map_fourcc(i32 %118)
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %14, align 4
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = sext i32 %120 to i64
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @qsv_decode_preinit(%struct.TYPE_28__* %140, %struct.TYPE_26__* %141, i32 %142, %struct.TYPE_25__* %13)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %112
  br label %172

147:                                              ; preds = %112
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 2
  store i32 0, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %84, %56
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %150
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %158 = call i32 @qsv_decode_init(%struct.TYPE_28__* %156, %struct.TYPE_26__* %157, %struct.TYPE_25__* %13)
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %172

162:                                              ; preds = %155
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 2
  store i32 1, i32* %164, align 4
  br label %165

165:                                              ; preds = %162, %150
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = load i32*, i32** %10, align 8
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %171 = call i32 @qsv_decode(%struct.TYPE_28__* %166, %struct.TYPE_26__* %167, i32* %168, i32* %169, %struct.TYPE_27__* %170)
  store i32 %171, i32* %6, align 4
  br label %181

172:                                              ; preds = %161, %146
  %173 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %174 = trunc i64 %173 to i32
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  %177 = sext i32 %174 to i64
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %172, %165, %100, %22
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qsv_decode(%struct.TYPE_28__*, %struct.TYPE_26__*, i32*, i32*, %struct.TYPE_27__*) #2

declare dso_local i32 @qsv_decode_header(%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__*, i32, %struct.TYPE_25__*) #2

declare dso_local i64 @ff_qsv_map_fourcc(i32) #2

declare dso_local i32 @qsv_decode_preinit(%struct.TYPE_28__*, %struct.TYPE_26__*, i32, %struct.TYPE_25__*) #2

declare dso_local i32 @qsv_decode_init(%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_25__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
