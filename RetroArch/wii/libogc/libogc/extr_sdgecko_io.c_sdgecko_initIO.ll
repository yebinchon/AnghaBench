; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c_sdgecko_initIO.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c_sdgecko_initIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@_ioRetryCnt = common dso_local global i32 0, align 4
@CARDIO_ERROR_IOERROR = common dso_local global i64 0, align 8
@_ioCardInserted = common dso_local global i64* null, align 8
@TRUE = common dso_local global i64 0, align 8
@_ioWPFlag = common dso_local global i32 0, align 4
@EXI_SPEED16MHZ = common dso_local global i32 0, align 4
@_ioCardFreq = common dso_local global i32 0, align 4
@TYPE_SD = common dso_local global i64 0, align 8
@_initType = common dso_local global i64* null, align 8
@INITIALIZING = common dso_local global i32 0, align 4
@_ioFlag = common dso_local global i32* null, align 8
@BYTE_ADDRESSING = common dso_local global i32 0, align 4
@_ioAddressingType = common dso_local global i32* null, align 8
@_ioResponse = common dso_local global i32** null, align 8
@TYPE_SDHC = common dso_local global i64 0, align 8
@SECTOR_ADDRESSING = common dso_local global i32 0, align 4
@_ioPageSize = common dso_local global i32* null, align 8
@INITIALIZED = common dso_local global i32 0, align 4
@CARDIO_ERROR_READY = common dso_local global i64 0, align 8
@__card_retrycb = common dso_local global i32 0, align 4
@_ioRetryCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdgecko_initIO(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ult i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @MAX_DRIVE, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %12, i64* %2, align 8
  br label %161

13:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* @EXI_DEVICE_0, align 4
  %16 = call i32 @EXI_GetID(i64 %14, i32 %15, i32* %4)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %20, i64* %2, align 8
  br label %161

21:                                               ; preds = %13
  %22 = load i32, i32* @_ioRetryCnt, align 4
  %23 = icmp sgt i32 %22, 5
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  store i32 0, i32* @_ioRetryCnt, align 4
  %25 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %25, i64* %2, align 8
  br label %161

26:                                               ; preds = %21
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @__card_check(i64 %27)
  %29 = load i64*, i64** @_ioCardInserted, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64 %28, i64* %31, align 8
  %32 = load i64*, i64** @_ioCardInserted, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TRUE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %159

38:                                               ; preds = %26
  store i32 0, i32* @_ioWPFlag, align 4
  %39 = load i32, i32* @EXI_SPEED16MHZ, align 4
  store i32 %39, i32* @_ioCardFreq, align 4
  %40 = load i64, i64* @TYPE_SD, align 8
  %41 = load i64*, i64** @_initType, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %40, i64* %43, align 8
  %44 = load i32, i32* @INITIALIZING, align 4
  %45 = load i32*, i32** @_ioFlag, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @BYTE_ADDRESSING, align 4
  %49 = load i32*, i32** @_ioAddressingType, align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load i64, i64* %3, align 8
  %53 = call i64 @__card_softreset(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %38
  store i32 1, i32* @_ioWPFlag, align 4
  %56 = load i64, i64* %3, align 8
  %57 = call i64 @__card_softreset(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %155

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i64, i64* %3, align 8
  %63 = call i64 @__card_sendCMD8(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %155

66:                                               ; preds = %61
  %67 = load i32**, i32*** @_ioResponse, align 8
  %68 = load i64, i64* %3, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %87

74:                                               ; preds = %66
  %75 = load i32**, i32*** @_ioResponse, align 8
  %76 = load i64, i64* %3, align 8
  %77 = getelementptr inbounds i32*, i32** %75, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 170
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i64, i64* @TYPE_SDHC, align 8
  %84 = load i64*, i64** @_initType, align 8
  %85 = load i64, i64* %3, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 %83, i64* %86, align 8
  br label %87

87:                                               ; preds = %82, %74, %66
  %88 = load i64, i64* %3, align 8
  %89 = call i64 @__card_sendopcond(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %155

92:                                               ; preds = %87
  %93 = load i64, i64* %3, align 8
  %94 = call i64 @__card_readcsd(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %155

97:                                               ; preds = %92
  %98 = load i64, i64* %3, align 8
  %99 = call i64 @__card_readcid(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %155

102:                                              ; preds = %97
  %103 = load i64*, i64** @_initType, align 8
  %104 = load i64, i64* %3, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TYPE_SDHC, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %102
  %110 = load i64, i64* %3, align 8
  %111 = call i64 @__card_sendCMD58(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %155

114:                                              ; preds = %109
  %115 = load i32**, i32*** @_ioResponse, align 8
  %116 = load i64, i64* %3, align 8
  %117 = getelementptr inbounds i32*, i32** %115, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 64
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %114
  %124 = load i32, i32* @SECTOR_ADDRESSING, align 4
  %125 = load i32*, i32** @_ioAddressingType, align 8
  %126 = load i64, i64* %3, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %114
  br label %129

129:                                              ; preds = %128, %102
  %130 = load i64, i64* %3, align 8
  %131 = call i32 @WRITE_BL_LEN(i64 %130)
  %132 = shl i32 1, %131
  %133 = load i32*, i32** @_ioPageSize, align 8
  %134 = load i64, i64* %3, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 %132, i32* %135, align 4
  %136 = load i64, i64* %3, align 8
  %137 = load i32*, i32** @_ioPageSize, align 8
  %138 = load i64, i64* %3, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @__card_setblocklen(i64 %136, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %129
  br label %155

144:                                              ; preds = %129
  %145 = load i64, i64* %3, align 8
  %146 = call i64 @__card_sd_status(i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %155

149:                                              ; preds = %144
  store i32 0, i32* @_ioRetryCnt, align 4
  %150 = load i32, i32* @INITIALIZED, align 4
  %151 = load i32*, i32** @_ioFlag, align 8
  %152 = load i64, i64* %3, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32 %150, i32* %153, align 4
  %154 = load i64, i64* @CARDIO_ERROR_READY, align 8
  store i64 %154, i64* %2, align 8
  br label %161

155:                                              ; preds = %148, %143, %113, %101, %96, %91, %65, %59
  %156 = load i32, i32* @__card_retrycb, align 4
  store i32 %156, i32* @_ioRetryCB, align 4
  %157 = load i64, i64* %3, align 8
  %158 = call i64 @sdgecko_doUnmount(i64 %157)
  store i64 %158, i64* %2, align 8
  br label %161

159:                                              ; preds = %26
  %160 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %160, i64* %2, align 8
  br label %161

161:                                              ; preds = %159, %155, %149, %24, %19, %11
  %162 = load i64, i64* %2, align 8
  ret i64 %162
}

declare dso_local i32 @EXI_GetID(i64, i32, i32*) #1

declare dso_local i64 @__card_check(i64) #1

declare dso_local i64 @__card_softreset(i64) #1

declare dso_local i64 @__card_sendCMD8(i64) #1

declare dso_local i64 @__card_sendopcond(i64) #1

declare dso_local i64 @__card_readcsd(i64) #1

declare dso_local i64 @__card_readcid(i64) #1

declare dso_local i64 @__card_sendCMD58(i64) #1

declare dso_local i32 @WRITE_BL_LEN(i64) #1

declare dso_local i64 @__card_setblocklen(i64, i32) #1

declare dso_local i64 @__card_sd_status(i64) #1

declare dso_local i64 @sdgecko_doUnmount(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
