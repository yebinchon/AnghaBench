; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_soun_damr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_soun_damr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"mode_set\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"mode_change_period\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"frame_per_second\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mp4_write_box_soun_damr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_write_box_soun_damr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @WRITE_U32(i32* %3, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @VC_FOURCC(i8 signext 100, i8 signext 97, i8 signext 109, i8 signext 114)
  %7 = call i32 @WRITE_FOURCC(i32* %5, i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @VC_FOURCC(i8 signext 66, i8 signext 82, i8 signext 67, i8 signext 77)
  %10 = call i32 @WRITE_FOURCC(i32* %8, i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @WRITE_U8(i32* %11, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @WRITE_U8(i32* %13, i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @WRITE_U8(i32* %15, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @WRITE_U8(i32* %17, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @STREAM_STATUS(i32* %19)
  ret i32 %20
}

declare dso_local i32 @WRITE_U32(i32*, i32, i8*) #1

declare dso_local i32 @WRITE_FOURCC(i32*, i32, i8*) #1

declare dso_local i32 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @WRITE_U8(i32*, i32, i8*) #1

declare dso_local i32 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
