; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ps_stream_getVideo.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ps_stream_getVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32, i64, i32, i32 }

@HB_DVD_READ_BUFFER_SIZE = common dso_local global i32 0, align 4
@V = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_18__*, %struct.TYPE_19__*)* @hb_ps_stream_getVideo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @hb_ps_stream_getVideo(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %11 = load i32, i32* @HB_DVD_READ_BUFFER_SIZE, align 4
  %12 = call %struct.TYPE_20__* @hb_buffer_init(i32 %11)
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %6, align 8
  store i32 2048, i32* %8, align 4
  br label %13

13:                                               ; preds = %81, %36, %2
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %8, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %82

17:                                               ; preds = %13
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %22 = call i32 @hb_ps_read_packet(%struct.TYPE_18__* %20, %struct.TYPE_20__* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %82

26:                                               ; preds = %17
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @hb_parse_ps(%struct.TYPE_18__* %27, i32 %30, i64 %33, %struct.TYPE_19__* %7)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %13

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 189
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @index_of_ps_stream(%struct.TYPE_18__* %42, i32 %44, i32 %46)
  store i32 %47, i32* %10, align 4
  br label %55

48:                                               ; preds = %37
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @index_of_ps_stream(%struct.TYPE_18__* %49, i32 %51, i32 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %48, %41
  %56 = load i32, i32* %10, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %55
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @V, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = bitcast %struct.TYPE_19__* %76 to i8*
  %78 = bitcast %struct.TYPE_19__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 24, i1 false)
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %79, %struct.TYPE_20__** %3, align 8
  br label %84

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %58, %55
  br label %13

82:                                               ; preds = %25, %13
  %83 = call i32 @hb_buffer_close(%struct.TYPE_20__** %6)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %84

84:                                               ; preds = %82, %75
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %85
}

declare dso_local %struct.TYPE_20__* @hb_buffer_init(i32) #1

declare dso_local i32 @hb_ps_read_packet(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @hb_parse_ps(%struct.TYPE_18__*, i32, i64, %struct.TYPE_19__*) #1

declare dso_local i32 @index_of_ps_stream(%struct.TYPE_18__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hb_buffer_close(%struct.TYPE_20__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
