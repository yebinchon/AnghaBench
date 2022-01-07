; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ccaption_dec.c_handle_char.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ccaption_dec.c_handle_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32, i32 }
%struct.Screen = type { i32 }

@CCSET_SPECIAL_AMERICAN = common dso_local global i32 0, align 4
@CCSET_EXTENDED_SPANISH_FRENCH_MISC = common dso_local global i32 0, align 4
@CCSET_EXTENDED_PORTUGUESE_GERMAN_DANISH = common dso_local global i32 0, align 4
@CCSET_BASIC_AMERICAN = common dso_local global i32 0, align 4
@CCMODE_POPON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"(%c,%c)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"(%c)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8, i8, i32)* @handle_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_char(%struct.TYPE_6__* %0, i8 signext %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.Screen*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = call %struct.Screen* @get_writing_screen(%struct.TYPE_6__* %10)
  store %struct.Screen* %11, %struct.Screen** %9, align 8
  %12 = load %struct.Screen*, %struct.Screen** %9, align 8
  %13 = getelementptr inbounds %struct.Screen, %struct.Screen* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @SET_FLAG(i32 %14, i32 %17)
  %19 = load i8, i8* %6, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %53 [
    i32 17, label %21
    i32 18, label %25
    i32 19, label %39
  ]

21:                                               ; preds = %4
  %22 = load i32, i32* @CCSET_SPECIAL_AMERICAN, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  br label %61

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @CCSET_EXTENDED_SPANISH_FRENCH_MISC, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  br label %61

39:                                               ; preds = %4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @CCSET_EXTENDED_PORTUGUESE_GERMAN_DANISH, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  br label %61

53:                                               ; preds = %4
  %54 = load i32, i32* @CCSET_BASIC_AMERICAN, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = load %struct.Screen*, %struct.Screen** %9, align 8
  %59 = load i8, i8* %6, align 1
  %60 = call i32 @write_char(%struct.TYPE_6__* %57, %struct.Screen* %58, i8 signext %59)
  br label %61

61:                                               ; preds = %53, %49, %35, %21
  %62 = load i8, i8* %7, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = load %struct.Screen*, %struct.Screen** %9, align 8
  %67 = load i8, i8* %7, align 1
  %68 = call i32 @write_char(%struct.TYPE_6__* %65, %struct.Screen* %66, i8 signext %67)
  br label %69

69:                                               ; preds = %64, %61
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = load %struct.Screen*, %struct.Screen** %9, align 8
  %72 = call i32 @write_char(%struct.TYPE_6__* %70, %struct.Screen* %71, i8 signext 0)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CCMODE_POPON, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %69
  %82 = load i8, i8* %7, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = load i8, i8* %6, align 1
  %87 = load i8, i8* %7, align 1
  %88 = sext i8 %87 to i32
  %89 = call i32 (%struct.TYPE_6__*, i8*, i8, ...) @ff_dlog(%struct.TYPE_6__* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 signext %86, i32 %88)
  br label %94

90:                                               ; preds = %81
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = load i8, i8* %6, align 1
  %93 = call i32 (%struct.TYPE_6__*, i8*, i8, ...) @ff_dlog(%struct.TYPE_6__* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8 signext %92)
  br label %94

94:                                               ; preds = %90, %84
  ret void
}

declare dso_local %struct.Screen* @get_writing_screen(%struct.TYPE_6__*) #1

declare dso_local i32 @SET_FLAG(i32, i32) #1

declare dso_local i32 @write_char(%struct.TYPE_6__*, %struct.Screen*, i8 signext) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_6__*, i8*, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
