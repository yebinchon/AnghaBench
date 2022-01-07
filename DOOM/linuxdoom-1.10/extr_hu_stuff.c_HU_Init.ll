; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_hu_stuff.c_HU_Init.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_hu_stuff.c_HU_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@french = common dso_local global i64 0, align 8
@french_shiftxform = common dso_local global i32 0, align 4
@shiftxform = common dso_local global i32 0, align 4
@english_shiftxform = common dso_local global i32 0, align 4
@HU_FONTSTART = common dso_local global i32 0, align 4
@HU_FONTSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"STCFN%.3d\00", align 1
@PU_STATIC = common dso_local global i32 0, align 4
@hu_font = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HU_Init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [9 x i8], align 1
  %4 = load i64, i64* @french, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @french_shiftxform, align 4
  store i32 %7, i32* @shiftxform, align 4
  br label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @english_shiftxform, align 4
  store i32 %9, i32* @shiftxform, align 4
  br label %10

10:                                               ; preds = %8, %6
  %11 = load i32, i32* @HU_FONTSTART, align 4
  store i32 %11, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %29, %10
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @HU_FONTSIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  %20 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  %21 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %22 = load i32, i32* @PU_STATIC, align 4
  %23 = call i64 @W_CacheLumpName(i8* %21, i32 %22)
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32**, i32*** @hu_font, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  store i32* %24, i32** %28, align 8
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %12

32:                                               ; preds = %12
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @W_CacheLumpName(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
