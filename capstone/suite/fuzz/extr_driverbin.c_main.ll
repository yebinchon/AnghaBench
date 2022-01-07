; ModuleID = '/home/carl/AnghaBench/capstone/suite/fuzz/extr_driverbin.c_main.c'
source_filename = "/home/carl/AnghaBench/capstone/suite/fuzz/extr_driverbin.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid directory\0A\00", align 1
@DT_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4096 x i32], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %104

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32* @opendir(i8* %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %104

24:                                               ; preds = %15
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @chdir(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @closedir(i32* %31)
  %33 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %104

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %94, %73, %45, %34
  %36 = load i32*, i32** %9, align 8
  %37 = call %struct.dirent* @readdir(i32* %36)
  store %struct.dirent* %37, %struct.dirent** %10, align 8
  %38 = icmp ne %struct.dirent* %37, null
  br i1 %38, label %39, label %100

39:                                               ; preds = %35
  %40 = load %struct.dirent*, %struct.dirent** %10, align 8
  %41 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DT_REG, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %35

46:                                               ; preds = %39
  %47 = load %struct.dirent*, %struct.dirent** %10, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32* @fopen(i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 3, i32* %11, align 4
  br label %100

54:                                               ; preds = %46
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @SEEK_END, align 4
  %57 = call i64 @fseek(i32* %55, i64 0, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @fclose(i32* %60)
  store i32 4, i32* %11, align 4
  br label %100

62:                                               ; preds = %54
  %63 = load i32*, i32** %6, align 8
  %64 = call i64 @ftell(i32* %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @fclose(i32* %68)
  store i32 5, i32* %11, align 4
  br label %100

70:                                               ; preds = %62
  %71 = load i64, i64* %8, align 8
  %72 = icmp ugt i64 %71, 4096
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @fclose(i32* %74)
  br label %35

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @SEEK_SET, align 4
  %80 = call i64 @fseek(i32* %78, i64 0, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @fclose(i32* %83)
  store i32 7, i32* %11, align 4
  br label %100

85:                                               ; preds = %77
  %86 = getelementptr inbounds [4096 x i32], [4096 x i32]* %7, i64 0, i64 0
  %87 = load i64, i64* %8, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @fread(i32* %86, i64 %87, i32 1, i32* %88)
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @fclose(i32* %92)
  store i32 8, i32* %11, align 4
  br label %100

94:                                               ; preds = %85
  %95 = getelementptr inbounds [4096 x i32], [4096 x i32]* %7, i64 0, i64 0
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @LLVMFuzzerTestOneInput(i32* %95, i64 %96)
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @fclose(i32* %98)
  br label %35

100:                                              ; preds = %91, %82, %67, %59, %53, %35
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @closedir(i32* %101)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %30, %22, %14
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i64 @fseek(i32*, i64, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @fread(i32*, i64, i32, i32*) #1

declare dso_local i32 @LLVMFuzzerTestOneInput(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
