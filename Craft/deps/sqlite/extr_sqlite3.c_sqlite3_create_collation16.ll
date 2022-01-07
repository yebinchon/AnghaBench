; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_create_collation16.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_create_collation16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_UTF16NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_create_collation16(%struct.TYPE_7__* %0, i8* %1, i32 %2, i8* %3, i32 (i8*, i32, i8*, i32, i8*)* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, i32, i8*, i32, i8*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 (i8*, i32, i8*, i32, i8*)* %4, i32 (i8*, i32, i8*, i32, i8*)** %10, align 8
  %13 = load i32, i32* @SQLITE_OK, align 4
  store i32 %13, i32* %11, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sqlite3_mutex_enter(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @SQLITE_UTF16NATIVE, align 4
  %28 = call i8* @sqlite3Utf16to8(%struct.TYPE_7__* %25, i8* %26, i32 -1, i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %5
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i32 (i8*, i32, i8*, i32, i8*)*, i32 (i8*, i32, i8*, i32, i8*)** %10, align 8
  %37 = call i32 @createCollation(%struct.TYPE_7__* %32, i8* %33, i32 %34, i8* %35, i32 (i8*, i32, i8*, i32, i8*)* %36, i32 0)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @sqlite3DbFree(%struct.TYPE_7__* %38, i8* %39)
  br label %41

41:                                               ; preds = %31, %5
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @sqlite3ApiExit(%struct.TYPE_7__* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sqlite3_mutex_leave(i32 %47)
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3Utf16to8(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @createCollation(%struct.TYPE_7__*, i8*, i32, i8*, i32 (i8*, i32, i8*, i32, i8*)*, i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
