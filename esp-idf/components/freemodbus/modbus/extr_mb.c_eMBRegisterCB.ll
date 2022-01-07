; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/extr_mb.c_eMBRegisterCB.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/extr_mb.c_eMBRegisterCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@MB_FUNC_HANDLERS_MAX = common dso_local global i32 0, align 4
@xFuncHandlers = common dso_local global %struct.TYPE_2__* null, align 8
@MB_ENOERR = common dso_local global i32 0, align 4
@MB_ENORES = common dso_local global i32 0, align 4
@MB_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eMBRegisterCB(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 0, %7
  br i1 %8, label %9, label %98

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp sle i32 %10, 127
  br i1 %11, label %12, label %98

12:                                               ; preds = %9
  %13 = call i32 (...) @ENTER_CRITICAL_SECTION()
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %52, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MB_FUNC_HANDLERS_MAX, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xFuncHandlers, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %21
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xFuncHandlers, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = icmp eq i32* %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %29, %21
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xFuncHandlers, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xFuncHandlers, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32* %45, i32** %50, align 8
  br label %55

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %17

55:                                               ; preds = %38, %17
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MB_FUNC_HANDLERS_MAX, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @MB_ENOERR, align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @MB_ENORES, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %6, align 4
  br label %96

65:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %91, %65
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @MB_FUNC_HANDLERS_MAX, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %66
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xFuncHandlers, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %70
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xFuncHandlers, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xFuncHandlers, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  br label %94

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %66

94:                                               ; preds = %79, %66
  %95 = load i32, i32* @MB_ENOERR, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %63
  %97 = call i32 (...) @EXIT_CRITICAL_SECTION()
  br label %100

98:                                               ; preds = %9, %2
  %99 = load i32, i32* @MB_EINVAL, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @ENTER_CRITICAL_SECTION(...) #1

declare dso_local i32 @EXIT_CRITICAL_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
