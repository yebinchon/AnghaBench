; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_content_storage.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_content_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"content storage key\00", align 1
@ContentStorage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"content storage uid\00", align 1
@EssenceContainerData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_12__*, i32)* @mxf_write_content_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxf_write_content_storage(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %7, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %13 = call i32 @mxf_write_metadata_key(%struct.TYPE_13__* %12, i32 71680)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 16
  %19 = call i32 @PRINT_KEY(%struct.TYPE_14__* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 16, %21
  %23 = add nsw i32 60, %22
  %24 = call i32 @klv_encode_ber_length(%struct.TYPE_13__* %20, i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = call i32 @mxf_write_local_tag(%struct.TYPE_13__* %25, i32 16, i32 15370)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = load i32, i32* @ContentStorage, align 4
  %29 = call i32 @mxf_write_uuid(%struct.TYPE_13__* %27, i32 %28, i32 0)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 16
  %35 = call i32 @PRINT_KEY(%struct.TYPE_14__* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 16, %37
  %39 = add nsw i32 %38, 8
  %40 = call i32 @mxf_write_local_tag(%struct.TYPE_13__* %36, i32 %39, i32 6401)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @mxf_write_refs_count(%struct.TYPE_13__* %41, i32 %42)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %63, %3
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mxf_write_uuid(%struct.TYPE_13__* %49, i32 %55, i32 %61)
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = call i32 @mxf_write_local_tag(%struct.TYPE_13__* %67, i32 24, i32 6402)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = call i32 @mxf_write_refs_count(%struct.TYPE_13__* %69, i32 1)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = load i32, i32* @EssenceContainerData, align 4
  %73 = call i32 @mxf_write_uuid(%struct.TYPE_13__* %71, i32 %72, i32 0)
  ret void
}

declare dso_local i32 @mxf_write_metadata_key(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @PRINT_KEY(%struct.TYPE_14__*, i8*, i64) #1

declare dso_local i32 @klv_encode_ber_length(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @mxf_write_local_tag(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @mxf_write_uuid(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @mxf_write_refs_count(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
