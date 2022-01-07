; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_si.c___si_completetransfer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_si.c___si_completetransfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@_siReg = common dso_local global i32* null, align 8
@sicntrl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xferTime = common dso_local global i8** null, align 8
@SICOMCSR_COMERR = common dso_local global i32 0, align 4
@SISR_NORESPONSE = common dso_local global i64 0, align 8
@si_type = common dso_local global i32* null, align 8
@SI_ERR_BUSY = common dso_local global i32 0, align 4
@SI_ERROR_NO_RESPONSE = common dso_local global i32 0, align 4
@SISR_COLLISION = common dso_local global i64 0, align 8
@typeTime = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @__si_completetransfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__si_completetransfer() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = load i32*, i32** @_siReg, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 14
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %6, align 8
  %11 = call i32 (...) @__si_cleartcinterrupt()
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sicntrl, i32 0, i32 0), align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %1, align 8
  br label %126

16:                                               ; preds = %0
  %17 = call i8* (...) @gettime()
  %18 = load i8**, i8*** @xferTime, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sicntrl, i32 0, i32 0), align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  store i8* %17, i8** %21, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sicntrl, i32 0, i32 2), align 8
  %23 = inttoptr i64 %22 to i64*
  store i64* %23, i64** %5, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sicntrl, i32 0, i32 1), align 4
  %25 = sdiv i32 %24, 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %27

27:                                               ; preds = %41, %16
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32*, i32** @_siReg, align 8
  %33 = load i64, i64* %4, align 8
  %34 = add i64 32, %33
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %37, i64* %40, align 8
  br label %41

41:                                               ; preds = %31
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %4, align 8
  br label %27

44:                                               ; preds = %27
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sicntrl, i32 0, i32 1), align 4
  %46 = and i32 %45, 3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %44
  %49 = load i32*, i32** @_siReg, align 8
  %50 = load i64, i64* %3, align 8
  %51 = add i64 32, %50
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %2, align 8
  store i64 0, i64* %4, align 8
  br label %55

55:                                               ; preds = %74, %48
  %56 = load i64, i64* %4, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sicntrl, i32 0, i32 1), align 4
  %58 = and i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load i64, i64* %2, align 8
  %63 = load i64, i64* %4, align 8
  %64 = sub i64 3, %63
  %65 = mul i64 %64, 8
  %66 = lshr i64 %62, %65
  %67 = and i64 %66, 255
  %68 = load i64*, i64** %5, align 8
  %69 = load i64, i64* %3, align 8
  %70 = mul i64 %69, 4
  %71 = load i64, i64* %4, align 8
  %72 = add i64 %70, %71
  %73 = getelementptr inbounds i64, i64* %68, i64 %72
  store i64 %67, i64* %73, align 8
  br label %74

74:                                               ; preds = %61
  %75 = load i64, i64* %4, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %4, align 8
  br label %55

77:                                               ; preds = %55
  br label %78

78:                                               ; preds = %77, %44
  %79 = load i32*, i32** @_siReg, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 13
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SICOMCSR_COMERR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %118

85:                                               ; preds = %78
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sicntrl, i32 0, i32 0), align 8
  %88 = sub nsw i32 3, %87
  %89 = mul nsw i32 %88, 8
  %90 = zext i32 %89 to i64
  %91 = lshr i64 %86, %90
  %92 = and i64 %91, 15
  store i64 %92, i64* %6, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @SISR_NORESPONSE, align 8
  %95 = and i64 %93, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %85
  %98 = load i32*, i32** @si_type, align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sicntrl, i32 0, i32 0), align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SI_ERR_BUSY, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %97
  %107 = load i32, i32* @SI_ERROR_NO_RESPONSE, align 4
  %108 = load i32*, i32** @si_type, align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sicntrl, i32 0, i32 0), align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %106, %97, %85
  %113 = load i64, i64* %6, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = load i64, i64* @SISR_COLLISION, align 8
  store i64 %116, i64* %6, align 8
  br label %117

117:                                              ; preds = %115, %112
  br label %124

118:                                              ; preds = %78
  %119 = call i8* (...) @gettime()
  %120 = load i8**, i8*** @typeTime, align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sicntrl, i32 0, i32 0), align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  store i8* %119, i8** %123, align 8
  store i64 0, i64* %6, align 8
  br label %124

124:                                              ; preds = %118, %117
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sicntrl, i32 0, i32 0), align 8
  %125 = load i64, i64* %6, align 8
  store i64 %125, i64* %1, align 8
  br label %126

126:                                              ; preds = %124, %14
  %127 = load i64, i64* %1, align 8
  ret i64 %127
}

declare dso_local i32 @__si_cleartcinterrupt(...) #1

declare dso_local i8* @gettime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
