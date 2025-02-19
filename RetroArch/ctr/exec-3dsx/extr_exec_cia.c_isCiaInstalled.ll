; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/exec-3dsx/extr_exec_cia.c_isCiaInstalled.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/exec-3dsx/extr_exec_cia.c_isCiaInstalled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@MEDIATYPE_SD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @isCiaInstalled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isCiaInstalled(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @MEDIATYPE_SD, align 4
  %14 = call i32 @AM_GetTitleCount(i32 %13, i32* %6)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i64 @R_FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i64* @malloc(i32 %23)
  store i64* %24, i64** %8, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %75

28:                                               ; preds = %19
  %29 = load i32, i32* @MEDIATYPE_SD, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i64*, i64** %8, align 8
  %32 = call i32 @AM_GetTitleList(i32* %7, i32 %29, i32 %30, i64* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @R_FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %75

37:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i64*, i64** %8, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 1, i32* %9, align 4
  br label %55

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %38

55:                                               ; preds = %50, %38
  %56 = load i64*, i64** %8, align 8
  %57 = call i32 @free(i64* %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load i32, i32* @MEDIATYPE_SD, align 4
  %62 = call i32 @AM_GetTitleInfo(i32 %61, i32 1, i64* %4, %struct.TYPE_3__* %10)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @R_FAILED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 -1, i32* %3, align 4
  br label %75

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %75

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %55
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %72, %66, %36, %27, %18
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @AM_GetTitleCount(i32, i32*) #1

declare dso_local i64 @R_FAILED(i32) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @AM_GetTitleList(i32*, i32, i32, i64*) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @AM_GetTitleInfo(i32, i32, i64*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
