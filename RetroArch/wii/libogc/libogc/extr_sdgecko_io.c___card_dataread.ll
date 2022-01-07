; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_dataread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_dataread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@_ioCardFreq = common dso_local global i32 0, align 4
@CARDIO_ERROR_READY = common dso_local global i64 0, align 8
@_ioClrFlag = common dso_local global i32 0, align 4
@EXI_READWRITE = common dso_local global i32 0, align 4
@CARDIO_ERROR_IOERROR = common dso_local global i64 0, align 8
@CARDIO_ERROR_IOTIMEOUT = common dso_local global i64 0, align 8
@CARDIO_OP_IOERR_CRC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i64)* @__card_dataread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_dataread(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @MAX_DRIVE, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %3
  %22 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %22, i64* %4, align 8
  br label %170

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @__exi_wait(i64 %24)
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* @EXI_DEVICE_0, align 4
  %28 = load i32, i32* @_ioCardFreq, align 4
  %29 = call i64 @EXI_Select(i64 %26, i32 %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @EXI_Unlock(i64 %32)
  %34 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %34, i64* %4, align 8
  br label %170

35:                                               ; preds = %23
  %36 = load i64, i64* @CARDIO_ERROR_READY, align 8
  store i64 %36, i64* %14, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %8, align 8
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %48, %35
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* @_ioClrFlag, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %9, align 8
  br label %39

51:                                               ; preds = %39
  %52 = load i64, i64* %5, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @EXI_READWRITE, align 4
  %55 = call i64 @EXI_ImmEx(i64 %52, i32* %53, i32 1, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @EXI_Deselect(i64 %58)
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @EXI_Unlock(i64 %60)
  %62 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %62, i64* %4, align 8
  br label %170

63:                                               ; preds = %51
  %64 = call i64 (...) @gettick()
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %114, %63
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 254
  br i1 %68, label %69, label %115

69:                                               ; preds = %65
  %70 = load i32, i32* @_ioClrFlag, align 4
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i64, i64* %5, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* @EXI_READWRITE, align 4
  %75 = call i64 @EXI_ImmEx(i64 %72, i32* %73, i32 1, i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @EXI_Deselect(i64 %78)
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @EXI_Unlock(i64 %80)
  %82 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %82, i64* %4, align 8
  br label %170

83:                                               ; preds = %69
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 254
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %115

88:                                               ; preds = %83
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* %13, align 8
  %91 = call i64 @__card_checktimeout(i64 %89, i64 %90, i32 1500)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load i32, i32* @_ioClrFlag, align 4
  %95 = load i32*, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i64, i64* %5, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* @EXI_READWRITE, align 4
  %99 = call i64 @EXI_ImmEx(i64 %96, i32* %97, i32 1, i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load i64, i64* %5, align 8
  %103 = call i32 @EXI_Deselect(i64 %102)
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @EXI_Unlock(i64 %104)
  %106 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %106, i64* %4, align 8
  br label %170

107:                                              ; preds = %93
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 254
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i64, i64* @CARDIO_ERROR_IOTIMEOUT, align 8
  store i64 %112, i64* %14, align 8
  br label %113

113:                                              ; preds = %111, %107
  br label %115

114:                                              ; preds = %88
  br label %65

115:                                              ; preds = %113, %87, %65
  %116 = load i32, i32* @_ioClrFlag, align 4
  %117 = load i32*, i32** %8, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i64, i64* %5, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load i64, i64* %7, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* @EXI_READWRITE, align 4
  %123 = call i64 @EXI_ImmEx(i64 %118, i32* %119, i32 %121, i32 %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %115
  %126 = load i64, i64* %5, align 8
  %127 = call i32 @EXI_Deselect(i64 %126)
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @EXI_Unlock(i64 %128)
  %130 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %130, i64* %4, align 8
  br label %170

131:                                              ; preds = %115
  %132 = call i32 @usleep(i32 1)
  %133 = load i32, i32* @_ioClrFlag, align 4
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %133, i32* %134, align 4
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %133, i32* %135, align 4
  %136 = load i64, i64* %5, align 8
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %138 = load i32, i32* @EXI_READWRITE, align 4
  %139 = call i64 @EXI_ImmEx(i64 %136, i32* %137, i32 2, i32 %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %131
  %142 = load i64, i64* %5, align 8
  %143 = call i32 @EXI_Deselect(i64 %142)
  %144 = load i64, i64* %5, align 8
  %145 = call i32 @EXI_Unlock(i64 %144)
  %146 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %146, i64* %4, align 8
  br label %170

147:                                              ; preds = %131
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 8
  %151 = and i32 %150, 65280
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 255
  %155 = or i32 %151, %154
  store i32 %155, i32* %12, align 4
  %156 = load i64, i64* %5, align 8
  %157 = call i32 @EXI_Deselect(i64 %156)
  %158 = load i64, i64* %5, align 8
  %159 = call i32 @EXI_Unlock(i64 %158)
  %160 = load i8*, i8** %6, align 8
  %161 = load i64, i64* %7, align 8
  %162 = call i32 @__make_crc16(i8* %160, i64 %161)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %147
  %167 = load i64, i64* @CARDIO_OP_IOERR_CRC, align 8
  store i64 %167, i64* %14, align 8
  br label %168

168:                                              ; preds = %166, %147
  %169 = load i64, i64* %14, align 8
  store i64 %169, i64* %4, align 8
  br label %170

170:                                              ; preds = %168, %141, %125, %101, %77, %57, %31, %21
  %171 = load i64, i64* %4, align 8
  ret i64 %171
}

declare dso_local i32 @__exi_wait(i64) #1

declare dso_local i64 @EXI_Select(i64, i32, i32) #1

declare dso_local i32 @EXI_Unlock(i64) #1

declare dso_local i64 @EXI_ImmEx(i64, i32*, i32, i32) #1

declare dso_local i32 @EXI_Deselect(i64) #1

declare dso_local i64 @gettick(...) #1

declare dso_local i64 @__card_checktimeout(i64, i64, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @__make_crc16(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
