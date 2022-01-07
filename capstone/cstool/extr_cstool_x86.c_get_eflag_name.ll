; ModuleID = '/home/carl/AnghaBench/capstone/cstool/extr_cstool_x86.c_get_eflag_name.c'
source_filename = "/home/carl/AnghaBench/capstone/cstool/extr_cstool_x86.c_get_eflag_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"UNDEF_OF\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UNDEF_SF\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"UNDEF_ZF\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"MOD_AF\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"UNDEF_PF\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"MOD_CF\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"MOD_SF\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"MOD_ZF\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"UNDEF_AF\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"MOD_PF\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"UNDEF_CF\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"MOD_OF\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"RESET_OF\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"RESET_CF\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"RESET_DF\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"RESET_IF\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"RESET_ZF\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"TEST_OF\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"TEST_SF\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"TEST_ZF\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"TEST_PF\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"TEST_CF\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"RESET_SF\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"RESET_AF\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"RESET_TF\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"RESET_NT\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"PRIOR_OF\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"PRIOR_SF\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"PRIOR_ZF\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"PRIOR_AF\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"PRIOR_PF\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"PRIOR_CF\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"PRIOR_TF\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"PRIOR_IF\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"PRIOR_DF\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"TEST_NT\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"TEST_DF\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"RESET_PF\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"PRIOR_NT\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"MOD_TF\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"MOD_IF\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"MOD_DF\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"MOD_NT\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"MOD_RF\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"SET_CF\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"SET_DF\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"SET_IF\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"SET_OF\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"SET_SF\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"SET_ZF\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"SET_AF\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"SET_PF\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"TEST_AF\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"TEST_TF\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"TEST_RF\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"RESET_0F\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"RESET_AC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_eflag_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_eflag_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %5 [
    i32 131, label %6
    i32 129, label %7
    i32 128, label %8
    i32 184, label %9
    i32 130, label %10
    i32 183, label %11
    i32 176, label %12
    i32 174, label %13
    i32 133, label %14
    i32 178, label %15
    i32 132, label %16
    i32 179, label %17
    i32 156, label %18
    i32 160, label %19
    i32 159, label %20
    i32 158, label %21
    i32 152, label %22
    i32 139, label %23
    i32 136, label %24
    i32 134, label %25
    i32 138, label %26
    i32 142, label %27
    i32 154, label %28
    i32 161, label %29
    i32 153, label %30
    i32 157, label %31
    i32 168, label %32
    i32 166, label %33
    i32 164, label %34
    i32 173, label %35
    i32 167, label %36
    i32 172, label %37
    i32 165, label %38
    i32 170, label %39
    i32 171, label %40
    i32 140, label %41
    i32 141, label %42
    i32 155, label %43
    i32 169, label %44
    i32 175, label %45
    i32 181, label %46
    i32 182, label %47
    i32 180, label %48
    i32 177, label %49
    i32 150, label %50
    i32 149, label %51
    i32 148, label %52
    i32 147, label %53
    i32 145, label %54
    i32 144, label %55
    i32 151, label %56
    i32 146, label %57
    i32 143, label %58
    i32 135, label %59
    i32 137, label %60
    i32 163, label %61
    i32 162, label %62
  ]

5:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %63

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %63

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %63

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %63

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %63

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %63

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %63

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %63

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %63

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %63

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %63

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %63

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %63

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %63

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %63

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %63

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %63

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %63

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %63

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %63

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %63

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %63

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %63

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %63

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %63

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %63

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %63

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %63

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %63

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %63

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %63

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %63

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %63

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %63

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %63

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %63

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %63

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %63

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %63

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %63

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %63

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %63

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %63

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %63

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %63

50:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8** %2, align 8
  br label %63

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8** %2, align 8
  br label %63

52:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8** %2, align 8
  br label %63

53:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i8** %2, align 8
  br label %63

54:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8** %2, align 8
  br label %63

55:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i8** %2, align 8
  br label %63

56:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i8** %2, align 8
  br label %63

57:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8** %2, align 8
  br label %63

58:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0), i8** %2, align 8
  br label %63

59:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i8** %2, align 8
  br label %63

60:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), i8** %2, align 8
  br label %63

61:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8** %2, align 8
  br label %63

62:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), i8** %2, align 8
  br label %63

63:                                               ; preds = %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %64 = load i8*, i8** %2, align 8
  ret i8* %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
