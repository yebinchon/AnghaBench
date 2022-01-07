; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/nes/ntsc/extr_demo.c_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/nes/ntsc/extr_demo.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"nes.raw\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Couldn't open image file\00", align 1
@nes_height = common dso_local global i64 0, align 8
@nes_width = common dso_local global i64 0, align 8
@nes_pixels = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@ntsc = common dso_local global i32* null, align 8
@setup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %2, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 @fatal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i64, i64* @nes_height, align 8
  %9 = load i64, i64* @nes_width, align 8
  %10 = mul nsw i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = call i64 @malloc(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** @nes_pixels, align 8
  %14 = load i8*, i8** @nes_pixels, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = call i32 @fatal_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %7
  %19 = load i8*, i8** @nes_pixels, align 8
  %20 = load i64, i64* @nes_width, align 8
  %21 = load i64, i64* @nes_height, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @fread(i8* %19, i64 %20, i64 %21, i32* %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @fclose(i32* %24)
  %26 = call i64 @malloc(i32 4)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** @ntsc, align 8
  %28 = load i32*, i32** @ntsc, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %18
  %31 = call i32 @fatal_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %18
  %33 = load i32*, i32** @ntsc, align 8
  %34 = call i32 @nes_ntsc_init(i32* %33, i32* @setup)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fatal_error(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fread(i8*, i64, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @nes_ntsc_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
