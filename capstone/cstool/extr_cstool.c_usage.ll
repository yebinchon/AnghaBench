; ModuleID = '/home/carl/AnghaBench/capstone/cstool/extr_cstool.c_usage.c'
source_filename = "/home/carl/AnghaBench/capstone/cstool/extr_cstool.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"Cstool for Capstone Disassembler Engine v%u.%u.%u\0A\0A\00", align 1
@CS_VERSION_MAJOR = common dso_local global i32 0, align 4
@CS_VERSION_MINOR = common dso_local global i32 0, align 4
@CS_VERSION_EXTRA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"Syntax: %s [-u|-d|-s|-v] <arch+mode> <assembly-hexstring> [start-address-in-hex-format]\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\0AThe following <arch+mode> options are supported:\0A\00", align 1
@CS_ARCH_X86 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"        x16         16-bit mode (X86)\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"        x32         32-bit mode (X86)\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"        x64         64-bit mode (X86)\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"        x16att      16-bit mode (X86), syntax AT&T\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"        x32att      32-bit mode (X86), syntax AT&T\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"        x64att      64-bit mode (X86), syntax AT&T\0A\00", align 1
@CS_ARCH_ARM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"        arm         arm\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"        armbe       arm + big endian\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"        thumb       thumb mode\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"        thumbbe     thumb + big endian\0A\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"        cortexm     thumb + cortex-m extensions\0A\00", align 1
@CS_ARCH_ARM64 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"        arm64       aarch64 mode\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"        arm64be     aarch64 + big endian\0A\00", align 1
@CS_ARCH_MIPS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [44 x i8] c"        mips        mips32 + little endian\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"        mipsbe      mips32 + big endian\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"        mips64      mips64 + little endian\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"        mips64be    mips64 + big endian\0A\00", align 1
@CS_ARCH_PPC = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [43 x i8] c"        ppc64       ppc64 + little endian\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"        ppc64be     ppc64 + big endian\0A\00", align 1
@CS_ARCH_SPARC = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [27 x i8] c"        sparc       sparc\0A\00", align 1
@CS_ARCH_SYSZ = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [37 x i8] c"        systemz     systemz (s390x)\0A\00", align 1
@CS_ARCH_XCORE = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [27 x i8] c"        xcore       xcore\0A\00", align 1
@CS_ARCH_M68K = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [39 x i8] c"        m68k        m68k + big endian\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"        m68k40      m68k_040\0A\00", align 1
@CS_ARCH_TMS320C64X = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [32 x i8] c"        tms320c64x  TMS320C64x\0A\00", align 1
@CS_ARCH_M680X = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [29 x i8] c"        m6800       M6800/2\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"        m6801       M6801/3\0A\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"        m6805       M6805\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"        m6808       M68HC08\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"        m6809       M6809\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"        m6811       M68HC11\0A\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"        cpu12       M68HC12/HCS12\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"        hd6301      HD6301/3\0A\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"        hd6309      HD6309\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"        hcs08       HCS08\0A\00", align 1
@CS_ARCH_EVM = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [46 x i8] c"        evm         Ethereum Virtual Machine\0A\00", align 1
@CS_ARCH_MOS65XX = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [36 x i8] c"        mos65xx     MOS65XX family\0A\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"\0AExtra options:\0A\00", align 1
@.str.41 = private unnamed_addr constant [58 x i8] c"        -d show detailed information of the instructions\0A\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"        -u show immediates as unsigned\0A\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"        -s decode in SKIPDATA mode\0A\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c"        -v show version & Capstone core build info\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @CS_VERSION_MAJOR, align 4
  %4 = load i32, i32* @CS_VERSION_MINOR, align 4
  %5 = load i32, i32* @CS_VERSION_EXTRA, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4, i32 %5)
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32, i32* @CS_ARCH_X86, align 4
  %11 = call i64 @cs_support(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  br label %20

20:                                               ; preds = %13, %1
  %21 = load i32, i32* @CS_ARCH_ARM, align 4
  %22 = call i64 @cs_support(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0))
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i32, i32* @CS_ARCH_ARM64, align 4
  %32 = call i64 @cs_support(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* @CS_ARCH_MIPS, align 4
  %39 = call i64 @cs_support(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* @CS_ARCH_PPC, align 4
  %48 = call i64 @cs_support(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i32, i32* @CS_ARCH_SPARC, align 4
  %55 = call i64 @cs_support(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32, i32* @CS_ARCH_SYSZ, align 4
  %61 = call i64 @cs_support(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32, i32* @CS_ARCH_XCORE, align 4
  %67 = call i64 @cs_support(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i32, i32* @CS_ARCH_M68K, align 4
  %73 = call i64 @cs_support(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0))
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32, i32* @CS_ARCH_TMS320C64X, align 4
  %80 = call i64 @cs_support(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %78
  %85 = load i32, i32* @CS_ARCH_M680X, align 4
  %86 = call i64 @cs_support(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0))
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0))
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0))
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0))
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0))
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0))
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i64 0, i64 0))
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0))
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0))
  br label %99

99:                                               ; preds = %88, %84
  %100 = load i32, i32* @CS_ARCH_EVM, align 4
  %101 = call i64 @cs_support(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.38, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %99
  %106 = load i32, i32* @CS_ARCH_MOS65XX, align 4
  %107 = call i64 @cs_support(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %105
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i64 0, i64 0))
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.41, i64 0, i64 0))
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0))
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i64 0, i64 0))
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @cs_support(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
