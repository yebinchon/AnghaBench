; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_tcmi_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_tcmi_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Lucida Grande\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tcmi\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @mov_write_tcmi_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_tcmi_tag(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @avio_tell(i32* %7)
  store i32 %8, i32* %5, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @avio_wb32(i32* %9, i32 0)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @ffio_wfourcc(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @avio_wb32(i32* %13, i32 0)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @avio_wb16(i32* %15, i32 0)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @avio_wb16(i32* %17, i32 0)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @avio_wb16(i32* %19, i32 12)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @avio_wb16(i32* %21, i32 0)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @avio_wb16(i32* %23, i32 0)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @avio_wb16(i32* %25, i32 0)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @avio_wb16(i32* %27, i32 0)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @avio_wb16(i32* %29, i32 65535)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @avio_wb16(i32* %31, i32 65535)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @avio_wb16(i32* %33, i32 65535)
  %35 = load i32*, i32** %3, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = call i32 @avio_w8(i32* %35, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call i32 @avio_write(i32* %39, i8* %40, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @update_size(i32* %44, i32 %45)
  ret i32 %46
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @avio_write(i32*, i8*, i32) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
