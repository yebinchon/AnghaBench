; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_system_announce.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_system_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_SMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Master System\00", align 1
@PAHW_PICO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Pico\00", align 1
@PAHW_32X = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"32X + Mega CD\00", align 1
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"32X + Sega CD\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Mega CD\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Sega CD\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"32X\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"MegaDrive\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Genesis\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"PAL\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"NTSC\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"%s %s / %dFPS%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @system_announce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @system_announce() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = load i32, i32* @PicoAHW, align 4
  %6 = load i32, i32* @PAHW_SMS, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %59

10:                                               ; preds = %0
  %11 = load i32, i32* @PicoAHW, align 4
  %12 = load i32, i32* @PAHW_PICO, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %58

16:                                               ; preds = %10
  %17 = load i32, i32* @PicoAHW, align 4
  %18 = load i32, i32* @PAHW_32X, align 4
  %19 = load i32, i32* @PAHW_MCD, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = load i32, i32* @PAHW_32X, align 4
  %23 = load i32, i32* @PAHW_MCD, align 4
  %24 = or i32 %22, %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %28 = and i32 %27, 192
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %31

31:                                               ; preds = %30, %26
  br label %57

32:                                               ; preds = %16
  %33 = load i32, i32* @PicoAHW, align 4
  %34 = load i32, i32* @PAHW_MCD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %39 = and i32 %38, 192
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  br label %42

42:                                               ; preds = %41, %37
  br label %56

43:                                               ; preds = %32
  %44 = load i32, i32* @PicoAHW, align 4
  %45 = load i32, i32* @PAHW_32X, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  br label %55

49:                                               ; preds = %43
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %1, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %51 = and i32 %50, 192
  %52 = icmp eq i32 %51, 128
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %1, align 8
  br label %54

54:                                               ; preds = %53, %49
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56, %31
  br label %58

58:                                               ; preds = %57, %15
  br label %59

59:                                               ; preds = %58, %9
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  store i8* %63, i8** %2, align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 50, i32 60
  store i32 %67, i32* %4, align 4
  %68 = load i8*, i8** %2, align 8
  %69 = load i8*, i8** %1, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 @emu_status_msg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* %68, i8* %69, i32 %70, i8* %71)
  ret void
}

declare dso_local i32 @emu_status_msg(i8*, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
