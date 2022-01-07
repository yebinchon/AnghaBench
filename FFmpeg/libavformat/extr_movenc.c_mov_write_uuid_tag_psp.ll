; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_uuid_tag_psp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_uuid_tag_psp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"USMT\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"MTDT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @mov_write_uuid_tag_psp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_uuid_tag_psp(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @avio_wb32(i32* %5, i32 52)
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @ffio_wfourcc(i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @ffio_wfourcc(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @avio_wb32(i32* %11, i32 567431118)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @avio_wb32(i32* %13, i32 -1148688036)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @avio_wb32(i32* %15, i32 -87439552)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @avio_wb32(i32* %17, i32 28)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @ffio_wfourcc(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @avio_wb32(i32* %21, i32 65554)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @avio_wb32(i32* %23, i32 10)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @avio_wb32(i32* %25, i32 1438908416)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @avio_wb32(i32* %27, i32 1)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @avio_wb32(i32* %29, i32 0)
  ret i32 52
}

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
