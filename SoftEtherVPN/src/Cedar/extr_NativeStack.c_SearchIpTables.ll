; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_SearchIpTables.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_SearchIpTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @SearchIpTables(%struct.TYPE_6__* %0, i8* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  %14 = alloca [64 x i8], align 16
  %15 = alloca [64 x i8], align 16
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = icmp eq %struct.TYPE_6__* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %11, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26, %23, %20, %5
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %101

33:                                               ; preds = %29
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @IPToStr(i8* %34, i32 64, i32* %35)
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @IPToStr(i8* %37, i32 64, i32* %38)
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @ToStr(i8* %40, i64 %41)
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @Format(i8* %43, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %44)
  store i64 0, i64* %16, align 8
  br label %46

46:                                               ; preds = %97, %33
  %47 = load i64, i64* %16, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @LIST_NUM(i32 %50)
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %100

53:                                               ; preds = %46
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %16, align 8
  %58 = call %struct.TYPE_7__* @LIST_DATA(i32 %56, i64 %57)
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %17, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @StrCmpi(i32 %61, i8* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %53
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %70 = call i64 @InStr(i32 %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %65
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %77 = call i64 @InStr(i32 %75, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %72
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %84 = call i64 @InStr(i32 %82, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %91 = call i64 @InStr(i32 %89, i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86, %79
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %6, align 8
  br label %101

95:                                               ; preds = %86, %72, %65
  br label %96

96:                                               ; preds = %95, %53
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %16, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %16, align 8
  br label %46

100:                                              ; preds = %46
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %101

101:                                              ; preds = %100, %93, %32
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %102
}

declare dso_local i32 @IPToStr(i8*, i32, i32*) #1

declare dso_local i32 @ToStr(i8*, i64) #1

declare dso_local i32 @Format(i8*, i32, i8*, i64) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_7__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i64 @InStr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
