; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_multiwritestop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_multiwritestop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@_ioClrFlag = common dso_local global i32 0, align 4
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@_ioCardFreq = common dso_local global i32 0, align 4
@CARDIO_ERROR_READY = common dso_local global i64 0, align 8
@_ioWPFlag = common dso_local global i64 0, align 8
@EXI_WRITE = common dso_local global i32 0, align 4
@CARDIO_ERROR_IOERROR = common dso_local global i64 0, align 8
@EXI_READWRITE = common dso_local global i32 0, align 4
@CARDIO_ERROR_IOTIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @__card_multiwritestop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_multiwritestop(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [32 x i32], align 16
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @MAX_DRIVE, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %1
  %15 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %15, i64* %2, align 8
  br label %173

16:                                               ; preds = %10
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %24, %16
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %18, 32
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* @_ioClrFlag, align 4
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 %22
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %17

27:                                               ; preds = %17
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @__exi_wait(i64 %28)
  %30 = load i64, i64* %3, align 8
  %31 = load i32, i32* @EXI_DEVICE_0, align 4
  %32 = load i32, i32* @_ioCardFreq, align 4
  %33 = call i64 @EXI_Select(i64 %30, i32 %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @EXI_Unlock(i64 %36)
  %38 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %38, i64* %2, align 8
  br label %173

39:                                               ; preds = %27
  %40 = load i64, i64* @CARDIO_ERROR_READY, align 8
  store i64 %40, i64* %4, align 8
  %41 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  store i32 253, i32* %41, align 16
  %42 = load i64, i64* @_ioWPFlag, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  store i32 2, i32* %45, align 16
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %49 = load i32, i32* @EXI_WRITE, align 4
  %50 = call i64 @EXI_ImmEx(i64 %47, i32* %48, i32 1, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @EXI_Deselect(i64 %53)
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @EXI_Unlock(i64 %55)
  %57 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %57, i64* %2, align 8
  br label %173

58:                                               ; preds = %46
  %59 = load i32, i32* @_ioClrFlag, align 4
  %60 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  store i32 %59, i32* %60, align 16
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %63 = load i32, i32* @EXI_READWRITE, align 4
  %64 = call i64 @EXI_ImmEx(i64 %61, i32* %62, i32 1, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @EXI_Deselect(i64 %67)
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @EXI_Unlock(i64 %69)
  %71 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %71, i64* %2, align 8
  br label %173

72:                                               ; preds = %58
  %73 = load i32, i32* @_ioClrFlag, align 4
  %74 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  store i32 %73, i32* %74, align 16
  %75 = load i64, i64* %3, align 8
  %76 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %77 = load i32, i32* @EXI_READWRITE, align 4
  %78 = call i64 @EXI_ImmEx(i64 %75, i32* %76, i32 1, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load i64, i64* %3, align 8
  %82 = call i32 @EXI_Deselect(i64 %81)
  %83 = load i64, i64* %3, align 8
  %84 = call i32 @EXI_Unlock(i64 %83)
  %85 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %85, i64* %2, align 8
  br label %173

86:                                               ; preds = %72
  %87 = load i32, i32* @_ioClrFlag, align 4
  %88 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  store i32 %87, i32* %88, align 16
  %89 = load i64, i64* %3, align 8
  %90 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %91 = load i32, i32* @EXI_READWRITE, align 4
  %92 = call i64 @EXI_ImmEx(i64 %89, i32* %90, i32 1, i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load i64, i64* %3, align 8
  %96 = call i32 @EXI_Deselect(i64 %95)
  %97 = load i64, i64* %3, align 8
  %98 = call i32 @EXI_Unlock(i64 %97)
  %99 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %99, i64* %2, align 8
  br label %173

100:                                              ; preds = %86
  %101 = load i32, i32* @_ioClrFlag, align 4
  %102 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  store i32 %101, i32* %102, align 16
  %103 = load i64, i64* %3, align 8
  %104 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %105 = load i32, i32* @EXI_READWRITE, align 4
  %106 = call i64 @EXI_ImmEx(i64 %103, i32* %104, i32 1, i32 %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load i64, i64* %3, align 8
  %110 = call i32 @EXI_Deselect(i64 %109)
  %111 = load i64, i64* %3, align 8
  %112 = call i32 @EXI_Unlock(i64 %111)
  %113 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %113, i64* %2, align 8
  br label %173

114:                                              ; preds = %100
  %115 = call i64 (...) @gettick()
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* @CARDIO_ERROR_READY, align 8
  store i64 %116, i64* %4, align 8
  br label %117

117:                                              ; preds = %166, %114
  %118 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %119 = load i32, i32* %118, align 16
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %167

121:                                              ; preds = %117
  %122 = load i32, i32* @_ioClrFlag, align 4
  %123 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  store i32 %122, i32* %123, align 16
  %124 = load i64, i64* %3, align 8
  %125 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %126 = load i32, i32* @EXI_READWRITE, align 4
  %127 = call i64 @EXI_ImmEx(i64 %124, i32* %125, i32 1, i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load i64, i64* %3, align 8
  %131 = call i32 @EXI_Deselect(i64 %130)
  %132 = load i64, i64* %3, align 8
  %133 = call i32 @EXI_Unlock(i64 %132)
  %134 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %134, i64* %2, align 8
  br label %173

135:                                              ; preds = %121
  %136 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %137 = load i32, i32* %136, align 16
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %167

140:                                              ; preds = %135
  %141 = load i64, i64* %3, align 8
  %142 = load i64, i64* %6, align 8
  %143 = call i64 @__card_checktimeout(i64 %141, i64 %142, i32 1500)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %166

145:                                              ; preds = %140
  %146 = load i32, i32* @_ioClrFlag, align 4
  %147 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  store i32 %146, i32* %147, align 16
  %148 = load i64, i64* %3, align 8
  %149 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %150 = load i32, i32* @EXI_READWRITE, align 4
  %151 = call i64 @EXI_ImmEx(i64 %148, i32* %149, i32 1, i32 %150)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %145
  %154 = load i64, i64* %3, align 8
  %155 = call i32 @EXI_Deselect(i64 %154)
  %156 = load i64, i64* %3, align 8
  %157 = call i32 @EXI_Unlock(i64 %156)
  %158 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %158, i64* %2, align 8
  br label %173

159:                                              ; preds = %145
  %160 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %161 = load i32, i32* %160, align 16
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %159
  %164 = load i64, i64* @CARDIO_ERROR_IOTIMEOUT, align 8
  store i64 %164, i64* %4, align 8
  br label %165

165:                                              ; preds = %163, %159
  br label %167

166:                                              ; preds = %140
  br label %117

167:                                              ; preds = %165, %139, %117
  %168 = load i64, i64* %3, align 8
  %169 = call i32 @EXI_Deselect(i64 %168)
  %170 = load i64, i64* %3, align 8
  %171 = call i32 @EXI_Unlock(i64 %170)
  %172 = load i64, i64* %4, align 8
  store i64 %172, i64* %2, align 8
  br label %173

173:                                              ; preds = %167, %153, %129, %108, %94, %80, %66, %52, %35, %14
  %174 = load i64, i64* %2, align 8
  ret i64 %174
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
