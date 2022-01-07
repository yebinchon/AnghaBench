; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_sequence.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"sequence key\00", align 1
@Sequence = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"sequence uid\00", align 1
@TimecodeComponent = common dso_local global i32 0, align 4
@SourceClip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, i32*)* @mxf_write_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxf_write_sequence(%struct.TYPE_14__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %7, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %8, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %17 = call i32 @mxf_write_metadata_key(%struct.TYPE_13__* %16, i32 69376)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 16
  %23 = call i32 @PRINT_KEY(%struct.TYPE_14__* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = call i32 @klv_encode_ber_length(%struct.TYPE_13__* %24, i32 80)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = call i32 @mxf_write_local_tag(%struct.TYPE_13__* %26, i32 16, i32 15370)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = load i32, i32* @Sequence, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mxf_write_uuid(%struct.TYPE_13__* %28, i32 %29, i32 %32)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 16
  %39 = call i32 @PRINT_KEY(%struct.TYPE_14__* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @mxf_write_common_fields(%struct.TYPE_14__* %40, i32* %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = call i32 @mxf_write_local_tag(%struct.TYPE_13__* %43, i32 24, i32 4097)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = call i32 @mxf_write_refs_count(%struct.TYPE_13__* %45, i32 1)
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %3
  %53 = load i32, i32* @TimecodeComponent, align 4
  store i32 %53, i32* %9, align 4
  br label %56

54:                                               ; preds = %3
  %55 = load i32, i32* @SourceClip, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @mxf_write_uuid(%struct.TYPE_13__* %57, i32 %58, i32 %61)
  ret void
}

declare dso_local i32 @mxf_write_metadata_key(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @PRINT_KEY(%struct.TYPE_14__*, i8*, i64) #1

declare dso_local i32 @klv_encode_ber_length(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @mxf_write_local_tag(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @mxf_write_uuid(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @mxf_write_common_fields(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @mxf_write_refs_count(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
