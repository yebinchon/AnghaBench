; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_readMasterJournal.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_readMasterJournal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@aJournalMagic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @readMasterJournal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readMasterJournal(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %15, align 1
  %16 = load i32, i32* @SQLITE_OK, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @sqlite3OsFileSize(i32* %17, i32* %10)
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %73, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %73, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @SQLITE_OK, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %26, 16
  %28 = call i32 @read32bits(i32* %25, i32 %27, i32* %9)
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %24, %28
  br i1 %29, label %73, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %73, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %36, 16
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %73, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %73, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @SQLITE_OK, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %45, 12
  %47 = call i32 @read32bits(i32* %44, i32 %46, i32* %11)
  store i32 %47, i32* %8, align 4
  %48 = icmp ne i32 %43, %47
  br i1 %48, label %73, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, 8
  %55 = call i32 (i32*, ...) @sqlite3OsRead(i32* %51, i8* %52, i32 8, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %50, %55
  br i1 %56, label %73, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %59 = load i32, i32* @aJournalMagic, align 4
  %60 = call i64 @memcmp(i8* %58, i32 %59, i32 8)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @SQLITE_OK, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %67, 16
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i32 (i32*, ...) @sqlite3OsRead(i32* %64, i8* %65, i32 %66, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = icmp ne i32 %63, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62, %57, %49, %42, %39, %34, %30, %23, %20, %3
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %102

75:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %89, %75
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %76

92:                                               ; preds = %76
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 0, i8* %100, align 1
  %101 = load i32, i32* @SQLITE_OK, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %96, %73
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @sqlite3OsFileSize(i32*, i32*) #1

declare dso_local i32 @read32bits(i32*, i32, i32*) #1

declare dso_local i32 @sqlite3OsRead(i32*, ...) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
