; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdmarker.c_jpeg_resync_to_restart.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdmarker.c_jpeg_resync_to_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@JWRN_MUST_RESYNC = common dso_local global i32 0, align 4
@M_SOF0 = common dso_local global i64 0, align 8
@M_RST0 = common dso_local global i64 0, align 8
@M_RST7 = common dso_local global i64 0, align 8
@JTRC_RECOVERY_ACTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jpeg_resync_to_restart(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = load i32, i32* @JWRN_MUST_RESYNC, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @WARNMS2(%struct.TYPE_6__* %11, i32 %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %98, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* @M_SOF0, align 8
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 2, i32* %7, align 4
  br label %75

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = load i64, i64* @M_RST0, align 8
  %25 = trunc i64 %24 to i32
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i64, i64* @M_RST7, align 8
  %30 = trunc i64 %29 to i32
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %22
  store i32 3, i32* %7, align 4
  br label %74

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load i64, i64* @M_RST0, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  %39 = and i32 %38, 7
  %40 = add nsw i32 %36, %39
  %41 = icmp eq i32 %34, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = load i64, i64* @M_RST0, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 2
  %48 = and i32 %47, 7
  %49 = add nsw i32 %45, %48
  %50 = icmp eq i32 %43, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42, %33
  store i32 3, i32* %7, align 4
  br label %73

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = load i64, i64* @M_RST0, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %57, 7
  %59 = add nsw i32 %55, %58
  %60 = icmp eq i32 %53, %59
  br i1 %60, label %70, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  %63 = load i64, i64* @M_RST0, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, 2
  %67 = and i32 %66, 7
  %68 = add nsw i32 %64, %67
  %69 = icmp eq i32 %62, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61, %52
  store i32 2, i32* %7, align 4
  br label %72

71:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  br label %72

72:                                               ; preds = %71, %70
  br label %73

73:                                               ; preds = %72, %51
  br label %74

74:                                               ; preds = %73, %32
  br label %75

75:                                               ; preds = %74, %21
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = load i32, i32* @JTRC_RECOVERY_ACTION, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @TRACEMS2(%struct.TYPE_6__* %76, i32 4, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %7, align 4
  switch i32 %81, label %98 [
    i32 1, label %82
    i32 2, label %86
    i32 3, label %96
  ]

82:                                               ; preds = %75
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %3, align 4
  br label %99

86:                                               ; preds = %75
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = call i32 @next_marker(%struct.TYPE_6__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %3, align 4
  br label %99

92:                                               ; preds = %86
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %6, align 4
  br label %98

96:                                               ; preds = %75
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %3, align 4
  br label %99

98:                                               ; preds = %75, %92
  br label %16

99:                                               ; preds = %96, %90, %82
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @WARNMS2(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @TRACEMS2(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @next_marker(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
