; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_taosDumpTable.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_taosDumpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arguments = type { i32 }

@TSDB_MAX_COLUMNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosDumpTable(i8* %0, i8* %1, %struct.arguments* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.arguments*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.arguments* %2, %struct.arguments** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @TSDB_MAX_COLUMNS, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = add i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = call i64 @calloc(i32 1, i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %60

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @taosGetTableDes(i8* %28, i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %78

34:                                               ; preds = %27
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.arguments*, %struct.arguments** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @taosDumpCreateTableClause(i32* %35, i32 %36, %struct.arguments* %37, i32* %38)
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* @TSDB_MAX_COLUMNS, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = add i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memset(i32* %40, i32 0, i32 %45)
  %47 = load i8*, i8** %6, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @taosGetTableDes(i8* %47, i32* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %78

53:                                               ; preds = %34
  %54 = load i32*, i32** %11, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.arguments*, %struct.arguments** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @taosDumpCreateMTableClause(i32* %54, i8* %55, i32 %56, %struct.arguments* %57, i32* %58)
  br label %73

60:                                               ; preds = %21, %4
  %61 = load i8*, i8** %6, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @taosGetTableDes(i8* %61, i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 -1, i32* %5, align 4
  br label %78

67:                                               ; preds = %60
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.arguments*, %struct.arguments** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @taosDumpCreateTableClause(i32* %68, i32 %69, %struct.arguments* %70, i32* %71)
  br label %73

73:                                               ; preds = %67, %53
  %74 = load i32*, i32** %9, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.arguments*, %struct.arguments** %8, align 8
  %77 = call i32 @taosDumpTableData(i32* %74, i8* %75, %struct.arguments* %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %66, %52, %33
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @taosGetTableDes(i8*, i32*) #1

declare dso_local i32 @taosDumpCreateTableClause(i32*, i32, %struct.arguments*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @taosDumpCreateMTableClause(i32*, i8*, i32, %struct.arguments*, i32*) #1

declare dso_local i32 @taosDumpTableData(i32*, i8*, %struct.arguments*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
