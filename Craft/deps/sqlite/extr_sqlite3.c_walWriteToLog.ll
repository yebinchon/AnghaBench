; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_walWriteToLog.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_walWriteToLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@SQLITE_SYNC_NORMAL = common dso_local global i32 0, align 4
@SQLITE_SYNC_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32, i64)* @walWriteToLog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walWriteToLog(%struct.TYPE_3__* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %79

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %17
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = sub nsw i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @sqlite3OsWrite(i32 %35, i8* %36, i32 %37, i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %88

44:                                               ; preds = %26
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %7, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SQLITE_SYNC_NORMAL, align 4
  %60 = load i32, i32* @SQLITE_SYNC_FULL, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @sqlite3OsSync(i32 %66, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %44
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73, %44
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %88

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %17, %4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @sqlite3OsWrite(i32 %82, i8* %83, i32 %84, i64 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %79, %76, %42
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @sqlite3OsWrite(i32, i8*, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3OsSync(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
