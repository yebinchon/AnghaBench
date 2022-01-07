; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_avi_write_idx1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_avi_write_idx1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_18__**, %struct.TYPE_22__*, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64, i8*, i64, i64 }

@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"idx1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @avi_write_idx1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_write_idx1(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i8], align 1
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %3, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %4, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %176

25:                                               ; preds = %1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %9, align 8
  store i32 -1, i32* %12, align 4
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %27 = call i32 @ff_start_tag(%struct.TYPE_20__* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %46, %25
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %37, i64 %39
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %8, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %28

49:                                               ; preds = %28
  br label %50

50:                                               ; preds = %163, %49
  store i32 1, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %97, %50
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %51
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %60, i64 %62
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  store %struct.TYPE_19__* %66, %struct.TYPE_19__** %8, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %57
  br label %97

76:                                               ; preds = %57
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call %struct.TYPE_21__* @avi_get_ientry(%struct.TYPE_16__* %78, i64 %81)
  store %struct.TYPE_21__* %82, %struct.TYPE_21__** %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %76
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %85, %76
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %94, %struct.TYPE_21__** %9, align 8
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %93, %85
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %96, %75
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %51

100:                                              ; preds = %51
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %162, label %103

103:                                              ; preds = %100
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %106, i64 %108
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  store %struct.TYPE_19__* %112, %struct.TYPE_19__** %8, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %103
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @ffio_wfourcc(%struct.TYPE_20__* %119, i8* %122)
  br label %142

124:                                              ; preds = %103
  %125 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %129, i64 %131
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @avi_stream2fourcc(i8* %125, i32 %126, i32 %137)
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %140 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %141 = call i32 @ffio_wfourcc(%struct.TYPE_20__* %139, i8* %140)
  br label %142

142:                                              ; preds = %124, %118
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @avio_wl32(%struct.TYPE_20__* %143, i64 %146)
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @avio_wl32(%struct.TYPE_20__* %148, i64 %151)
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @avio_wl32(%struct.TYPE_20__* %153, i64 %156)
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %159, align 8
  br label %162

162:                                              ; preds = %142, %100
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  br i1 %166, label %50, label %167

167:                                              ; preds = %163
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @ff_end_tag(%struct.TYPE_20__* %168, i32 %169)
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @avi_write_counters(%struct.TYPE_23__* %171, i32 %174)
  br label %176

176:                                              ; preds = %167, %1
  ret i32 0
}

declare dso_local i32 @ff_start_tag(%struct.TYPE_20__*, i8*) #1

declare dso_local %struct.TYPE_21__* @avi_get_ientry(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @ffio_wfourcc(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @avi_stream2fourcc(i8*, i32, i32) #1

declare dso_local i32 @avio_wl32(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @ff_end_tag(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @avi_write_counters(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
