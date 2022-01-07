; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_arqmgr.c_ARQM_PushData.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_arqmgr.c_ARQM_PushData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@__ARQMFreeBytes = common dso_local global i32 0, align 4
@__ARQMStackLocation = common dso_local global i32 0, align 4
@ARQM_STACKENTRIES = common dso_local global i32 0, align 4
@__ARQMInfo = common dso_local global %struct.TYPE_3__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@__ARQMStackPointer = common dso_local global i32* null, align 8
@ARQ_MRAMTOARAM = common dso_local global i32 0, align 4
@ARQ_PRIO_HI = common dso_local global i32 0, align 4
@__ARQMPollCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ARQM_PushData(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = ptrtoint i8* %9 to i32
  %11 = and i32 %10, 31
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %86

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @ROUNDUP32(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @__ARQMFreeBytes, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %85

23:                                               ; preds = %17
  %24 = load i32, i32* @__ARQMStackLocation, align 4
  %25 = load i32, i32* @ARQM_STACKENTRIES, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__ARQMInfo, align 8
  %30 = load i32, i32* @__ARQMStackLocation, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @_CPU_ISR_Disable(i32 %33)
  %35 = load i64, i64* @FALSE, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32*, i32** @__ARQMStackPointer, align 8
  %39 = load i32, i32* @__ARQMStackLocation, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @__ARQMStackLocation, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32*, i32** @__ARQMStackPointer, align 8
  %52 = load i32, i32* @__ARQMStackLocation, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @__ARQMFreeBytes, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* @__ARQMFreeBytes, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* @__ARQMStackLocation, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* @ARQ_MRAMTOARAM, align 4
  %63 = load i32, i32* @ARQ_PRIO_HI, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @__ARQMPollCallback, align 4
  %71 = call i32 @ARQ_PostRequestAsync(i32* %59, i32 %61, i32 %62, i32 %63, i32 %66, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @_CPU_ISR_Restore(i32 %72)
  br label %74

74:                                               ; preds = %80, %28
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @FALSE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %74

81:                                               ; preds = %74
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %3, align 4
  br label %86

85:                                               ; preds = %23, %17
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %81, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @ROUNDUP32(i64) #1

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @ARQ_PostRequestAsync(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
