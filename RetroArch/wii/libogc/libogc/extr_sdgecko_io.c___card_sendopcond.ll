; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_sendopcond.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_sendopcond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@_initType = common dso_local global i64* null, align 8
@TYPE_SDHC = common dso_local global i64 0, align 8
@_ioResponse = common dso_local global i32** null, align 8
@_ioError = common dso_local global i32* null, align 8
@CARDIO_OP_IOERR_IDLE = common dso_local global i32 0, align 4
@CARDIO_ERROR_READY = common dso_local global i64 0, align 8
@CARDIO_ERROR_IOERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @__card_sendopcond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_sendopcond(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [5 x i32], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = bitcast [5 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 20, i1 false)
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
  br label %133

16:                                               ; preds = %10
  store i64 0, i64* %5, align 8
  %17 = call i64 (...) @gettick()
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %75, %16
  %19 = load i64*, i64** @_initType, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TYPE_SDHC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @__card_sendappcmd(i64 %26)
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  store i32 41, i32* %28, align 16
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  store i32 64, i32* %29, align 4
  br label %32

30:                                               ; preds = %18
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  store i32 1, i32* %31, align 16
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %35 = call i64 @__card_writecmd(i64 %33, i32* %34, i32 5)
  store i64 %35, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* %5, align 8
  store i64 %38, i64* %2, align 8
  br label %133

39:                                               ; preds = %32
  %40 = load i64, i64* %3, align 8
  %41 = load i32**, i32*** @_ioResponse, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @__card_readresponse(i64 %40, i32* %44, i32 1)
  store i64 %45, i64* %5, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i64, i64* %5, align 8
  store i64 %48, i64* %2, align 8
  br label %133

49:                                               ; preds = %39
  %50 = load i64, i64* %3, align 8
  %51 = load i32**, i32*** @_ioResponse, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @__check_response(i64 %50, i32 %56)
  store i64 %57, i64* %5, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i64, i64* %5, align 8
  store i64 %60, i64* %2, align 8
  br label %133

61:                                               ; preds = %49
  %62 = load i32*, i32** @_ioError, align 8
  %63 = load i64, i64* %3, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CARDIO_OP_IOERR_IDLE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = load i64, i64* @CARDIO_ERROR_READY, align 8
  store i64 %70, i64* %2, align 8
  br label %133

71:                                               ; preds = %61
  %72 = load i64, i64* %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @__card_checktimeout(i64 %72, i64 %73, i32 1500)
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %5, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %18, label %78

78:                                               ; preds = %75
  %79 = load i64*, i64** @_initType, align 8
  %80 = load i64, i64* %3, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TYPE_SDHC, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i64, i64* %3, align 8
  %87 = call i32 @__card_sendappcmd(i64 %86)
  %88 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  store i32 41, i32* %88, align 16
  %89 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  store i32 64, i32* %89, align 4
  br label %92

90:                                               ; preds = %78
  %91 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  store i32 1, i32* %91, align 16
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i64, i64* %3, align 8
  %94 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %95 = call i64 @__card_writecmd(i64 %93, i32* %94, i32 5)
  store i64 %95, i64* %5, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i64, i64* %5, align 8
  store i64 %98, i64* %2, align 8
  br label %133

99:                                               ; preds = %92
  %100 = load i64, i64* %3, align 8
  %101 = load i32**, i32*** @_ioResponse, align 8
  %102 = load i64, i64* %3, align 8
  %103 = getelementptr inbounds i32*, i32** %101, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = call i64 @__card_readresponse(i64 %100, i32* %104, i32 1)
  store i64 %105, i64* %5, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i64, i64* %5, align 8
  store i64 %108, i64* %2, align 8
  br label %133

109:                                              ; preds = %99
  %110 = load i64, i64* %3, align 8
  %111 = load i32**, i32*** @_ioResponse, align 8
  %112 = load i64, i64* %3, align 8
  %113 = getelementptr inbounds i32*, i32** %111, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @__check_response(i64 %110, i32 %116)
  store i64 %117, i64* %5, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i64, i64* %5, align 8
  store i64 %120, i64* %2, align 8
  br label %133

121:                                              ; preds = %109
  %122 = load i32*, i32** @_ioError, align 8
  %123 = load i64, i64* %3, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @CARDIO_OP_IOERR_IDLE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %130, i64* %2, align 8
  br label %133

131:                                              ; preds = %121
  %132 = load i64, i64* @CARDIO_ERROR_READY, align 8
  store i64 %132, i64* %2, align 8
  br label %133

133:                                              ; preds = %131, %129, %119, %107, %97, %69, %59, %47, %37, %14
  %134 = load i64, i64* %2, align 8
  ret i64 %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @gettick(...) #2

declare dso_local i32 @__card_sendappcmd(i64) #2

declare dso_local i64 @__card_writecmd(i64, i32*, i32) #2

declare dso_local i64 @__card_readresponse(i64, i32*, i32) #2

declare dso_local i64 @__check_response(i64, i32) #2

declare dso_local i64 @__card_checktimeout(i64, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
