; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/exec-3dsx/extr_exec_cia.c_installCia.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/exec-3dsx/extr_exec_cia.c_installCia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_CHUNK_SIZE = common dso_local global i32 0, align 4
@MEDIATYPE_SD = common dso_local global i32 0, align 4
@RD_ALREADY_EXISTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @installCia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @installCia(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %7, align 8
  %14 = load i32, i32* @FILE_CHUNK_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @MEDIATYPE_SD, align 4
  %19 = call i32 @AM_StartCiaInstall(i32 %18, i32* %5)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @R_FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %96

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @FSFILE_GetSize(i32 %25, i64* %6)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @R_FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %96

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %84, %31
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %88

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub nsw i64 %37, %38
  store i64 %39, i64* %13, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i32, i32* @FILE_CHUNK_SIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i64, i64* %13, align 8
  br label %51

48:                                               ; preds = %36
  %49 = load i32, i32* @FILE_CHUNK_SIZE, align 4
  %50 = sext i32 %49 to i64
  br label %51

51:                                               ; preds = %48, %46
  %52 = phi i64 [ %47, %46 ], [ %50, %48 ]
  %53 = call i32 @FSFILE_Read(i32 %40, i64* %8, i64 %41, i32* %17, i64 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @R_FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @AM_CancelCIAInstall(i32 %58)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %96

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @FSFILE_Write(i32 %61, i64* %9, i64 %62, i32* %17, i64 %63, i32 0)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @R_FAILED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @AM_CancelCIAInstall(i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i64 @R_DESCRIPTION(i32 %71)
  %73 = load i64, i64* @RD_ALREADY_EXISTS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %96

76:                                               ; preds = %68
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %96

77:                                               ; preds = %60
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @AM_CancelCIAInstall(i32 %82)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %96

84:                                               ; preds = %77
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %7, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %7, align 8
  br label %32

88:                                               ; preds = %32
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @AM_FinishCiaInstall(i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i64 @R_FAILED(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %96

95:                                               ; preds = %88
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %96

96:                                               ; preds = %95, %94, %81, %76, %75, %57, %30, %23
  %97 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AM_StartCiaInstall(i32, i32*) #2

declare dso_local i64 @R_FAILED(i32) #2

declare dso_local i32 @FSFILE_GetSize(i32, i64*) #2

declare dso_local i32 @FSFILE_Read(i32, i64*, i64, i32*, i64) #2

declare dso_local i32 @AM_CancelCIAInstall(i32) #2

declare dso_local i32 @FSFILE_Write(i32, i64*, i64, i32*, i64, i32) #2

declare dso_local i64 @R_DESCRIPTION(i32) #2

declare dso_local i32 @AM_FinishCiaInstall(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
