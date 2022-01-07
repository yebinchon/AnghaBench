; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sysrom.c_SYSROM_WriteConfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sysrom.c_SYSROM_WriteConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@SYSROM_SIZE = common dso_local global i32 0, align 4
@SYSROM_roms = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@cfg_strings = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"OS_400/800_VERSION=%s\0A\00", align 1
@cfg_strings_rev = common dso_local global i8** null, align 8
@SYSROM_os_versions = common dso_local global i64* null, align 8
@Atari800_MACHINE_800 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"OS_XL/XE_VERSION=%s\0A\00", align 1
@Atari800_MACHINE_XLXE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"OS_5200_VERSION=%s\0A\00", align 1
@Atari800_MACHINE_5200 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"BASIC_VERSION=%s\0A\00", align 1
@SYSROM_basic_version = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"XEGS_GAME_VERSION=%s\0A\00", align 1
@SYSROM_xegame_version = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SYSROM_WriteConfig(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %31, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @SYSROM_SIZE, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %34

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %8
  %17 = load i32*, i32** %2, align 8
  %18 = load i8**, i8*** @cfg_strings, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %28)
  br label %30

30:                                               ; preds = %16, %8
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %4

34:                                               ; preds = %4
  %35 = load i32*, i32** %2, align 8
  %36 = load i8**, i8*** @cfg_strings_rev, align 8
  %37 = load i64*, i64** @SYSROM_os_versions, align 8
  %38 = load i64, i64* @Atari800_MACHINE_800, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i8*, i8** %36, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = load i8**, i8*** @cfg_strings_rev, align 8
  %46 = load i64*, i64** @SYSROM_os_versions, align 8
  %47 = load i64, i64* @Atari800_MACHINE_XLXE, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8*, i8** %45, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i32*, i32** %2, align 8
  %54 = load i8**, i8*** @cfg_strings_rev, align 8
  %55 = load i64*, i64** @SYSROM_os_versions, align 8
  %56 = load i64, i64* @Atari800_MACHINE_5200, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8*, i8** %54, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = load i32*, i32** %2, align 8
  %63 = load i8**, i8*** @cfg_strings_rev, align 8
  %64 = load i64, i64* @SYSROM_basic_version, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  %68 = load i32*, i32** %2, align 8
  %69 = load i8**, i8*** @cfg_strings_rev, align 8
  %70 = load i64, i64* @SYSROM_xegame_version, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
