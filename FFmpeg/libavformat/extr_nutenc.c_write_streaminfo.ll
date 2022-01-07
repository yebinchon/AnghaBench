; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_write_streaminfo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_write_streaminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__*, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_18__ = type { i8*, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@ff_nut_dispositions = common dso_local global %struct.TYPE_19__* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Disposition\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"r_frame_rate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, i32)* @write_streaminfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_streaminfo(%struct.TYPE_15__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [256 x i32], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %8, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %23, i64 %25
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %10, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %28 = call i32 @avio_open_dyn_buf(i32** %11)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %4, align 4
  br label %170

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %42, %33
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %39 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %40 = call %struct.TYPE_18__* @av_dict_get(i32 %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %38, i32 %39)
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %10, align 8
  %41 = icmp ne %struct.TYPE_18__* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = load i32*, i32** %11, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @add_info(i32* %43, i8* %46, i32* %49)
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  br label %34

55:                                               ; preds = %34
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %90, %55
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** @ff_nut_dispositions, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %56
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** @ff_nut_dispositions, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %67, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %64
  %77 = load i32*, i32** %11, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** @ff_nut_dispositions, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i64 @add_info(i32* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %83)
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %76, %64
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %56

93:                                               ; preds = %56
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %143

101:                                              ; preds = %93
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %101
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 0
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @snprintf(i32* %114, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %122)
  br label %135

124:                                              ; preds = %107, %101
  %125 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 0
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @snprintf(i32* %125, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %129, i32 %133)
  br label %135

135:                                              ; preds = %124, %113
  %136 = load i32*, i32** %11, align 8
  %137 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 0
  %138 = call i64 @add_info(i32* %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %137)
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %13, align 4
  br label %143

143:                                              ; preds = %135, %93
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @avio_close_dyn_buf(i32* %144, i32** %12)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %143
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  %152 = call i32 @ff_put_v(i32* %149, i32 %151)
  %153 = load i32*, i32** %6, align 8
  %154 = call i32 @ff_put_v(i32* %153, i32 0)
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @ff_put_v(i32* %155, i32 0)
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 @ff_put_v(i32* %157, i32 0)
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @ff_put_v(i32* %159, i32 %160)
  %162 = load i32*, i32** %6, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @avio_write(i32* %162, i32* %163, i32 %164)
  br label %166

166:                                              ; preds = %148, %143
  %167 = load i32*, i32** %12, align 8
  %168 = call i32 @av_free(i32* %167)
  %169 = load i32, i32* %13, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %166, %31
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local %struct.TYPE_18__* @av_dict_get(i32, i8*, %struct.TYPE_18__*, i32) #1

declare dso_local i64 @add_info(i32*, i8*, i32*) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @ff_put_v(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
