; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_config_file.c_config_readsect.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_config_file.c_config_readsect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"config_readsect: %s: missing section [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"config_readsect: loaded from %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_readsect(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %75

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i32*, i32** %10, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @seek_sect(i32* %21, i8* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (i8*, i8*, ...) @lprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @fclose(i32* %30)
  store i32 -1, i32* %3, align 4
  br label %75

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %17
  %34 = call i32 (...) @emu_set_defconfig()
  br label %35

35:                                               ; preds = %51, %50, %33
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @feof(i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %43 = call i32 @config_get_var_val(i32* %41, i8* %42, i32 128, i8** %7, i8** %8)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %55

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %35

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @parse(i8* %52, i8* %53, i32* %9)
  br label %35

55:                                               ; preds = %46, %35
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @rewind(i32* %59)
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @keys_parse_all(i32* %61)
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @fclose(i32* %64)
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 (i8*, i8*, ...) @lprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = load i8*, i8** %5, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 (i8*, i8*, ...) @lprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %63
  %74 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %26, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @seek_sect(i32*, i8*) #1

declare dso_local i32 @lprintf(i8*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @emu_set_defconfig(...) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @config_get_var_val(i32*, i8*, i32, i8**, i8**) #1

declare dso_local i32 @parse(i8*, i8*, i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @keys_parse_all(i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
