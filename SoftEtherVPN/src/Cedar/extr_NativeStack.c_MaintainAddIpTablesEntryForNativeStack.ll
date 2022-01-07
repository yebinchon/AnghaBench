; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_MaintainAddIpTablesEntryForNativeStack.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_MaintainAddIpTablesEntryForNativeStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"iptables -I %s %s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Run \22%s\22 failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Run \22%s\22 ok.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MaintainAddIpTablesEntryForNativeStack(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %88

19:                                               ; preds = %13
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %83, %19
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @LIST_NUM(i32 %24)
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %86

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %4, align 8
  %32 = call %struct.TYPE_6__* @LIST_DATA(i32 %30, i64 %31)
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %6, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @GetCurrentIpTableLineNumber(i32 %35, i32* %37, i32* %39, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %82

45:                                               ; preds = %27
  %46 = load i32, i32* @MAX_PATH, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %7, align 8
  %49 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %8, align 8
  %50 = trunc i64 %47 to i32
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @Format(i8* %49, i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56)
  %58 = call i32 @system(i8* %49)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @GetCurrentIpTableLineNumber(i32 %61, i32* %63, i32* %65, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %45
  %72 = call i32 @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  store i32 2, i32* %9, align 4
  br label %78

75:                                               ; preds = %45
  %76 = call i32 @Debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i32 1, i32* %5, align 4
  br label %77

77:                                               ; preds = %75
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %77, %71
  %79 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %9, align 4
  switch i32 %80, label %90 [
    i32 0, label %81
    i32 2, label %86
  ]

81:                                               ; preds = %78
  br label %82

82:                                               ; preds = %81, %27
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %4, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %4, align 8
  br label %20

86:                                               ; preds = %78, %20
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %18, %12
  %89 = load i32, i32* %2, align 4
  ret i32 %89

90:                                               ; preds = %78
  unreachable
}

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_6__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @GetCurrentIpTableLineNumber(i32, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Format(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @Debug(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
