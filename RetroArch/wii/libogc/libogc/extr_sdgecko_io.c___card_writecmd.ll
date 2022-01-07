; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_writecmd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_writecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@_ioWPFlag = common dso_local global i64 0, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@_ioCardFreq = common dso_local global i32 0, align 4
@_ioClrFlag = common dso_local global i32 0, align 4
@EXI_WRITE = common dso_local global i32 0, align 4
@CARDIO_ERROR_IOERROR = common dso_local global i64 0, align 8
@CARDIO_ERROR_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i64)* @__card_writecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_writecmd(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [32 x i32], align 16
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @MAX_DRIVE, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %3
  %19 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %19, i64* %4, align 8
  br label %122

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, 64
  store i32 %26, i32* %24, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @__make_crc7(i8* %27, i64 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i64, i64* @_ioWPFlag, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %20
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32*, i32** %9, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, -1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %11, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %11, align 8
  br label %33

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @__exi_wait(i64 %48)
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* @EXI_DEVICE_0, align 4
  %52 = load i32, i32* @_ioCardFreq, align 4
  %53 = call i64 @EXI_Select(i64 %50, i32 %51, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @EXI_Unlock(i64 %56)
  %58 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %58, i64* %4, align 8
  br label %122

59:                                               ; preds = %47
  store i64 0, i64* %11, align 8
  br label %60

60:                                               ; preds = %67, %59
  %61 = load i64, i64* %11, align 8
  %62 = icmp slt i64 %61, 32
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* @_ioClrFlag, align 4
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %65
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %11, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %11, align 8
  br label %60

70:                                               ; preds = %60
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %73 = load i32, i32* @EXI_WRITE, align 4
  %74 = call i64 @EXI_ImmEx(i64 %71, i32* %72, i32 10, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @EXI_Deselect(i64 %77)
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @EXI_Unlock(i64 %79)
  %81 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %81, i64* %4, align 8
  br label %122

82:                                               ; preds = %70
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, 1
  store i32 %84, i32* %8, align 4
  %85 = load i64, i64* @_ioWPFlag, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = xor i32 %88, -1
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i64, i64* %5, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = load i64, i64* %7, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @EXI_WRITE, align 4
  %97 = call i64 @EXI_ImmEx(i64 %91, i32* %93, i32 %95, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @EXI_Deselect(i64 %100)
  %102 = load i64, i64* %5, align 8
  %103 = call i32 @EXI_Unlock(i64 %102)
  %104 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %104, i64* %4, align 8
  br label %122

105:                                              ; preds = %90
  %106 = load i64, i64* %5, align 8
  %107 = load i32, i32* @EXI_WRITE, align 4
  %108 = call i64 @EXI_ImmEx(i64 %106, i32* %8, i32 1, i32 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @EXI_Deselect(i64 %111)
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @EXI_Unlock(i64 %113)
  %115 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %115, i64* %4, align 8
  br label %122

116:                                              ; preds = %105
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @EXI_Deselect(i64 %117)
  %119 = load i64, i64* %5, align 8
  %120 = call i32 @EXI_Unlock(i64 %119)
  %121 = load i64, i64* @CARDIO_ERROR_READY, align 8
  store i64 %121, i64* %4, align 8
  br label %122

122:                                              ; preds = %116, %110, %99, %76, %55, %18
  %123 = load i64, i64* %4, align 8
  ret i64 %123
}

declare dso_local i32 @__make_crc7(i8*, i64) #1

declare dso_local i32 @__exi_wait(i64) #1

declare dso_local i64 @EXI_Select(i64, i32, i32) #1

declare dso_local i32 @EXI_Unlock(i64) #1

declare dso_local i64 @EXI_ImmEx(i64, i32*, i32, i32) #1

declare dso_local i32 @EXI_Deselect(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
