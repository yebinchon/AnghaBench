; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_mergeSubtitles.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_mergeSubtitles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_18__*)* @mergeSubtitles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @mergeSubtitles(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %6, align 8
  %11 = call %struct.TYPE_20__* @hb_buffer_list_clear(i32* %5)
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %53, label %16

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %50, %16
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = call i64 @hb_buffer_list_count(i32* %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %17
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = call %struct.TYPE_20__* @hb_buffer_list_head(i32* %24)
  store %struct.TYPE_20__* %25, %struct.TYPE_20__** %4, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %22
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = call %struct.TYPE_20__* @hb_buffer_list_rem_head(i32* %42)
  store %struct.TYPE_20__* %43, %struct.TYPE_20__** %4, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = call %struct.TYPE_20__* @setSubDuration(%struct.TYPE_18__* %44, %struct.TYPE_20__* %45)
  store %struct.TYPE_20__* %46, %struct.TYPE_20__** %4, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = call i32 @hb_buffer_list_append(i32* %5, %struct.TYPE_20__* %47)
  br label %50

49:                                               ; preds = %33, %22
  br label %51

50:                                               ; preds = %40
  br label %17

51:                                               ; preds = %49, %17
  %52 = call %struct.TYPE_20__* @hb_buffer_list_clear(i32* %5)
  store %struct.TYPE_20__* %52, %struct.TYPE_20__** %2, align 8
  br label %105

53:                                               ; preds = %1
  br label %54

54:                                               ; preds = %102, %53
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = call i64 @hb_buffer_list_count(i32* %56)
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %103

59:                                               ; preds = %54
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = call %struct.TYPE_20__* @hb_buffer_list_head(i32* %61)
  store %struct.TYPE_20__* %62, %struct.TYPE_20__** %4, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = call %struct.TYPE_20__* @hb_buffer_list_rem_head(i32* %72)
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %4, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %75 = call i32 @hb_buffer_list_append(i32* %5, %struct.TYPE_20__* %74)
  br label %103

76:                                               ; preds = %59
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %78 = call i32 @mergeSubtitleOverlaps(%struct.TYPE_19__* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %103

82:                                               ; preds = %76
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = call %struct.TYPE_20__* @hb_buffer_list_rem_head(i32* %84)
  store %struct.TYPE_20__* %85, %struct.TYPE_20__** %4, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %87 = icmp ne %struct.TYPE_20__* %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %88
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %99 = call %struct.TYPE_20__* @setSubDuration(%struct.TYPE_18__* %97, %struct.TYPE_20__* %98)
  store %struct.TYPE_20__* %99, %struct.TYPE_20__** %4, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = call i32 @hb_buffer_list_append(i32* %5, %struct.TYPE_20__* %100)
  br label %102

102:                                              ; preds = %96, %88, %82
  br label %54

103:                                              ; preds = %81, %70, %54
  %104 = call %struct.TYPE_20__* @hb_buffer_list_clear(i32* %5)
  store %struct.TYPE_20__* %104, %struct.TYPE_20__** %2, align 8
  br label %105

105:                                              ; preds = %103, %51
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  ret %struct.TYPE_20__* %106
}

declare dso_local %struct.TYPE_20__* @hb_buffer_list_clear(i32*) #1

declare dso_local i64 @hb_buffer_list_count(i32*) #1

declare dso_local %struct.TYPE_20__* @hb_buffer_list_head(i32*) #1

declare dso_local %struct.TYPE_20__* @hb_buffer_list_rem_head(i32*) #1

declare dso_local %struct.TYPE_20__* @setSubDuration(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @mergeSubtitleOverlaps(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
