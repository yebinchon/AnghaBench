; ModuleID = '/home/carl/AnghaBench/capstone/suite/extr_capstone_get_setup.c_main.c'
source_filename = "/home/carl/AnghaBench/capstone/suite/extr_capstone_get_setup.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CS_ARCH_X86 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"x86=1 \00", align 1
@CS_ARCH_ARM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"arm=1 \00", align 1
@CS_ARCH_ARM64 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"arm64=1 \00", align 1
@CS_ARCH_MIPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"mips=1 \00", align 1
@CS_ARCH_PPC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"ppc=1 \00", align 1
@CS_ARCH_SPARC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"sparc=1 \00", align 1
@CS_ARCH_SYSZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"sysz=1 \00", align 1
@CS_ARCH_XCORE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"xcore=1 \00", align 1
@CS_ARCH_M68K = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"m68k=1 \00", align 1
@CS_ARCH_TMS320C64X = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"tms320c64x=1 \00", align 1
@CS_ARCH_M680X = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"m680x=1 \00", align 1
@CS_ARCH_EVM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"evm=1 \00", align 1
@CS_ARCH_MOS65XX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"mos65xx=1 \00", align 1
@CS_SUPPORT_DIET = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"diet=1 \00", align 1
@CS_SUPPORT_X86_REDUCE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"x86_reduce=1 \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @CS_ARCH_X86, align 4
  %3 = call i64 @cs_support(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* @CS_ARCH_ARM, align 4
  %9 = call i64 @cs_support(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %7
  %14 = load i32, i32* @CS_ARCH_ARM64, align 4
  %15 = call i64 @cs_support(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i32, i32* @CS_ARCH_MIPS, align 4
  %21 = call i64 @cs_support(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32, i32* @CS_ARCH_PPC, align 4
  %27 = call i64 @cs_support(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32, i32* @CS_ARCH_SPARC, align 4
  %33 = call i64 @cs_support(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* @CS_ARCH_SYSZ, align 4
  %39 = call i64 @cs_support(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* @CS_ARCH_XCORE, align 4
  %45 = call i64 @cs_support(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i32, i32* @CS_ARCH_M68K, align 4
  %51 = call i64 @cs_support(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32, i32* @CS_ARCH_TMS320C64X, align 4
  %57 = call i64 @cs_support(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i32, i32* @CS_ARCH_M680X, align 4
  %63 = call i64 @cs_support(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* @CS_ARCH_EVM, align 4
  %69 = call i64 @cs_support(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i32, i32* @CS_ARCH_MOS65XX, align 4
  %75 = call i64 @cs_support(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i32, i32* @CS_SUPPORT_DIET, align 4
  %81 = call i64 @cs_support(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i32, i32* @CS_SUPPORT_X86_REDUCE, align 4
  %87 = call i64 @cs_support(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %85
  %92 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  ret i32 0
}

declare dso_local i64 @cs_support(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
