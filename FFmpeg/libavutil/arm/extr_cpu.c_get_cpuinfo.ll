; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/arm/extr_cpu.c_get_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/arm/extr_cpu.c_get_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Features\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" edsp \00", align 1
@HWCAP_EDSP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" tls \00", align 1
@HWCAP_TLS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c" thumbee \00", align 1
@HWCAP_THUMBEE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c" vfp \00", align 1
@HWCAP_VFP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c" vfpv3 \00", align 1
@HWCAP_VFPv3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c" neon \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" asimd \00", align 1
@HWCAP_NEON = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c" fp \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_cpuinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cpuinfo(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [200 x i8], align 16
  store i32* %0, i32** %3, align 8
  %6 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %95

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %91, %10
  %13 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @fgets(i8* %13, i32 200, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %92

17:                                               ; preds = %12
  %18 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %19 = call i64 @av_strstart(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %91

21:                                               ; preds = %17
  %22 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %23 = call i64 @strstr(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @HWCAP_EDSP, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %32 = call i64 @strstr(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* @HWCAP_TLS, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %41 = call i64 @strstr(i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* @HWCAP_THUMBEE, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %50 = call i64 @strstr(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* @HWCAP_VFP, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %48
  %58 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %59 = call i64 @strstr(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* @HWCAP_VFPv3, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %61, %57
  %67 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %68 = call i64 @strstr(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %72 = call i64 @strstr(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70, %66
  %75 = load i32, i32* @HWCAP_NEON, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %75
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %74, %70
  %80 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %81 = call i64 @strstr(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* @HWCAP_VFP, align 4
  %85 = load i32, i32* @HWCAP_VFPv3, align 4
  %86 = or i32 %84, %85
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %83, %79
  br label %92

91:                                               ; preds = %17
  br label %12

92:                                               ; preds = %90, %12
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @fclose(i32* %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %92, %9
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @av_strstart(i8*, i8*, i32*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
