; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_file2color.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_file2color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file2color.rom_exts = internal global [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bin\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"smd\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"gen\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"iso\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"cso\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"cue\00", align 1
@file2color.other_exts = internal global [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [4 x i8] c"gmv\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i8*)* @file2color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @file2color(i8* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  %11 = getelementptr inbounds i8, i8* %10, i64 -3
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ult i8* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %15, %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %32, %17
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 7
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [7 x i8*], [7 x i8*]* @file2color.rom_exts, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcasecmp(i8* %23, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i16 -521, i16* %2, align 2
  br label %54

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %18

35:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 2
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* @file2color.other_exts, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcasecmp(i8* %41, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i16 -20491, i16* %2, align 2
  br label %54

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %36

53:                                               ; preds = %36
  store i16 -1, i16* %2, align 2
  br label %54

54:                                               ; preds = %53, %48, %30
  %55 = load i16, i16* %2, align 2
  ret i16 %55
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
