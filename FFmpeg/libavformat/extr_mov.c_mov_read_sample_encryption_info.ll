; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_sample_encryption_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_sample_encryption_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i8* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Missing schm or tenc\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to read the initialization vector\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"hit EOF while reading sub-sample encryption info\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_22__**, i32)* @mov_read_sample_encryption_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_sample_encryption_info(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, %struct.TYPE_19__* %2, %struct.TYPE_22__** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_22__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_22__** %3, %struct.TYPE_22__*** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %5
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = call i32 @av_log(i32 %23, i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %26, i32* %6, align 4
  br label %162

27:                                               ; preds = %5
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_22__* @av_encryption_info_clone(i32 %31)
  %33 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %33, align 8
  %34 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %36 = icmp ne %struct.TYPE_22__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %6, align 4
  br label %162

40:                                               ; preds = %27
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %40
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %48 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @avio_read(%struct.TYPE_21__* %47, i32 %51, i64 %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %46
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AV_LOG_ERROR, align 4
  %67 = call i32 @av_log(i32 %65, i32 %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %68, align 8
  %70 = call i32 @av_encryption_info_free(%struct.TYPE_22__* %69)
  %71 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %71, align 8
  %72 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %72, i32* %6, align 4
  br label %162

73:                                               ; preds = %46
  br label %74

74:                                               ; preds = %73, %40
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %161

77:                                               ; preds = %74
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %79 = call i8* @avio_rb16(%struct.TYPE_21__* %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %13, align 4
  %81 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = call i32 @av_free(%struct.TYPE_17__* %84)
  %86 = load i32, i32* %13, align 4
  %87 = call %struct.TYPE_17__* @av_mallocz_array(i32 %86, i32 4)
  %88 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  store %struct.TYPE_17__* %87, %struct.TYPE_17__** %90, align 8
  %91 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = icmp ne %struct.TYPE_17__* %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %77
  %97 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  %99 = call i32 @av_encryption_info_free(%struct.TYPE_22__* %98)
  %100 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %100, align 8
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = call i32 @AVERROR(i32 %101)
  store i32 %102, i32* %6, align 4
  br label %162

103:                                              ; preds = %77
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %137, %103
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  %113 = xor i1 %112, true
  br label %114

114:                                              ; preds = %108, %104
  %115 = phi i1 [ false, %104 ], [ %113, %108 ]
  br i1 %115, label %116, label %140

116:                                              ; preds = %114
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %118 = call i8* @avio_rb16(%struct.TYPE_21__* %117)
  %119 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  store i8* %118, i8** %126, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %128 = call i32 @avio_rb32(%struct.TYPE_21__* %127)
  %129 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  store i32 %128, i32* %136, align 8
  br label %137

137:                                              ; preds = %116
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %104

140:                                              ; preds = %114
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @AV_LOG_ERROR, align 4
  %150 = call i32 @av_log(i32 %148, i32 %149, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %151 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %151, align 8
  %153 = call i32 @av_encryption_info_free(%struct.TYPE_22__* %152)
  %154 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %154, align 8
  %155 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %155, i32* %6, align 4
  br label %162

156:                                              ; preds = %140
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 8
  br label %161

161:                                              ; preds = %156, %74
  store i32 0, i32* %6, align 4
  br label %162

162:                                              ; preds = %161, %145, %96, %62, %37, %20
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local %struct.TYPE_22__* @av_encryption_info_clone(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @avio_read(%struct.TYPE_21__*, i32, i64) #1

declare dso_local i32 @av_encryption_info_free(%struct.TYPE_22__*) #1

declare dso_local i8* @avio_rb16(%struct.TYPE_21__*) #1

declare dso_local i32 @av_free(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @avio_rb32(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
