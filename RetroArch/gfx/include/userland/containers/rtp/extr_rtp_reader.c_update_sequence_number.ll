; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_reader.c_update_sequence_number.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_reader.c_update_sequence_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"RTP: Probation, %u more packet(s) to go at 0x%4.4hx\00", align 1
@MIN_SEQUENTIAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"RTP: Probation reset, wait for %u packet(s) at 0x%4.4hx\00", align 1
@MAX_DROPOUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"RTP: Drop duplicate packet at 0x%4.4hx\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"RTP: Jumped by %hu packets to 0x%4.4hx\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"RTP: Misorder restart at 0x%4.4hx\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"RTP: Misorder at 0x%4.4hx, expected 0x%4.4hx\00", align 1
@RTP_SEQ_MOD = common dso_local global i32 0, align 4
@MAX_MISORDER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @update_sequence_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_sequence_number(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  store i64 %11, i64* %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %16
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 (i32, i8*, i64, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %23
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @init_sequence_number(%struct.TYPE_4__* %41, i64 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  store i32 1, i32* %3, align 4
  br label %117

48:                                               ; preds = %23
  br label %62

49:                                               ; preds = %16
  %50 = load i64, i64* @MIN_SEQUENTIAL, align 8
  %51 = sub nsw i64 %50, 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 (i32, i8*, i64, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %59, i64 %60)
  br label %62

62:                                               ; preds = %49, %48
  store i32 0, i32* %3, align 4
  br label %117

63:                                               ; preds = %2
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @MAX_DROPOUT, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i64, i64* %5, align 8
  %72 = call i32 (i32, i8*, i64, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  store i32 0, i32* %3, align 4
  br label %117

73:                                               ; preds = %67
  %74 = load i64, i64* %6, align 8
  %75 = icmp sgt i64 %74, 1
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call i32 (i32, i8*, i64, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %77, i64 %78)
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %111

84:                                               ; preds = %63
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i64, i64* %5, align 8
  %92 = call i32 (i32, i8*, i64, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @init_sequence_number(%struct.TYPE_4__* %93, i64 %94)
  br label %110

96:                                               ; preds = %84
  %97 = load i64, i64* %5, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (i32, i8*, i64, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %97, i64 %100)
  %102 = load i64, i64* %5, align 8
  %103 = add nsw i64 %102, 1
  %104 = load i32, i32* @RTP_SEQ_MOD, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = and i64 %103, %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  store i32 0, i32* %3, align 4
  br label %117

110:                                              ; preds = %90
  br label %111

111:                                              ; preds = %110, %80
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  store i32 1, i32* %3, align 4
  br label %117

117:                                              ; preds = %112, %96, %70, %62, %40
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @LOG_INFO(i32, i8*, i64, ...) #1

declare dso_local i32 @init_sequence_number(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
