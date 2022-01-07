; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_pal.c_COLOURS_PAL_ReadConfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_pal.c_COLOURS_PAL_ReadConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"COLOURS_PAL_SATURATION\00", align 1
@COLOURS_PAL_setup = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"COLOURS_PAL_CONTRAST\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"COLOURS_PAL_BRIGHTNESS\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"COLOURS_PAL_GAMMA\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"COLOURS_PAL_HUE\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"COLOURS_PAL_GTIA_DELAY\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"COLOURS_PAL_EXTERNAL_PALETTE\00", align 1
@COLOURS_PAL_external = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"COLOURS_PAL_EXTERNAL_PALETTE_LOADED\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"COLOURS_PAL_ADJUST_EXTERNAL_PALETTE\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @COLOURS_PAL_ReadConfig(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @Util_sscandouble(i8* %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_PAL_setup, i32 0, i32 5))
  store i32 %11, i32* %3, align 4
  br label %83

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @Util_sscandouble(i8* %17, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_PAL_setup, i32 0, i32 4))
  store i32 %18, i32* %3, align 4
  br label %83

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @Util_sscandouble(i8* %24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_PAL_setup, i32 0, i32 3))
  store i32 %25, i32* %3, align 4
  br label %83

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @Util_sscandouble(i8* %31, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_PAL_setup, i32 0, i32 2))
  store i32 %32, i32* %3, align 4
  br label %83

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @Util_sscandouble(i8* %38, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_PAL_setup, i32 0, i32 1))
  store i32 %39, i32* %3, align 4
  br label %83

40:                                               ; preds = %33
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @Util_sscandouble(i8* %45, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @COLOURS_PAL_setup, i32 0, i32 0))
  store i32 %46, i32* %3, align 4
  br label %83

47:                                               ; preds = %40
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_PAL_external, i32 0, i32 2), align 4
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @Util_strlcpy(i32 %52, i8* %53, i32 4)
  br label %75

55:                                               ; preds = %47
  %56 = load i8*, i8** %4, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @Util_sscanbool(i8* %60)
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_PAL_external, i32 0, i32 0), align 4
  %62 = icmp ne i32 %61, -1
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %83

64:                                               ; preds = %55
  %65 = load i8*, i8** %4, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @Util_sscanbool(i8* %69)
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @COLOURS_PAL_external, i32 0, i32 1), align 4
  %71 = icmp ne i32 %70, -1
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %83

73:                                               ; preds = %64
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %83

75:                                               ; preds = %51
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %73, %68, %59, %44, %37, %30, %23, %16, %9
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Util_sscandouble(i8*, i32*) #1

declare dso_local i32 @Util_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @Util_sscanbool(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
