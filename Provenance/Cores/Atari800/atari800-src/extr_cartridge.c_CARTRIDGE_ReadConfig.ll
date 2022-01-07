; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_CARTRIDGE_ReadConfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_CARTRIDGE_ReadConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"CARTRIDGE_FILENAME\00", align 1
@CARTRIDGE_main = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CARTRIDGE_NONE = common dso_local global i32 0, align 4
@CARTRIDGE_UNKNOWN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"CARTRIDGE_TYPE\00", align 1
@CARTRIDGE_LAST_SUPPORTED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"CARTRIDGE_PIGGYBACK_FILENAME\00", align 1
@CARTRIDGE_piggyback = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"CARTRIDGE_PIGGYBACK_TYPE\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CARTRIDGE_AUTOREBOOT\00", align 1
@CARTRIDGE_autoreboot = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CARTRIDGE_ReadConfig(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 1), align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @Util_strlcpy(i32 %13, i8* %14, i32 4)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 0), align 4
  %17 = load i32, i32* @CARTRIDGE_NONE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i8*, i8** @CARTRIDGE_UNKNOWN, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 0), align 4
  br label %22

22:                                               ; preds = %19, %12
  br label %91

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @Util_sscandec(i8* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @CARTRIDGE_LAST_SUPPORTED, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %27
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %93

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 0), align 4
  br label %90

40:                                               ; preds = %23
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CARTRIDGE_piggyback, i32 0, i32 1), align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @Util_strlcpy(i32 %45, i8* %46, i32 4)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CARTRIDGE_piggyback, i32 0, i32 0), align 4
  %49 = load i32, i32* @CARTRIDGE_NONE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i8*, i8** @CARTRIDGE_UNKNOWN, align 8
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CARTRIDGE_piggyback, i32 0, i32 0), align 4
  br label %54

54:                                               ; preds = %51, %44
  br label %89

55:                                               ; preds = %40
  %56 = load i8*, i8** %4, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @Util_sscandec(i8* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @CARTRIDGE_LAST_SUPPORTED, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %59
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %3, align 4
  br label %93

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CARTRIDGE_piggyback, i32 0, i32 0), align 4
  br label %88

72:                                               ; preds = %55
  %73 = load i8*, i8** %4, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @Util_sscanbool(i8* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %3, align 4
  br label %93

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* @CARTRIDGE_autoreboot, align 4
  br label %87

85:                                               ; preds = %72
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %3, align 4
  br label %93

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %70
  br label %89

89:                                               ; preds = %88, %54
  br label %90

90:                                               ; preds = %89, %38
  br label %91

91:                                               ; preds = %90, %22
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %85, %81, %68, %36
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Util_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @Util_sscandec(i8*) #1

declare dso_local i32 @Util_sscanbool(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
