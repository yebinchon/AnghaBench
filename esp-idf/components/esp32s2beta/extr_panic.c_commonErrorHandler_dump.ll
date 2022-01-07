; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_panic.c_commonErrorHandler_dump.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_panic.c_commonErrorHandler_dump.c"
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
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  store i32* %10, i32** %5, align 8
  %11 = bitcast [24 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([24 x i8*]* @__const.commonErrorHandler_dump.sdesc to i8*), i64 192, i1 false)
  %12 = load i32, i32* @abort_called, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %95, label %14

14:                                               ; preds = %2
  %15 = call i32 @panicPutStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @panicPutDec(i32 %16)
  %18 = call i32 @panicPutStr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %62, %14
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 24
  br i1 %21, label %22, label %65

22:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %57, %22
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %60

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [24 x i8*], [24 x i8*]* %8, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [24 x i8*], [24 x i8*]* %8, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @panicPutStr(i8* %43)
  %45 = call i32 @panicPutStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @panicPutHex(i32 %53)
  %55 = call i32 @panicPutStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  br label %56

56:                                               ; preds = %37, %26
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %23

60:                                               ; preds = %23
  %61 = call i32 @panicPutStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 4
  store i32 %64, i32* %6, align 4
  br label %19

65:                                               ; preds = %19
  %66 = call i64 (...) @xPortInterruptedFromISRContext()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %65
  %69 = load i32*, i32** @other_core_frame, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = icmp ne i32* %69, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %68
  %73 = call i32 @panicPutStr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @panicPutDec(i32 %74)
  %76 = call i32 @panicPutStr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0))
  %77 = call i32 asm "rsr.epc1 $0", "={ax},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !2
  store i32 %77, i32* %9, align 4
  %78 = call i32 @panicPutStr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @panicPutHex(i32 %79)
  %81 = call i32 asm "rsr.epc2 $0", "={ax},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !3
  store i32 %81, i32* %9, align 4
  %82 = call i32 @panicPutStr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0))
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @panicPutHex(i32 %83)
  %85 = call i32 asm "rsr.epc3 $0", "={ax},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !4
  store i32 %85, i32* %9, align 4
  %86 = call i32 @panicPutStr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0))
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @panicPutHex(i32 %87)
  %89 = call i32 asm "rsr.epc4 $0", "={ax},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !5
  store i32 %89, i32* %9, align 4
  %90 = call i32 @panicPutStr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0))
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @panicPutHex(i32 %91)
  %93 = call i32 @panicPutStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  br label %94

94:                                               ; preds = %72, %68, %65
  br label %95

95:                                               ; preds = %94, %2
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @doBacktrace(i32* %96)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @panicPutStr(i8*) #2

declare dso_local i32 @panicPutDec(i32) #2

declare dso_local i32 @panicPutHex(i32) #2

declare dso_local i64 @xPortInterruptedFromISRContext(...) #2

declare dso_local i32 @doBacktrace(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1666}
!3 = !{i32 1794}
!4 = !{i32 1924}
!5 = !{i32 2054}
