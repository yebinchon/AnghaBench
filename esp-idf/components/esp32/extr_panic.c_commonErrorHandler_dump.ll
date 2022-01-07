; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_panic.c_commonErrorHandler_dump.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_panic.c_commonErrorHandler_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"PC      \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"PS      \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"A0      \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"A1      \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"A2      \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"A3      \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"A4      \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"A5      \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"A6      \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"A7      \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"A8      \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"A9      \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"A10     \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"A11     \00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"A12     \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"A13     \00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"A14     \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"A15     \00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"SAR     \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"EXCCAUSE\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"EXCVADDR\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"LBEG    \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"LEND    \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"LCOUNT  \00", align 1
@__const.commonErrorHandler_dump.sdesc = private unnamed_addr constant [24 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)], align 16
@abort_called = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"Core\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c" register dump:\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c": 0x\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@other_core_frame = common dso_local global i32* null, align 8
@.str.29 = private unnamed_addr constant [31 x i8] c" was running in ISR context:\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"EPC1    : 0x\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"  EPC2    : 0x\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"  EPC3    : 0x\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"  EPC4    : 0x\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"\0D\0AELF file SHA256: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @commonErrorHandler_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commonErrorHandler_dump(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [24 x i8*], align 16
  %9 = alloca i32, align 4
  %10 = alloca [65 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  store i32* %11, i32** %5, align 8
  %12 = bitcast [24 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([24 x i8*]* @__const.commonErrorHandler_dump.sdesc to i8*), i64 192, i1 false)
  %13 = load i32, i32* @abort_called, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %96, label %15

15:                                               ; preds = %2
  %16 = call i32 @panicPutStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @panicPutDec(i32 %17)
  %19 = call i32 @panicPutStr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %63, %15
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 24
  br i1 %22, label %23, label %66

23:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %58, %23
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %61

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [24 x i8*], [24 x i8*]* %8, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [24 x i8*], [24 x i8*]* %8, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @panicPutStr(i8* %44)
  %46 = call i32 @panicPutStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %48, %49
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @panicPutHex(i32 %54)
  %56 = call i32 @panicPutStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  br label %57

57:                                               ; preds = %38, %27
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %24

61:                                               ; preds = %24
  %62 = call i32 @panicPutStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 4
  store i32 %65, i32* %6, align 4
  br label %20

66:                                               ; preds = %20
  %67 = call i64 (...) @xPortInterruptedFromISRContext()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %66
  %70 = load i32*, i32** @other_core_frame, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = icmp ne i32* %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = call i32 @panicPutStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @panicPutDec(i32 %75)
  %77 = call i32 @panicPutStr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0))
  %78 = call i32 asm "rsr.epc1 $0", "={ax},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !2
  store i32 %78, i32* %9, align 4
  %79 = call i32 @panicPutStr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @panicPutHex(i32 %80)
  %82 = call i32 asm "rsr.epc2 $0", "={ax},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !3
  store i32 %82, i32* %9, align 4
  %83 = call i32 @panicPutStr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0))
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @panicPutHex(i32 %84)
  %86 = call i32 asm "rsr.epc3 $0", "={ax},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !4
  store i32 %86, i32* %9, align 4
  %87 = call i32 @panicPutStr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0))
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @panicPutHex(i32 %88)
  %90 = call i32 asm "rsr.epc4 $0", "={ax},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !5
  store i32 %90, i32* %9, align 4
  %91 = call i32 @panicPutStr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0))
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @panicPutHex(i32 %92)
  %94 = call i32 @panicPutStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  br label %95

95:                                               ; preds = %73, %69, %66
  br label %96

96:                                               ; preds = %95, %2
  %97 = call i32 @panicPutStr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0))
  %98 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %99 = call i32 @esp_ota_get_app_elf_sha256(i8* %98, i32 65)
  %100 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i64 0, i64 0
  %101 = call i32 @panicPutStr(i8* %100)
  %102 = call i32 @panicPutStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @doBacktrace(i32* %103, i32 100)
  %105 = call i32 @panicPutStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @panicPutStr(i8*) #2

declare dso_local i32 @panicPutDec(i32) #2

declare dso_local i32 @panicPutHex(i32) #2

declare dso_local i64 @xPortInterruptedFromISRContext(...) #2

declare dso_local i32 @esp_ota_get_app_elf_sha256(i8*, i32) #2

declare dso_local i32 @doBacktrace(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1741}
!3 = !{i32 1869}
!4 = !{i32 1999}
!5 = !{i32 2129}
