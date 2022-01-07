; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_denoise.c_hb_denoise_work.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_denoise.c_hb_denoise_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32*, i32*, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_FILTER_DONE = common dso_local global i32 0, align 4
@HB_FILTER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__**, %struct.TYPE_18__**)* @hb_denoise_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_denoise_work(%struct.TYPE_17__* %0, %struct.TYPE_18__** %1, %struct.TYPE_18__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__**, align 8
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %7, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %8, align 8
  %16 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %9, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %27 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %27, align 8
  %28 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %28, align 8
  %29 = load i32, i32* @HB_FILTER_DONE, align 4
  store i32 %29, i32* %4, align 4
  br label %166

30:                                               ; preds = %3
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_18__* @hb_frame_buffer_init(i32 %34, i32 %38, i32 %42)
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %10, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %30
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 2
  %85 = trunc i64 %84 to i32
  %86 = call i64 @malloc(i32 %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %76, %30
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %153, %89
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 3
  br i1 %92, label %93, label %156

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %94, 2
  store i32 %95, i32* %12, align 4
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @hqdn3d_denoise(i32 %103, i32 %111, i64 %114, i32* %120, i32 %128, i32 %136, i32 %143, i32 %151)
  br label %153

153:                                              ; preds = %93
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %90

156:                                              ; preds = %90
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = bitcast %struct.TYPE_15__* %158 to i8*
  %162 = bitcast %struct.TYPE_15__* %160 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %161, i8* align 8 %162, i64 4, i1 false)
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %164 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %163, %struct.TYPE_18__** %164, align 8
  %165 = load i32, i32* @HB_FILTER_OK, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %156, %25
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local %struct.TYPE_18__* @hb_frame_buffer_init(i32, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @hqdn3d_denoise(i32, i32, i64, i32*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
