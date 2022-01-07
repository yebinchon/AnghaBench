; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_element_data_uint.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_element_data_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"u8-integer\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"u16-integer\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"u24-integer\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"u32-integer\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"u40-integer\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"u48-integer\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"u56-integer\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"u64-integer\00", align 1
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @mkv_read_element_data_uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_read_element_data_uint(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %41 [
    i32 1, label %9
    i32 2, label %13
    i32 3, label %17
    i32 4, label %21
    i32 5, label %25
    i32 6, label %29
    i32 7, label %33
    i32 8, label %37
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @READ_U8(i32* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %7, align 8
  store i32 %11, i32* %12, align 4
  br label %43

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @READ_U16(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  br label %43

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @READ_U24(i32* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @READ_U32(i32* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %43

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @READ_U40(i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %43

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @READ_U48(i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %43

33:                                               ; preds = %3
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @READ_U56(i32* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %43

37:                                               ; preds = %3
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @READ_U64(i32* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %43

41:                                               ; preds = %3
  %42 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %42, i32* %4, align 4
  br label %46

43:                                               ; preds = %37, %33, %29, %25, %21, %17, %13, %9
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @STREAM_STATUS(i32* %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %41
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @READ_U8(i32*, i8*) #1

declare dso_local i32 @READ_U16(i32*, i8*) #1

declare dso_local i32 @READ_U24(i32*, i8*) #1

declare dso_local i32 @READ_U32(i32*, i8*) #1

declare dso_local i32 @READ_U40(i32*, i8*) #1

declare dso_local i32 @READ_U48(i32*, i8*) #1

declare dso_local i32 @READ_U56(i32*, i8*) #1

declare dso_local i32 @READ_U64(i32*, i8*) #1

declare dso_local i32 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
