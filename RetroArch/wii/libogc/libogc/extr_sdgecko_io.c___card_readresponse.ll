; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_readresponse.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_readresponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@CARDIO_ERROR_READY = common dso_local global i64 0, align 8
@_ioClrFlag = common dso_local global i32 0, align 4
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@_ioCardFreq = common dso_local global i32 0, align 4
@EXI_READWRITE = common dso_local global i32 0, align 4
@CARDIO_ERROR_IOERROR = common dso_local global i64 0, align 8
@CARDIO_ERROR_IOTIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i64)* @__card_readresponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_readresponse(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @MAX_DRIVE, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %3
  %18 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %18, i64* %4, align 8
  br label %130

19:                                               ; preds = %13
  %20 = load i64, i64* @CARDIO_ERROR_READY, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* @_ioClrFlag, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @__exi_wait(i64 %25)
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @EXI_DEVICE_0, align 4
  %29 = load i32, i32* @_ioCardFreq, align 4
  %30 = call i64 @EXI_Select(i64 %27, i32 %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @EXI_Unlock(i64 %33)
  %35 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %35, i64* %4, align 8
  br label %130

36:                                               ; preds = %19
  %37 = load i64, i64* %5, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @EXI_READWRITE, align 4
  %40 = call i64 @EXI_ImmEx(i64 %37, i32* %38, i64 1, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @EXI_Deselect(i64 %43)
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @EXI_Unlock(i64 %45)
  %47 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %47, i64* %4, align 8
  br label %130

48:                                               ; preds = %36
  %49 = call i64 (...) @gettick()
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %102, %48
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 128
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %103

55:                                               ; preds = %50
  %56 = load i32, i32* @_ioClrFlag, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i64, i64* %5, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* @EXI_READWRITE, align 4
  %61 = call i64 @EXI_ImmEx(i64 %58, i32* %59, i64 1, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @EXI_Deselect(i64 %64)
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @EXI_Unlock(i64 %66)
  %68 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %68, i64* %4, align 8
  br label %130

69:                                               ; preds = %55
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 128
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %103

75:                                               ; preds = %69
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @__card_checktimeout(i64 %76, i64 %77, i32 500)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load i32, i32* @_ioClrFlag, align 4
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i64, i64* %5, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @EXI_READWRITE, align 4
  %86 = call i64 @EXI_ImmEx(i64 %83, i32* %84, i64 1, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @EXI_Deselect(i64 %89)
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @EXI_Unlock(i64 %91)
  %93 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %93, i64* %4, align 8
  br label %130

94:                                               ; preds = %80
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 128
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i64, i64* @CARDIO_ERROR_IOTIMEOUT, align 8
  store i64 %100, i64* %10, align 8
  br label %101

101:                                              ; preds = %99, %94
  br label %103

102:                                              ; preds = %75
  br label %50

103:                                              ; preds = %101, %74, %50
  %104 = load i64, i64* %7, align 8
  %105 = icmp sgt i64 %104, 1
  br i1 %105, label %106, label %124

106:                                              ; preds = %103
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @CARDIO_ERROR_READY, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %106
  %111 = load i32, i32* @_ioClrFlag, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %8, align 8
  store i32 %111, i32* %113, align 4
  %114 = load i64, i64* %5, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load i64, i64* %7, align 8
  %117 = sub nsw i64 %116, 1
  %118 = load i32, i32* @EXI_READWRITE, align 4
  %119 = call i64 @EXI_ImmEx(i64 %114, i32* %115, i64 %117, i32 %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %110
  %122 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %122, i64* %10, align 8
  br label %123

123:                                              ; preds = %121, %110
  br label %124

124:                                              ; preds = %123, %106, %103
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @EXI_Deselect(i64 %125)
  %127 = load i64, i64* %5, align 8
  %128 = call i32 @EXI_Unlock(i64 %127)
  %129 = load i64, i64* %10, align 8
  store i64 %129, i64* %4, align 8
  br label %130

130:                                              ; preds = %124, %88, %63, %42, %32, %17
  %131 = load i64, i64* %4, align 8
  ret i64 %131
}

declare dso_local i32 @__exi_wait(i64) #1

declare dso_local i64 @EXI_Select(i64, i32, i32) #1

declare dso_local i32 @EXI_Unlock(i64) #1

declare dso_local i64 @EXI_ImmEx(i64, i32*, i64, i32) #1

declare dso_local i32 @EXI_Deselect(i64) #1

declare dso_local i64 @gettick(...) #1

declare dso_local i64 @__card_checktimeout(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
