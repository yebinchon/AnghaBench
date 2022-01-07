; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_exihandler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_exihandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 (i32, i32)*, i64, i32 }

@CARD_ERROR_READY = common dso_local global i32 0, align 4
@EXI_CHANNEL_0 = common dso_local global i32 0, align 4
@EXI_CHANNEL_2 = common dso_local global i32 0, align 4
@cardmap = common dso_local global %struct.TYPE_3__* null, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@CARD_ERROR_IOERROR = common dso_local global i32 0, align 4
@CARD_ERROR_FATAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @__card_exihandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__card_exihandler(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32 (i32, i32)*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @CARD_ERROR_READY, align 4
  store i32 %10, i32* %7, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @EXI_CHANNEL_0, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @EXI_CHANNEL_2, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  store i32 1, i32* %3, align 4
  br label %93

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cardmap, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %8, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @SYS_CancelAlarm(i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %92

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @EXI_DEVICE_0, align 4
  %35 = call i32 @EXI_Lock(i32 %33, i32 %34, i32* null)
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %75

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @__card_readstatus(i32 %38, i32* %6)
  store i32 %39, i32* %7, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @__card_clearstatus(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 24
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @CARD_ERROR_IOERROR, align 4
  store i32 %50, i32* %7, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @CARD_ERROR_READY, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @CARD_ERROR_IOERROR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %59, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @__retry(i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %78

69:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %93

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %53
  br label %72

72:                                               ; preds = %71, %41, %37
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @EXI_Unlock(i32 %73)
  br label %77

75:                                               ; preds = %32
  %76 = load i32, i32* @CARD_ERROR_FATAL_ERROR, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %72
  br label %78

78:                                               ; preds = %77, %68
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32 (i32, i32)*, i32 (i32, i32)** %80, align 8
  store i32 (i32, i32)* %81, i32 (i32, i32)** %9, align 8
  %82 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %83 = icmp ne i32 (i32, i32)* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 (i32, i32)* null, i32 (i32, i32)** %86, align 8
  %87 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 %87(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %78
  br label %92

92:                                               ; preds = %91, %19
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %69, %18
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @SYS_CancelAlarm(i32) #1

declare dso_local i32 @EXI_Lock(i32, i32, i32*) #1

declare dso_local i32 @__card_readstatus(i32, i32*) #1

declare dso_local i32 @__card_clearstatus(i32) #1

declare dso_local i32 @__retry(i32) #1

declare dso_local i32 @EXI_Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
