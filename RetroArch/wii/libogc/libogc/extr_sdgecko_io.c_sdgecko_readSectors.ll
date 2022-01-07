; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c_sdgecko_readSectors.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c_sdgecko_readSectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@CARDIO_ERROR_INTERNAL = common dso_local global i64 0, align 8
@PAGE_SIZE512 = common dso_local global i64 0, align 8
@_ioPageSize = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdgecko_readSectors(i64 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  store i8* %14, i8** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @MAX_DRIVE, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %4
  %22 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %22, i64* %5, align 8
  br label %106

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @sdgecko_preIO(i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* %11, align 8
  store i64 %29, i64* %5, align 8
  br label %106

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64, i64* @CARDIO_ERROR_INTERNAL, align 8
  store i64 %34, i64* %5, align 8
  br label %106

35:                                               ; preds = %30
  %36 = load i64, i64* @PAGE_SIZE512, align 8
  %37 = load i64*, i64** @_ioPageSize, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %35
  %43 = load i64, i64* @PAGE_SIZE512, align 8
  %44 = load i64*, i64** @_ioPageSize, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %43, i64* %46, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @PAGE_SIZE512, align 8
  %49 = call i64 @__card_setblocklen(i64 %47, i64 %48)
  store i64 %49, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %5, align 8
  br label %106

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %58 = call i32 @__convert_sector(i64 %55, i32 %56, i32* %57)
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %61 = call i64 @__card_sendcmd(i64 %59, i32 18, i32* %60)
  store i64 %61, i64* %11, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i64, i64* %11, align 8
  store i64 %64, i64* %5, align 8
  br label %106

65:                                               ; preds = %54
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @__card_response1(i64 %66)
  store i64 %67, i64* %11, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i64, i64* %11, align 8
  store i64 %70, i64* %5, align 8
  br label %106

71:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load i64, i64* %6, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = load i64*, i64** @_ioPageSize, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @__card_dataread(i64 %77, i8* %78, i64 %82)
  store i64 %83, i64* %11, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i64, i64* %11, align 8
  store i64 %86, i64* %5, align 8
  br label %106

87:                                               ; preds = %76
  %88 = load i64*, i64** @_ioPageSize, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8* %93, i8** %13, align 8
  br label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %72

97:                                               ; preds = %72
  %98 = load i64, i64* %6, align 8
  %99 = call i64 @__card_sendcmd(i64 %98, i32 12, i32* null)
  store i64 %99, i64* %11, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i64, i64* %11, align 8
  store i64 %102, i64* %5, align 8
  br label %106

103:                                              ; preds = %97
  %104 = load i64, i64* %6, align 8
  %105 = call i64 @__card_stopresponse(i64 %104)
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %103, %101, %85, %69, %63, %51, %33, %28, %21
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

declare dso_local i64 @sdgecko_preIO(i64) #1

declare dso_local i64 @__card_setblocklen(i64, i64) #1

declare dso_local i32 @__convert_sector(i64, i32, i32*) #1

declare dso_local i64 @__card_sendcmd(i64, i32, i32*) #1

declare dso_local i64 @__card_response1(i64) #1

declare dso_local i64 @__card_dataread(i64, i8*, i64) #1

declare dso_local i64 @__card_stopresponse(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
