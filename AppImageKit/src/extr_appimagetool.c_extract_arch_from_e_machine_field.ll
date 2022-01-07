; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_appimagetool.c_extract_arch_from_e_machine_field.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_appimagetool.c_extract_arch_from_e_machine_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fARCH_i386 = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s used for determining architecture i386\0A\00", align 1
@fARCH_x86_64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"%s used for determining architecture x86_64\0A\00", align 1
@fARCH_arm = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"%s used for determining architecture armhf\0A\00", align 1
@fARCH_aarch64 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"%s used for determining architecture aarch64\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extract_arch_from_e_machine_field(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load i32*, i32** %6, align 8
  %11 = load i64, i64* @fARCH_i386, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 1, i32* %12, align 4
  %13 = load i64, i64* @verbose, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %9
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 62
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32*, i32** %6, align 8
  %25 = load i64, i64* @fARCH_x86_64, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 1, i32* %26, align 4
  %27 = load i64, i64* @verbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %23
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 40
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* @fARCH_arm, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 1, i32* %40, align 4
  %41 = load i64, i64* @verbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %43, %37
  br label %48

48:                                               ; preds = %47, %34
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 183
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* @fARCH_aarch64, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 1, i32* %54, align 4
  %55 = load i64, i64* @verbose, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %48
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
