; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_mgn_opt_region.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_mgn_opt_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mgn_opt_region.names = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"Auto\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"      Japan NTSC\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"      Japan PAL\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"      USA\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"      Europe\00", align 1
@mgn_opt_region.names_short = internal global [5 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" JP\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" US\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" EU\00", align 1
@PicoRegionOverride = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@static_buff = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"Auto:\00", align 1
@PicoAutoRgnOrder = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*)* @mgn_opt_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mgn_opt_region(i32 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @PicoRegionOverride, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  store i32 -6, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 1
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %20, %13
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %16

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %65

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [5 x i8*], [5 x i8*]* @mgn_opt_region.names, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %3, align 8
  br label %65

32:                                               ; preds = %2
  %33 = load i8*, i8** @static_buff, align 8
  %34 = call i32 @strcpy(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %60, %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load i32, i32* @PicoAutoRgnOrder, align 4
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %40, 4
  %42 = ashr i32 %39, %41
  %43 = and i32 %42, 15
  store i32 %43, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %48, %38
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %44

53:                                               ; preds = %44
  %54 = load i8*, i8** @static_buff, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [5 x i8*], [5 x i8*]* @mgn_opt_region.names_short, i64 0, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcat(i8* %54, i8* %58)
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %35

63:                                               ; preds = %35
  %64 = load i8*, i8** @static_buff, align 8
  store i8* %64, i8** %3, align 8
  br label %65

65:                                               ; preds = %63, %27, %26
  %66 = load i8*, i8** %3, align 8
  ret i8* %66
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
