; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sysrom.c_MatchByName.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sysrom.c_MatchByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@MatchByName.common_filenames = internal constant [23 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [13 x i8] c"atariosa.rom\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"atari_osa.rom\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"atari_os_a.rom\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"atariosb.rom\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"atari_osb.rom\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"atari_os_b.rom\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"atarixlxe.rom\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"atarixl.rom\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"atari_xlxe.rom\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"atari_xl_xe.rom\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"atari5200.rom\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"atar5200.rom\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"5200.rom\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"5200.bin\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"atari_5200.rom\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"ataribasic.rom\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"ataribas.rom\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"basic.rom\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"atari_basic.rom\00", align 1
@MatchByName.offsets = internal constant [4 x %struct.anon] [%struct.anon { i32 10240, i32 130, i32 0 }, %struct.anon { i32 16384, i32 128, i32 7 }, %struct.anon { i32 2048, i32 131, i32 12 }, %struct.anon { i32 8192, i32 129, i32 18 }], align 16
@SYSROM_roms = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @MatchByName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MatchByName(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %60, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %63

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @MatchByName.offsets, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %14, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %24, %21
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @MatchByName.offsets, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** getelementptr inbounds ([23 x i8*], [23 x i8*]* @MatchByName.common_filenames, i64 0, i64 0), i64 %38
  store i8** %39, i8*** %9, align 8
  br label %40

40:                                               ; preds = %53, %32
  %41 = load i8*, i8** %5, align 8
  %42 = load i8**, i8*** %9, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %41, i8* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @MatchByName.offsets, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  br label %64

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i8**, i8*** %9, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** %9, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %40, label %58

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %24, %13
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %10

63:                                               ; preds = %10
  store i32 -1, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
