; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_import_package.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_import_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }

@package_map = common dso_local global i32 0, align 4
@flag_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Importing %s\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @import_package(i8* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @str_intern(i8* %8)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.TYPE_7__* @map_get(i32* @package_map, i8* %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %1
  %15 = call %struct.TYPE_7__* @xcalloc(i32 1, i32 16)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load i64, i64* @flag_verbose, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %5, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %6, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @copy_package_full_path(i8* %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %7, align 4
  br label %42

33:                                               ; preds = %24
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @strcpy(i32 %36, i8* %28)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = call i32 @add_package(%struct.TYPE_7__* %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = call i32 @compile_package(%struct.TYPE_7__* %40)
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %33, %32
  %43 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i32, i32* %7, align 4
  switch i32 %44, label %50 [
    i32 0, label %45
    i32 1, label %48
  ]

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %2, align 8
  br label %48

48:                                               ; preds = %46, %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %49

50:                                               ; preds = %42
  unreachable
}

declare dso_local i8* @str_intern(i8*) #1

declare dso_local %struct.TYPE_7__* @map_get(i32*, i8*) #1

declare dso_local %struct.TYPE_7__* @xcalloc(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @copy_package_full_path(i8*, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @add_package(%struct.TYPE_7__*) #1

declare dso_local i32 @compile_package(%struct.TYPE_7__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
