; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_operand.c_rc_parse_operand_trigger.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_operand.c_rc_parse_operand_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i32 }

@RC_INVALID_CONST_OPERAND = common dso_local global i32 0, align 4
@RC_OPERAND_CONST = common dso_local global i8* null, align 8
@RC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8**, i32*)* @rc_parse_operand_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_parse_operand_trigger(%struct.TYPE_7__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %53 [
    i32 104, label %17
    i32 72, label %17
    i32 48, label %40
    i32 43, label %63
    i32 45, label %63
    i32 49, label %63
    i32 50, label %63
    i32 51, label %63
    i32 52, label %63
    i32 53, label %63
    i32 54, label %63
    i32 55, label %63
    i32 56, label %63
    i32 57, label %63
    i32 64, label %85
  ]

17:                                               ; preds = %3, %3
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %8, align 8
  %20 = call i64 @strtoul(i8* %19, i8** %9, i32 16)
  store i64 %20, i64* %11, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @RC_INVALID_CONST_OPERAND, align 4
  store i32 %25, i32* %4, align 4
  br label %98

26:                                               ; preds = %17
  %27 = load i64, i64* %11, align 8
  %28 = icmp ugt i64 %27, 4294967295
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 4294967295, i64* %11, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i8*, i8** @RC_OPERAND_CONST, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* %11, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i8*, i8** %9, align 8
  store i8* %39, i8** %8, align 8
  br label %94

40:                                               ; preds = %3
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 120
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 88
  br i1 %51, label %52, label %62

52:                                               ; preds = %46, %40
  br label %53

53:                                               ; preds = %3, %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @rc_parse_operand_memory(%struct.TYPE_7__* %54, i8** %8, i32* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %98

61:                                               ; preds = %53
  br label %94

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %62
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @strtoul(i8* %64, i8** %9, i32 10)
  store i64 %65, i64* %11, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = icmp eq i8* %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @RC_INVALID_CONST_OPERAND, align 4
  store i32 %70, i32* %4, align 4
  br label %98

71:                                               ; preds = %63
  %72 = load i64, i64* %11, align 8
  %73 = icmp ugt i64 %72, 4294967295
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i64 4294967295, i64* %11, align 8
  br label %75

75:                                               ; preds = %74, %71
  %76 = load i8*, i8** @RC_OPERAND_CONST, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i64, i64* %11, align 8
  %80 = trunc i64 %79 to i32
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load i8*, i8** %9, align 8
  store i8* %84, i8** %8, align 8
  br label %94

85:                                               ; preds = %3
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @rc_parse_operand_lua(%struct.TYPE_7__* %86, i8** %8, i32* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %4, align 4
  br label %98

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %75, %61, %30
  %95 = load i8*, i8** %8, align 8
  %96 = load i8**, i8*** %6, align 8
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* @RC_OK, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %91, %69, %59, %24
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @rc_parse_operand_memory(%struct.TYPE_7__*, i8**, i32*) #1

declare dso_local i32 @rc_parse_operand_lua(%struct.TYPE_7__*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
