; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/affinity/extr_sets.c_auto_config.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/affinity/extr_sets.c_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_CACHE_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Autoconfiguring...\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"hw.cacheconfig\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to get hw.cacheconfig, %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"hw.cachesize\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Unable to get hw.cachesize, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"  L%d (LLC) cache %qd bytes: using %d buffers of size %d bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"  %qd cpus; %qd cpus per L%d cache: using %d sets\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auto_config(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @MAX_CACHE_DEPTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32, i32* @MAX_CACHE_DEPTH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %20 = call i32 (i8*, ...) @mutter(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = mul nuw i64 4, %14
  store i64 %21, i64* %7, align 8
  %22 = getelementptr inbounds i32, i32* %16, i64 0
  %23 = call i64 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %22, i64* %7, i32* null, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = call i32 @exit(i32 1) #4
  unreachable

29:                                               ; preds = %3
  %30 = mul nuw i64 4, %18
  store i64 %30, i64* %7, align 8
  %31 = getelementptr inbounds i32, i32* %19, i64 0
  %32 = call i64 @sysctlbyname(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %31, i64* %7, i32* null, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = call i32 @exit(i32 1) #4
  unreachable

38:                                               ; preds = %29
  %39 = load i32, i32* @MAX_CACHE_DEPTH, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %52, %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %16, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %55

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %9, align 4
  br label %41

55:                                               ; preds = %50, %41
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %19, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 9
  %61 = load i32, i32* %4, align 4
  %62 = mul nsw i32 %61, 4096
  %63 = mul nsw i32 %62, 10
  %64 = sdiv i32 %60, %63
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %19, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = mul nsw i32 %73, 4096
  %75 = call i32 (i8*, ...) @mutter(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %66, i32 %70, i32 %72, i32 %74)
  %76 = getelementptr inbounds i32, i32* %16, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %16, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %77, %81
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds i32, i32* %16, i64 0
  %85 = load i32, i32* %84, align 16
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %16, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, ...) @mutter(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %85, i32 %89, i32 %90, i32 %92)
  %94 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %94)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutter(i8*, ...) #2

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #2

declare dso_local i32 @printf(i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
