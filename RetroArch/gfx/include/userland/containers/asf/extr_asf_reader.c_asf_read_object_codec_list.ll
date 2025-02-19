; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_object_codec_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_object_codec_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Codec Entries Count\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Codec Name Length\00", align 1
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Codec Name\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Codec Description Length\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Codec Description\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Codec Information Length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @asf_read_object_codec_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_object_codec_list(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @ASF_SKIP_GUID(i32* %11, i64 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @ASF_READ_U32(i32* %14, i64 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i64 %16, i64* %8, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @CHECK_POINT(i32* %17, i64 %18)
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %72, %2
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %75

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @ASF_SKIP_U16(i32* %25, i64 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32*, i32** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @ASF_READ_U16(i32* %28, i64 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %35, i32* %3, align 4
  br label %77

36:                                               ; preds = %24
  %37 = load i32*, i32** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = mul nsw i64 %39, 2
  %41 = call i32 @ASF_SKIP_STRING(i32* %37, i64 %38, i64 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32*, i32** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @ASF_READ_U16(i32* %42, i64 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %49, i32* %3, align 4
  br label %77

50:                                               ; preds = %36
  %51 = load i32*, i32** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %9, align 8
  %54 = mul nsw i64 %53, 2
  %55 = call i32 @ASF_SKIP_STRING(i32* %51, i64 %52, i64 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %56 = load i32*, i32** %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @ASF_READ_U16(i32* %56, i64 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %63, i32* %3, align 4
  br label %77

64:                                               ; preds = %50
  %65 = load i32*, i32** %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @ASF_SKIP_BYTES(i32* %65, i64 %66, i64 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @CHECK_POINT(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %64
  %73 = load i64, i64* %7, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %20

75:                                               ; preds = %20
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %62, %48, %34
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @ASF_SKIP_GUID(i32*, i64, i8*) #1

declare dso_local i64 @ASF_READ_U32(i32*, i64, i8*) #1

declare dso_local i32 @CHECK_POINT(i32*, i64) #1

declare dso_local i32 @ASF_SKIP_U16(i32*, i64, i8*) #1

declare dso_local i64 @ASF_READ_U16(i32*, i64, i8*) #1

declare dso_local i32 @ASF_SKIP_STRING(i32*, i64, i64, i8*) #1

declare dso_local i32 @ASF_SKIP_BYTES(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
