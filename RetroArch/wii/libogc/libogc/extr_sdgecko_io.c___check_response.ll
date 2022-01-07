; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___check_response.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___check_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i32 0, align 4
@_ioError = common dso_local global i32* null, align 8
@_ioFlag = common dso_local global i64* null, align 8
@INITIALIZING = common dso_local global i64 0, align 8
@MMC_ERROR_IDLE = common dso_local global i32 0, align 4
@CARDIO_OP_IOERR_IDLE = common dso_local global i32 0, align 4
@CARDIO_ERROR_READY = common dso_local global i32 0, align 4
@MMC_ERROR_PARAM = common dso_local global i32 0, align 4
@CARDIO_OP_IOERR_PARAM = common dso_local global i32 0, align 4
@MMC_ERROR_ADDRESS = common dso_local global i32 0, align 4
@CARDIO_OP_IOERR_ADDR = common dso_local global i32 0, align 4
@MMC_ERROR_CRC = common dso_local global i32 0, align 4
@CARDIO_OP_IOERR_CRC = common dso_local global i32 0, align 4
@MMC_ERROR_ILL = common dso_local global i32 0, align 4
@CARDIO_OP_IOERR_ILL = common dso_local global i32 0, align 4
@CARDIO_OP_IOERR_FATAL = common dso_local global i32 0, align 4
@CARDIO_ERROR_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @__check_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__check_response(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @MAX_DRIVE, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @CARDIO_ERROR_NOCARD, align 4
  store i32 %13, i32* %3, align 4
  br label %100

14:                                               ; preds = %8
  %15 = load i32*, i32** @_ioError, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 0, i32* %17, align 4
  %18 = load i64*, i64** @_ioFlag, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @INITIALIZING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MMC_ERROR_IDLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32, i32* @CARDIO_OP_IOERR_IDLE, align 4
  %31 = load i32*, i32** @_ioError, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @CARDIO_ERROR_READY, align 4
  store i32 %36, i32* %3, align 4
  br label %100

37:                                               ; preds = %24, %14
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MMC_ERROR_PARAM, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* @CARDIO_OP_IOERR_PARAM, align 4
  %44 = load i32*, i32** @_ioError, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %43
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MMC_ERROR_ADDRESS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i32, i32* @CARDIO_OP_IOERR_ADDR, align 4
  %56 = load i32*, i32** @_ioError, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %54, %49
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @MMC_ERROR_CRC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i32, i32* @CARDIO_OP_IOERR_CRC, align 4
  %68 = load i32*, i32** @_ioError, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @MMC_ERROR_ILL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32, i32* @CARDIO_OP_IOERR_ILL, align 4
  %80 = load i32*, i32** @_ioError, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %73
  br label %86

86:                                               ; preds = %85
  %87 = load i32*, i32** @_ioError, align 8
  %88 = load i64, i64* %4, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CARDIO_OP_IOERR_FATAL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @CARDIO_ERROR_INTERNAL, align 4
  br label %98

96:                                               ; preds = %86
  %97 = load i32, i32* @CARDIO_ERROR_READY, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %29, %12
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
