; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_writecmd0.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_writecmd0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@_ioClrFlag = common dso_local global i32 0, align 4
@_ioWPFlag = common dso_local global i64 0, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@_ioCardFreq = common dso_local global i32 0, align 4
@EXI_WRITE = common dso_local global i32 0, align 4
@CARDIO_ERROR_IOERROR = common dso_local global i64 0, align 8
@CARDIO_ERROR_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @__card_writecmd0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_writecmd0(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [128 x i32], align 16
  %7 = alloca [5 x i32], align 16
  store i64 %0, i64* %3, align 8
  %8 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 20, i1 false)
  %9 = load i64, i64* %3, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @MAX_DRIVE, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %1
  %16 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %16, i64* %2, align 8
  br label %129

17:                                               ; preds = %11
  store i32 255, i32* @_ioClrFlag, align 4
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 64, i32* %18, align 16
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %20 = call i32 @__make_crc7(i32* %19, i32 5)
  store i32 %20, i32* %4, align 4
  %21 = load i64, i64* @_ioWPFlag, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  store i32 0, i32* @_ioClrFlag, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %33, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %24

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %17
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %46, %37
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 128
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* @_ioClrFlag, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 %44
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %38

49:                                               ; preds = %38
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @__exi_wait(i64 %50)
  %52 = load i64, i64* %3, align 8
  %53 = load i32, i32* @EXI_DEVICE_0, align 4
  %54 = load i32, i32* @_ioCardFreq, align 4
  %55 = call i64 @EXI_SelectSD(i64 %52, i32 %53, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @EXI_Unlock(i64 %58)
  %60 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %60, i64* %2, align 8
  br label %129

61:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %77, %61
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 20
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load i64, i64* %3, align 8
  %67 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %68 = load i32, i32* @EXI_WRITE, align 4
  %69 = call i64 @EXI_ImmEx(i64 %66, i32* %67, i32 128, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @EXI_Deselect(i64 %72)
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @EXI_Unlock(i64 %74)
  %76 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %76, i64* %2, align 8
  br label %129

77:                                               ; preds = %65
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %62

80:                                               ; preds = %62
  %81 = load i64, i64* %3, align 8
  %82 = call i32 @EXI_Deselect(i64 %81)
  %83 = load i64, i64* %3, align 8
  %84 = load i32, i32* @EXI_DEVICE_0, align 4
  %85 = load i32, i32* @_ioCardFreq, align 4
  %86 = call i64 @EXI_Select(i64 %83, i32 %84, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load i64, i64* %3, align 8
  %90 = call i32 @EXI_Unlock(i64 %89)
  %91 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %91, i64* %2, align 8
  br label %129

92:                                               ; preds = %80
  %93 = load i32, i32* %4, align 4
  %94 = or i32 %93, 1
  store i32 %94, i32* %4, align 4
  %95 = load i64, i64* @_ioWPFlag, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* %4, align 4
  %99 = xor i32 %98, -1
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i64, i64* %3, align 8
  %102 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %103 = load i32, i32* @EXI_WRITE, align 4
  %104 = call i64 @EXI_ImmEx(i64 %101, i32* %102, i32 5, i32 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i64, i64* %3, align 8
  %108 = call i32 @EXI_Deselect(i64 %107)
  %109 = load i64, i64* %3, align 8
  %110 = call i32 @EXI_Unlock(i64 %109)
  %111 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %111, i64* %2, align 8
  br label %129

112:                                              ; preds = %100
  %113 = load i64, i64* %3, align 8
  %114 = load i32, i32* @EXI_WRITE, align 4
  %115 = call i64 @EXI_ImmEx(i64 %113, i32* %4, i32 1, i32 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i64, i64* %3, align 8
  %119 = call i32 @EXI_Deselect(i64 %118)
  %120 = load i64, i64* %3, align 8
  %121 = call i32 @EXI_Unlock(i64 %120)
  %122 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %122, i64* %2, align 8
  br label %129

123:                                              ; preds = %112
  %124 = load i64, i64* %3, align 8
  %125 = call i32 @EXI_Deselect(i64 %124)
  %126 = load i64, i64* %3, align 8
  %127 = call i32 @EXI_Unlock(i64 %126)
  %128 = load i64, i64* @CARDIO_ERROR_READY, align 8
  store i64 %128, i64* %2, align 8
  br label %129

129:                                              ; preds = %123, %117, %106, %88, %71, %57, %15
  %130 = load i64, i64* %2, align 8
  ret i64 %130
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__make_crc7(i32*, i32) #2

declare dso_local i32 @__exi_wait(i64) #2

declare dso_local i64 @EXI_SelectSD(i64, i32, i32) #2

declare dso_local i32 @EXI_Unlock(i64) #2

declare dso_local i64 @EXI_ImmEx(i64, i32*, i32, i32) #2

declare dso_local i32 @EXI_Deselect(i64) #2

declare dso_local i64 @EXI_Select(i64, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
