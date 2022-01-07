; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_object_stream_bitrate_props.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_object_stream_bitrate_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Bitrate Records Count\00", align 1
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Average Bitrate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @asf_read_object_stream_bitrate_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_object_stream_bitrate_props(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ASF_READ_U16(i32* %8, i32 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %7, align 4
  %13 = mul nsw i32 %12, 6
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %29, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ASF_SKIP_U16(i32* %23, i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ASF_SKIP_U32(i32* %26, i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %18

32:                                               ; preds = %18
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @STREAM_STATUS(i32* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @ASF_READ_U16(i32*, i32, i8*) #1

declare dso_local i32 @ASF_SKIP_U16(i32*, i32, i8*) #1

declare dso_local i32 @ASF_SKIP_U32(i32*, i32, i8*) #1

declare dso_local i32 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
