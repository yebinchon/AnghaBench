; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ts_stream_find_pids.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ts_stream_find_pids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }

@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"hb_ts_stream_find_pids - end of file\00", align 1
@P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @hb_ts_stream_find_pids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_ts_stream_find_pids(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SEEK_END, align 4
  %12 = call i32 @fseeko(i32 %10, i32 0, i32 %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ftello(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 1
  %22 = load i32, i32* @SEEK_SET, align 4
  %23 = call i32 @fseeko(i32 %19, i32 %21, i32 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = call i32 @align_to_next_packet(%struct.TYPE_13__* %24)
  br label %26

26:                                               ; preds = %99, %51, %1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = call i32* @next_packet(%struct.TYPE_13__* %27)
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @hb_log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %100

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 31
  %38 = shl i32 %37, 8
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %38, %41
  %43 = and i32 %42, 8191
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %33
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = call i32 @decode_PAT(i32* %52, %struct.TYPE_13__* %53)
  br label %26

55:                                               ; preds = %46, %33
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %91, %55
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %56
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %62
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %73, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %72
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = call i64 @build_program_map(i32* %84, %struct.TYPE_13__* %85)
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %94

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %72, %62
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %56

94:                                               ; preds = %88, %56
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = call i64 @ts_index_of_video(%struct.TYPE_13__* %95)
  %97 = icmp sge i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %100

99:                                               ; preds = %94
  br label %26

100:                                              ; preds = %98, %31
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = call i64 @ts_index_of_video(%struct.TYPE_13__* %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 -1, i32* %2, align 4
  br label %113

105:                                              ; preds = %100
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @P, align 4
  %112 = call i32 @update_ts_streams(%struct.TYPE_13__* %106, i32 %110, i32 0, i32 -1, i32 %111, i32* null)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %105, %104
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @fseeko(i32, i32, i32) #1

declare dso_local i32 @ftello(i32) #1

declare dso_local i32 @align_to_next_packet(%struct.TYPE_13__*) #1

declare dso_local i32* @next_packet(%struct.TYPE_13__*) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32 @decode_PAT(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @build_program_map(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @ts_index_of_video(%struct.TYPE_13__*) #1

declare dso_local i32 @update_ts_streams(%struct.TYPE_13__*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
