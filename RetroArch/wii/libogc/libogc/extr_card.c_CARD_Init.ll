; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_Init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@card_inited = common dso_local global i32 0, align 4
@CARD_ERROR_READY = common dso_local global i32 0, align 4
@card_gamecode = common dso_local global i32 0, align 4
@card_company = common dso_local global i32 0, align 4
@cardmap = common dso_local global %struct.TYPE_3__* null, align 8
@CARD_ERROR_NOCARD = common dso_local global i32 0, align 4
@card_resetinfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CARD_Init(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @card_inited, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @CARD_ERROR_READY, align 4
  store i32 %11, i32* %3, align 4
  br label %70

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = icmp sle i32 %17, 4
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @card_gamecode, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @memcpy(i32 %20, i8* %21, i32 4)
  br label %23

23:                                               ; preds = %19, %15, %12
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = icmp sle i32 %28, 2
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @card_company, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @memcpy(i32 %31, i8* %32, i32 2)
  br label %34

34:                                               ; preds = %30, %26, %23
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @_CPU_ISR_Disable(i32 %35)
  %37 = call i32 (...) @DSP_Init()
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cardmap, align 8
  %39 = call i32 @memset(%struct.TYPE_3__* %38, i32 0, i32 8)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %62, %34
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = load i32, i32* @CARD_ERROR_NOCARD, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cardmap, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 %44, i32* %49, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cardmap, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = call i32 @LWP_InitQueue(i32* %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cardmap, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @SYS_CreateAlarm(i32* %60)
  br label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %40

65:                                               ; preds = %40
  %66 = call i32 @SYS_RegisterResetFunc(i32* @card_resetinfo)
  store i32 1, i32* @card_inited, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @_CPU_ISR_Restore(i32 %67)
  %69 = load i32, i32* @CARD_ERROR_READY, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %10
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @DSP_Init(...) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @LWP_InitQueue(i32*) #1

declare dso_local i32 @SYS_CreateAlarm(i32*) #1

declare dso_local i32 @SYS_RegisterResetFunc(i32*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
