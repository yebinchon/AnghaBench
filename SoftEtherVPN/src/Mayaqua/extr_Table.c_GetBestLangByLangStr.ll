; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_GetBestLangByLangStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_GetBestLangByLangStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"en\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @GetBestLangByLangStr(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %102

17:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %52, %17
  %19 = load i64, i64* %6, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @LIST_NUM(i32* %20)
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i8* @LIST_DATA(i32* %24, i64 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %28

28:                                               ; preds = %48, %23
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @LIST_NUM(i32* %32)
  %34 = icmp slt i64 %29, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i8* @LIST_DATA(i32* %38, i64 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @StrCmpi(i8* %41, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %3, align 8
  br label %102

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %9, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %9, align 8
  br label %28

51:                                               ; preds = %28
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %18

55:                                               ; preds = %18
  store i64 0, i64* %6, align 8
  br label %56

56:                                               ; preds = %95, %55
  %57 = load i64, i64* %6, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i64 @LIST_NUM(i32* %58)
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %61, label %98

61:                                               ; preds = %56
  %62 = load i32*, i32** %4, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i8* @LIST_DATA(i32* %62, i64 %63)
  %65 = bitcast i8* %64 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %11, align 8
  store i64 0, i64* %12, align 8
  br label %66

66:                                               ; preds = %91, %61
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @LIST_NUM(i32* %70)
  %72 = icmp slt i64 %67, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %66
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i8* @LIST_DATA(i32* %76, i64 %77)
  store i8* %78, i8** %13, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i64 @StartWith(i8* %79, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %73
  %84 = load i8*, i8** %13, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = call i64 @StartWith(i8* %84, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83, %73
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %3, align 8
  br label %102

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %12, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %12, align 8
  br label %66

94:                                               ; preds = %66
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %6, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %6, align 8
  br label %56

98:                                               ; preds = %56
  %99 = load i32*, i32** %4, align 8
  %100 = call %struct.TYPE_4__* @GetBestLangByName(i32* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %100, %struct.TYPE_4__** %7, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %101, %struct.TYPE_4__** %3, align 8
  br label %102

102:                                              ; preds = %98, %88, %45, %16
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %103
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i8* @LIST_DATA(i32*, i64) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local i64 @StartWith(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @GetBestLangByName(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
