; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sysrom.c_SYSROM_ChooseROMs.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sysrom.c_SYSROM_ChooseROMs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@SYSROM_os_versions = common dso_local global i32* null, align 8
@SYSROM_AUTO = common dso_local global i32 0, align 4
@SYSROM_roms = common dso_local global %struct.TYPE_2__* null, align 8
@Atari800_MACHINE_5200 = common dso_local global i32 0, align 4
@SYSROM_basic_version = common dso_local global i32 0, align 4
@SYSROM_xegame_version = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SYSROM_ChooseROMs(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32*, i32** @SYSROM_os_versions, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SYSROM_AUTO, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %6
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @SYSROM_AutoChooseOS(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %13, align 4
  br label %34

28:                                               ; preds = %6
  %29 = load i32*, i32** @SYSROM_os_versions, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i32 -1, i32* %13, align 4
  br label %49

49:                                               ; preds = %48, %37, %34
  %50 = load i32, i32* %13, align 4
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @Atari800_MACHINE_5200, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32*, i32** %11, align 8
  store i32 -1, i32* %56, align 4
  br label %108

57:                                               ; preds = %49
  %58 = load i32, i32* @SYSROM_basic_version, align 4
  %59 = load i32, i32* @SYSROM_AUTO, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 (...) @SYSROM_AutoChooseBASIC()
  store i32 %62, i32* %14, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @SYSROM_basic_version, align 4
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store i32 -1, i32* %14, align 4
  br label %80

80:                                               ; preds = %79, %68, %65
  %81 = load i32, i32* %14, align 4
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @SYSROM_xegame_version, align 4
  %84 = load i32, i32* @SYSROM_AUTO, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i32 (...) @SYSROM_AutoChooseXEGame()
  store i32 %87, i32* %15, align 4
  br label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @SYSROM_xegame_version, align 4
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  store i32 -1, i32* %15, align 4
  br label %105

105:                                              ; preds = %104, %93, %90
  %106 = load i32, i32* %15, align 4
  %107 = load i32*, i32** %12, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %55
  ret void
}

declare dso_local i32 @SYSROM_AutoChooseOS(i32, i32, i32) #1

declare dso_local i32 @SYSROM_AutoChooseBASIC(...) #1

declare dso_local i32 @SYSROM_AutoChooseXEGame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
