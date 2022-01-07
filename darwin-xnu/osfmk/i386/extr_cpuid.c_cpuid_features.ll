; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpuid.c_cpuid_features.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpuid.c_cpuid_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cpuid_features.checked = internal global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_fpu\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"limiting fpu features to: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"387\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mmx\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"no sse or sse2\0A\00", align 1
@CPUID_FEATURE_SSE = common dso_local global i32 0, align 4
@CPUID_FEATURE_SSE2 = common dso_local global i32 0, align 4
@CPUID_FEATURE_FXSR = common dso_local global i32 0, align 4
@cpuid_cpu_infop = common dso_local global %struct.TYPE_2__* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"sse\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"no sse2\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuid_features() #0 {
  %1 = alloca [20 x i8], align 16
  %2 = bitcast [20 x i8]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 20, i1 false)
  %3 = call i32 (...) @cpuid_info()
  %4 = load i32, i32* @cpuid_features.checked, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %8 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %7, i32 20)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %6
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %14 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %13, i32 4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %18 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %17, i32 4)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %16, %10
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i32, i32* @CPUID_FEATURE_SSE, align 4
  %23 = load i32, i32* @CPUID_FEATURE_SSE2, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CPUID_FEATURE_FXSR, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuid_cpu_infop, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %45

32:                                               ; preds = %16
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %34 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %33, i32 4)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %38 = load i32, i32* @CPUID_FEATURE_SSE2, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuid_cpu_infop, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %36, %32
  br label %45

45:                                               ; preds = %44, %20
  br label %46

46:                                               ; preds = %45, %6
  store i32 1, i32* @cpuid_features.checked, align 4
  br label %47

47:                                               ; preds = %46, %0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuid_cpu_infop, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpuid_info(...) #2

declare dso_local i64 @PE_parse_boot_argn(i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
