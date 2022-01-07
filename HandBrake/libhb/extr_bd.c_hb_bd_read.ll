; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_bd.c_hb_bd_read.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_bd.c_hb_bd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"bd: Play item %u\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"bd: End of title\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"bd: Read Error\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"bd: Error, too many consecutive read errors\00", align 1
@HB_ERROR_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"bd: Read Error, skipping bad data.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_bd_read(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [192 x i32], align 16
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32* null, i32** %10, align 8
  br label %12

12:                                               ; preds = %1, %83, %93, %137
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [192 x i32], [192 x i32]* %7, i64 0, i64 0
  %17 = call i32 @next_packet(i32 %15, i32* %16)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %56, %12
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @bd_get_event(i32 %21, %struct.TYPE_6__* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %55 [
    i32 131, label %27
    i32 129, label %40
    i32 128, label %44
    i32 130, label %49
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %27
  br label %56

40:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @hb_deep_log(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %56

44:                                               ; preds = %24
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bd_read_skip_still(i32 %47)
  br label %56

49:                                               ; preds = %24
  %50 = call i32 @hb_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %4, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32* null, i32** %2, align 8
  br label %138

54:                                               ; preds = %49
  br label %56

55:                                               ; preds = %24
  br label %56

56:                                               ; preds = %55, %54, %44, %40, %39
  br label %18

57:                                               ; preds = %18
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = call i32 @hb_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @bd_tell(i32 %64)
  store i64 %65, i64* %9, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %69, 192
  %71 = call i32 @bd_seek(i32 %68, i64 %70)
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp sgt i32 %74, 10
  br i1 %75, label %76, label %83

76:                                               ; preds = %60
  %77 = call i32 @hb_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @HB_ERROR_READ, align 4
  %82 = call i32 @hb_set_work_error(i32 %80, i32 %81)
  store i32* null, i32** %2, align 8
  br label %138

83:                                               ; preds = %60
  br label %12

84:                                               ; preds = %57
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp sgt i32 %90, 1000
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32* null, i32** %2, align 8
  br label %138

93:                                               ; preds = %87
  br label %12

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 @hb_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %98, %95
  store i32 0, i32* %5, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %103, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %100
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [192 x i32], [192 x i32]* %7, i64 0, i64 0
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32* @hb_ts_decode_pkt(i32 %116, i32* %118, i32 %121, i32 %122)
  store i32* %123, i32** %10, align 8
  br label %132

124:                                              ; preds = %100
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [192 x i32], [192 x i32]* %7, i64 0, i64 0
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32* @hb_ts_decode_pkt(i32 %127, i32* %129, i32 0, i32 %130)
  store i32* %131, i32** %10, align 8
  br label %132

132:                                              ; preds = %124, %108
  %133 = load i32*, i32** %10, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32*, i32** %10, align 8
  store i32* %136, i32** %2, align 8
  br label %138

137:                                              ; preds = %132
  br label %12

138:                                              ; preds = %135, %92, %76, %53
  %139 = load i32*, i32** %2, align 8
  ret i32* %139
}

declare dso_local i32 @next_packet(i32, i32*) #1

declare dso_local i64 @bd_get_event(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @hb_deep_log(i32, i8*, i32) #1

declare dso_local i32 @bd_read_skip_still(i32) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i64 @bd_tell(i32) #1

declare dso_local i32 @bd_seek(i32, i64) #1

declare dso_local i32 @hb_set_work_error(i32, i32) #1

declare dso_local i32* @hb_ts_decode_pkt(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
