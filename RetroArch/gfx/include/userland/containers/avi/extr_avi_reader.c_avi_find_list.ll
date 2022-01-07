; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_reader.c_avi_find_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_reader.c_avi_find_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Chunk ID\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Chunk size\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64*)* @avi_find_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_find_list(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1 x i64], align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  br label %12

12:                                               ; preds = %49, %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @READ_FOURCC(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i64 %14, i64* %9, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @READ_U32(i32* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i64 %16, i64* %10, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @STREAM_STATUS(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %56

23:                                               ; preds = %12
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @VC_FOURCC(i8 signext 76, i8 signext 73, i8 signext 83, i8 signext 84)
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %30 = bitcast i64* %29 to i32*
  %31 = call i32 @PEEK_BYTES(i32* %28, i32* %30, i32 4)
  %32 = icmp ne i32 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %34, i32* %4, align 4
  br label %56

35:                                               ; preds = %27
  %36 = getelementptr inbounds [1 x i64], [1 x i64]* %11, i64 0, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i64, i64* %10, align 8
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %43, i32* %4, align 4
  br label %56

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %23
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @AVI_SKIP_CHUNK(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @STREAM_STATUS(i32* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %12, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %40, %33, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @READ_FOURCC(i32*, i8*) #1

declare dso_local i64 @READ_U32(i32*, i8*) #1

declare dso_local i32 @STREAM_STATUS(i32*) #1

declare dso_local i64 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @PEEK_BYTES(i32*, i32*, i32) #1

declare dso_local i32 @AVI_SKIP_CHUNK(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
