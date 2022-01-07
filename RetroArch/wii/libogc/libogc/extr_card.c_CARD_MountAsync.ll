; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_MountAsync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_MountAsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32*, i32*, i32*, i32, i64, i32*, i8*, i8*, i8* }

@CARD_ERROR_READY = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_FATAL_ERROR = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_3__* null, align 8
@CARD_ERROR_BUSY = common dso_local global i64 0, align 8
@EXI_FLAG_ATTACH = common dso_local global i32 0, align 4
@__card_defaultapicallback = common dso_local global i8* null, align 8
@__card_exthandler = common dso_local global i32 0, align 4
@__card_mountcallback = common dso_local global i32* null, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@__card_unlockedhandler = common dso_local global i32 0, align 4
@CARD_ERROR_WRONGDEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CARD_MountAsync(i64 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %14, i64* %10, align 8
  store i8* null, i8** %12, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %13, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %18, i64* %5, align 8
  br label %129

19:                                               ; preds = %4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @EXI_CHANNEL_0, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @EXI_CHANNEL_2, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19
  %28 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  store i64 %28, i64* %5, align 8
  br label %129

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cardmap, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %13, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @_CPU_ISR_Disable(i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CARD_ERROR_BUSY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @_CPU_ISR_Restore(i32 %41)
  %43 = load i64, i64* @CARD_ERROR_BUSY, align 8
  store i64 %43, i64* %5, align 8
  br label %129

44:                                               ; preds = %29
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @EXI_GetState(i64 %50)
  %52 = load i32, i32* @EXI_FLAG_ATTACH, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %124, label %55

55:                                               ; preds = %49, %44
  %56 = load i64, i64* @CARD_ERROR_BUSY, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 10
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 9
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %9, align 8
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %55
  %69 = load i8*, i8** @__card_defaultapicallback, align 8
  store i8* %69, i8** %12, align 8
  br label %70

70:                                               ; preds = %68, %55
  %71 = load i8*, i8** %12, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 8
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 7
  store i32* null, i32** %75, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %70
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* @__card_exthandler, align 4
  %83 = call i64 @EXI_Attach(i64 %81, i32 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @_CPU_ISR_Restore(i32 %89)
  %91 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %91, i64* %5, align 8
  br label %129

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %70
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 6
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 8
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @EXI_RegisterEXICallback(i64 %98, i32* null)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @SYS_CancelAlarm(i32 %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 4
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  store i32* null, i32** %107, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @_CPU_ISR_Restore(i32 %108)
  %110 = load i32*, i32** @__card_mountcallback, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  store i32* %110, i32** %112, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i32, i32* @EXI_DEVICE_0, align 4
  %115 = load i32, i32* @__card_unlockedhandler, align 4
  %116 = call i64 @EXI_Lock(i64 %113, i32 %114, i32 %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %93
  store i64 0, i64* %5, align 8
  br label %129

119:                                              ; preds = %93
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  store i32* null, i32** %121, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @__card_domount(i64 %122)
  store i64 1, i64* %5, align 8
  br label %129

124:                                              ; preds = %49
  %125 = load i64, i64* @CARD_ERROR_WRONGDEVICE, align 8
  store i64 %125, i64* %10, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @_CPU_ISR_Restore(i32 %126)
  %128 = load i64, i64* %10, align 8
  store i64 %128, i64* %5, align 8
  br label %129

129:                                              ; preds = %124, %119, %118, %85, %40, %27, %17
  %130 = load i64, i64* %5, align 8
  ret i64 %130
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @EXI_GetState(i64) #1

declare dso_local i64 @EXI_Attach(i64, i32) #1

declare dso_local i32 @EXI_RegisterEXICallback(i64, i32*) #1

declare dso_local i32 @SYS_CancelAlarm(i32) #1

declare dso_local i64 @EXI_Lock(i64, i32, i32) #1

declare dso_local i32 @__card_domount(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
