; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_Key_KeynumToString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_keys.c_Key_KeynumToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@Key_KeynumToString.tinystr = internal global [5 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [16 x i8] c"<KEY NOT FOUND>\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"<OUT OF RANGE>\00", align 1
@keynames = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Key_KeynumToString(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %82

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp sgt i32 %14, 255
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %82

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 32
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 127
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 34
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 59
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 1), align 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 0), i8** %2, align 8
  br label %82

32:                                               ; preds = %26, %23, %20, %17
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keynames, align 8
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %4, align 8
  br label %34

34:                                               ; preds = %50, %32
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %2, align 8
  br label %82

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 1
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %4, align 8
  br label %34

53:                                               ; preds = %34
  %54 = load i32, i32* %3, align 4
  %55 = ashr i32 %54, 4
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, 15
  store i32 %57, i32* %6, align 4
  store i8 48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 0), align 1
  store i8 120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 1), align 1
  %58 = load i32, i32* %5, align 4
  %59 = icmp sgt i32 %58, 9
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %61, 10
  %63 = add nsw i32 %62, 97
  br label %67

64:                                               ; preds = %53
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 48
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i32 [ %63, %60 ], [ %66, %64 ]
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 2), align 1
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %70, 9
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, 10
  %75 = add nsw i32 %74, 97
  br label %79

76:                                               ; preds = %67
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 48
  br label %79

79:                                               ; preds = %76, %72
  %80 = phi i32 [ %75, %72 ], [ %78, %76 ]
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 3), align 1
  store i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 4), align 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 0), i8** %2, align 8
  br label %82

82:                                               ; preds = %79, %45, %29, %16, %9
  %83 = load i8*, i8** %2, align 8
  ret i8* %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
