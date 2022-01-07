; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_isDate.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_isDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }

@SQLITE_FLOAT = common dso_local global i32 0, align 4
@SQLITE_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**, %struct.TYPE_9__*)* @isDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isDate(i32* %0, i32 %1, i32** %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %15 = call i32 @memset(%struct.TYPE_9__* %14, i32 0, i32 16)
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = call i32 @setDateTimeToCurrent(i32* %19, %struct.TYPE_9__* %20)
  store i32 %21, i32* %5, align 4
  br label %102

22:                                               ; preds = %4
  %23 = load i32**, i32*** %8, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @sqlite3_value_type(i32* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* @SQLITE_FLOAT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @SQLITE_INTEGER, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29, %22
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = load i32**, i32*** %8, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @sqlite3_value_double(i32* %37)
  %39 = call i32 @setRawDateNumber(%struct.TYPE_9__* %34, i32 %38)
  br label %55

40:                                               ; preds = %29
  %41 = load i32**, i32*** %8, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i8* @sqlite3_value_text(i32* %43)
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i32*, i32** %6, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = call i64 @parseDateOrTime(i32* %48, i8* %49, %struct.TYPE_9__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %40
  store i32 1, i32* %5, align 4
  br label %102

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %33
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %84, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %56
  %61 = load i32**, i32*** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = call i8* @sqlite3_value_text(i32* %65)
  store i8* %66, i8** %12, align 8
  %67 = load i32**, i32*** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @sqlite3_value_bytes(i32* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %60
  %76 = load i32*, i32** %6, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %80 = call i64 @parseModifier(i32* %76, i8* %77, i32 %78, %struct.TYPE_9__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75, %60
  store i32 1, i32* %5, align 4
  br label %102

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %56

87:                                               ; preds = %56
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = call i32 @computeJD(%struct.TYPE_9__* %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %87
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @validJulianDay(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94, %87
  store i32 1, i32* %5, align 4
  br label %102

101:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %100, %82, %53, %18
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @setDateTimeToCurrent(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @setRawDateNumber(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @sqlite3_value_double(i32*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i64 @parseDateOrTime(i32*, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @parseModifier(i32*, i8*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @computeJD(%struct.TYPE_9__*) #1

declare dso_local i32 @validJulianDay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
