; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_unix.c_frontend_unix_get_architecture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_unix.c_frontend_unix_get_architecture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i8* }

@FRONTEND_ARCH_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"aarch64\00", align 1
@FRONTEND_ARCH_ARMV8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"armv7l\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"armv7b\00", align 1
@FRONTEND_ARCH_ARMV7 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"armv6l\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"armv6b\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"armv5tel\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@FRONTEND_ARCH_ARM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@FRONTEND_ARCH_X86_64 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@FRONTEND_ARCH_X86 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"ppc64\00", align 1
@FRONTEND_ARCH_PPC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@FRONTEND_ARCH_MIPS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"tile\00", align 1
@FRONTEND_ARCH_TILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @frontend_unix_get_architecture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frontend_unix_get_architecture() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.utsname, align 8
  %3 = alloca i8*, align 8
  store i8* null, i8** %3, align 8
  %4 = call i64 @uname(%struct.utsname* %2)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @FRONTEND_ARCH_NONE, align 4
  store i32 %7, i32* %1, align 4
  br label %83

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @string_is_equal(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @FRONTEND_ARCH_ARMV8, align 4
  store i32 %15, i32* %1, align 4
  br label %83

16:                                               ; preds = %8
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @string_is_equal(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @string_is_equal(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @FRONTEND_ARCH_ARMV7, align 4
  store i32 %25, i32* %1, align 4
  br label %83

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @string_is_equal(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @string_is_equal(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @string_is_equal(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @string_is_equal(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %34, %30, %26
  %43 = load i32, i32* @FRONTEND_ARCH_ARM, align 4
  store i32 %43, i32* %1, align 4
  br label %83

44:                                               ; preds = %38
  %45 = load i8*, i8** %3, align 8
  %46 = call i64 @string_is_equal(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @FRONTEND_ARCH_X86_64, align 4
  store i32 %49, i32* %1, align 4
  br label %83

50:                                               ; preds = %44
  %51 = load i8*, i8** %3, align 8
  %52 = call i64 @string_is_equal(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @FRONTEND_ARCH_X86, align 4
  store i32 %55, i32* %1, align 4
  br label %83

56:                                               ; preds = %50
  %57 = load i8*, i8** %3, align 8
  %58 = call i64 @string_is_equal(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @FRONTEND_ARCH_PPC, align 4
  store i32 %61, i32* %1, align 4
  br label %83

62:                                               ; preds = %56
  %63 = load i8*, i8** %3, align 8
  %64 = call i64 @string_is_equal(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @FRONTEND_ARCH_MIPS, align 4
  store i32 %67, i32* %1, align 4
  br label %83

68:                                               ; preds = %62
  %69 = load i8*, i8** %3, align 8
  %70 = call i64 @string_is_equal(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @FRONTEND_ARCH_TILE, align 4
  store i32 %73, i32* %1, align 4
  br label %83

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* @FRONTEND_ARCH_NONE, align 4
  store i32 %82, i32* %1, align 4
  br label %83

83:                                               ; preds = %81, %72, %66, %60, %54, %48, %42, %24, %14, %6
  %84 = load i32, i32* %1, align 4
  ret i32 %84
}

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
