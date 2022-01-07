; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_datares.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_datares.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*)* @__card_datares to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_datares(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @MAX_DRIVE, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %2
  %16 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %16, i64* %3, align 8
  br label %175

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @__exi_wait(i64 %20)
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* @EXI_DEVICE_0, align 4
  %24 = load i32, i32* @_ioCardFreq, align 4
  %25 = call i64 @EXI_Select(i64 %22, i32 %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @EXI_Unlock(i64 %28)
  %30 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %30, i64* %3, align 8
  br label %175

31:                                               ; preds = %17
  %32 = load i64, i64* @CARDIO_ERROR_READY, align 8
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* @_ioClrFlag, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i64, i64* %4, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @EXI_READWRITE, align 4
  %38 = call i64 @EXI_ImmEx(i64 %35, i32* %36, i32 1, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @EXI_Deselect(i64 %41)
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @EXI_Unlock(i64 %43)
  %45 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %45, i64* %3, align 8
  br label %175

46:                                               ; preds = %31
  %47 = call i64 (...) @gettick()
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %100, %46
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 16
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %101

53:                                               ; preds = %48
  %54 = load i32, i32* @_ioClrFlag, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i64, i64* %4, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @EXI_READWRITE, align 4
  %59 = call i64 @EXI_ImmEx(i64 %56, i32* %57, i32 1, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @EXI_Deselect(i64 %62)
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @EXI_Unlock(i64 %64)
  %66 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %66, i64* %3, align 8
  br label %175

67:                                               ; preds = %53
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 16
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %101

73:                                               ; preds = %67
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i64 @__card_checktimeout(i64 %74, i64 %75, i32 1500)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %73
  %79 = load i32, i32* @_ioClrFlag, align 4
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i64, i64* %4, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* @EXI_READWRITE, align 4
  %84 = call i64 @EXI_ImmEx(i64 %81, i32* %82, i32 1, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @EXI_Deselect(i64 %87)
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @EXI_Unlock(i64 %89)
  %91 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %91, i64* %3, align 8
  br label %175

92:                                               ; preds = %78
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 16
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i64, i64* @CARDIO_ERROR_IOTIMEOUT, align 8
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %97, %92
  br label %101

100:                                              ; preds = %73
  br label %48

101:                                              ; preds = %99, %72, %48
  %102 = load i32, i32* @_ioClrFlag, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %6, align 8
  store i32 %102, i32* %104, align 4
  %105 = load i64, i64* %4, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* @EXI_READWRITE, align 4
  %108 = call i64 @EXI_ImmEx(i64 %105, i32* %106, i32 1, i32 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = load i64, i64* %4, align 8
  %112 = call i32 @EXI_Deselect(i64 %111)
  %113 = load i64, i64* %4, align 8
  %114 = call i32 @EXI_Unlock(i64 %113)
  %115 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %115, i64* %3, align 8
  br label %175

116:                                              ; preds = %101
  %117 = call i64 (...) @gettick()
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %168, %116
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  br i1 %122, label %123, label %169

123:                                              ; preds = %118
  %124 = load i32, i32* @_ioClrFlag, align 4
  %125 = load i32*, i32** %6, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i64, i64* %4, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* @EXI_READWRITE, align 4
  %129 = call i64 @EXI_ImmEx(i64 %126, i32* %127, i32 1, i32 %128)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = load i64, i64* %4, align 8
  %133 = call i32 @EXI_Deselect(i64 %132)
  %134 = load i64, i64* %4, align 8
  %135 = call i32 @EXI_Unlock(i64 %134)
  %136 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %136, i64* %3, align 8
  br label %175

137:                                              ; preds = %123
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  br label %169

142:                                              ; preds = %137
  %143 = load i64, i64* %4, align 8
  %144 = load i64, i64* %7, align 8
  %145 = call i64 @__card_checktimeout(i64 %143, i64 %144, i32 1500)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %142
  %148 = load i32, i32* @_ioClrFlag, align 4
  %149 = load i32*, i32** %6, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i64, i64* %4, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* @EXI_READWRITE, align 4
  %153 = call i64 @EXI_ImmEx(i64 %150, i32* %151, i32 1, i32 %152)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  %156 = load i64, i64* %4, align 8
  %157 = call i32 @EXI_Deselect(i64 %156)
  %158 = load i64, i64* %4, align 8
  %159 = call i32 @EXI_Unlock(i64 %158)
  %160 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %160, i64* %3, align 8
  br label %175

161:                                              ; preds = %147
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %161
  %166 = load i64, i64* @CARDIO_ERROR_IOTIMEOUT, align 8
  store i64 %166, i64* %8, align 8
  br label %167

167:                                              ; preds = %165, %161
  br label %169

168:                                              ; preds = %142
  br label %118

169:                                              ; preds = %167, %141, %118
  %170 = load i64, i64* %4, align 8
  %171 = call i32 @EXI_Deselect(i64 %170)
  %172 = load i64, i64* %4, align 8
  %173 = call i32 @EXI_Unlock(i64 %172)
  %174 = load i64, i64* %8, align 8
  store i64 %174, i64* %3, align 8
  br label %175

175:                                              ; preds = %169, %155, %131, %110, %86, %61, %40, %27, %15
  %176 = load i64, i64* %3, align 8
  ret i64 %176
}

declare dso_local i32 @__exi_wait(i64) #1

declare dso_local i64 @EXI_Select(i64, i32, i32) #1

declare dso_local i32 @EXI_Unlock(i64) #1

declare dso_local i64 @EXI_ImmEx(i64, i32*, i32, i32) #1

declare dso_local i32 @EXI_Deselect(i64) #1

declare dso_local i64 @gettick(...) #1

declare dso_local i64 @__card_checktimeout(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
