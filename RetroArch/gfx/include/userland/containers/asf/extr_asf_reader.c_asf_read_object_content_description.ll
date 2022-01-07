; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_object_content_description.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_object_content_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Title Length\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Author Length\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Copyright Length\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Description Length\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Rating Length\00", align 1
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Author\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Copyright\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Rating\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @asf_read_object_content_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_object_content_description(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @ASF_READ_U16(i32* %11, i64 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i64 %13, i64* %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @ASF_READ_U16(i32* %14, i64 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i64 %16, i64* %7, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @ASF_READ_U16(i32* %17, i64 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i64 %19, i64* %8, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @ASF_READ_U16(i32* %20, i64 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i64 %22, i64* %9, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @ASF_READ_U16(i32* %23, i64 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i64 %25, i64* %10, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @CHECK_POINT(i32* %26, i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %33, i32* %3, align 4
  br label %81

34:                                               ; preds = %2
  %35 = load i32*, i32** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @ASF_SKIP_STRING(i32* %35, i64 %36, i64 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %43, i32* %3, align 4
  br label %81

44:                                               ; preds = %34
  %45 = load i32*, i32** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @ASF_SKIP_STRING(i32* %45, i64 %46, i64 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %53, i32* %3, align 4
  br label %81

54:                                               ; preds = %44
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @ASF_SKIP_STRING(i32* %55, i64 %56, i64 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %63, i32* %3, align 4
  br label %81

64:                                               ; preds = %54
  %65 = load i32*, i32** %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @ASF_SKIP_STRING(i32* %65, i64 %66, i64 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %73, i32* %3, align 4
  br label %81

74:                                               ; preds = %64
  %75 = load i32*, i32** %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @ASF_SKIP_STRING(i32* %75, i64 %76, i64 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @STREAM_STATUS(i32* %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %74, %72, %62, %52, %42, %32
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @ASF_READ_U16(i32*, i64, i8*) #1

declare dso_local i32 @CHECK_POINT(i32*, i64) #1

declare dso_local i32 @ASF_SKIP_STRING(i32*, i64, i64, i8*) #1

declare dso_local i32 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
