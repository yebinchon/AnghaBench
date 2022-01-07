; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_vmprintf.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_vmprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SQLITE_PRINT_BUF_SIZE = common dso_local global i32 0, align 4
@SQLITE_MAX_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3_vmprintf(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @SQLITE_PRINT_BUF_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = call i64 (...) @sqlite3_initialize()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %28

18:                                               ; preds = %2
  %19 = trunc i64 %12 to i32
  %20 = load i32, i32* @SQLITE_MAX_LENGTH, align 4
  %21 = call i32 @sqlite3StrAccumInit(%struct.TYPE_5__* %9, i8* %14, i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 2, i32* %22, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @sqlite3VXPrintf(%struct.TYPE_5__* %9, i32 0, i8* %23, i32 %24)
  %26 = call i8* @sqlite3StrAccumFinish(%struct.TYPE_5__* %9)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %28

28:                                               ; preds = %18, %17
  %29 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %29)
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sqlite3_initialize(...) #2

declare dso_local i32 @sqlite3StrAccumInit(%struct.TYPE_5__*, i8*, i32, i32) #2

declare dso_local i32 @sqlite3VXPrintf(%struct.TYPE_5__*, i32, i8*, i32) #2

declare dso_local i8* @sqlite3StrAccumFinish(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
