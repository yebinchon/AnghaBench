; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_libfat.c_fatInit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_libfat.c_fatInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32* (...)* }
%struct.TYPE_3__ = type { i64, i32, i8** }

@_FAT_disc_interfaces = common dso_local global %struct.TYPE_4__* null, align 8
@DEFAULT_SECTORS_PAGE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c":/\00", align 1
@ARGV_MAGIC = common dso_local global i64 0, align 8
@__system_argv = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fatInit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %59, %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_FAT_disc_interfaces, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_FAT_disc_interfaces, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32* (...)*, i32* (...)** %24, align 8
  %26 = icmp ne i32* (...)* %25, null
  br label %27

27:                                               ; preds = %19, %11
  %28 = phi i1 [ false, %11 ], [ %26, %19 ]
  br i1 %28, label %29, label %62

29:                                               ; preds = %27
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_FAT_disc_interfaces, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32* (...)*, i32* (...)** %34, align 8
  %36 = call i32* (...) %35()
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %59

40:                                               ; preds = %29
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_FAT_disc_interfaces, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @DEFAULT_SECTORS_PAGE, align 4
  %50 = call i64 @fatMount(i8* %46, i32* %47, i32 0, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %40
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %52
  br label %58

58:                                               ; preds = %57, %40
  br label %59

59:                                               ; preds = %58, %39
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %11

62:                                               ; preds = %27
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %85

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %66
  %70 = load i32, i32* @PATH_MAX, align 4
  %71 = zext i32 %70 to i64
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %9, align 8
  %73 = alloca i8, i64 %71, align 16
  store i64 %71, i64* %10, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_FAT_disc_interfaces, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strcpy(i8* %73, i8* %79)
  %81 = call i32 @strcat(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %82 = call i32 @chdir(i8* %73)
  %83 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %83)
  br label %84

84:                                               ; preds = %69, %66
  store i32 1, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %65
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @fatMount(i8*, i32*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @chdir(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
