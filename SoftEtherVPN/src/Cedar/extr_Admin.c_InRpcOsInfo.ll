; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcOsInfo.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcOsInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"OsType\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"OsServicePack\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"OsSystemName\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"OsProductName\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"OsVendorName\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"OsVersion\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"KernelName\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"KernelVersion\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcOsInfo(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @MAX_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  store i32 1, i32* %7, align 4
  br label %83

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = call i32 @Zero(%struct.TYPE_4__* %19, i32 64)
  %21 = load i32*, i32** %4, align 8
  %22 = call i8* @PackGetInt(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 7
  store i8* %22, i8** %24, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i8* @PackGetInt(i32* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = trunc i64 %9 to i32
  %31 = call i64 @PackGetStr(i32* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %11, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %18
  %34 = call i8* @CopyStr(i8* %11)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %33, %18
  %38 = load i32*, i32** %4, align 8
  %39 = trunc i64 %9 to i32
  %40 = call i64 @PackGetStr(i32* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %11, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = call i8* @CopyStr(i8* %11)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32*, i32** %4, align 8
  %48 = trunc i64 %9 to i32
  %49 = call i64 @PackGetStr(i32* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %11, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = call i8* @CopyStr(i8* %11)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32*, i32** %4, align 8
  %57 = trunc i64 %9 to i32
  %58 = call i64 @PackGetStr(i32* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %11, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = call i8* @CopyStr(i8* %11)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32*, i32** %4, align 8
  %66 = trunc i64 %9 to i32
  %67 = call i64 @PackGetStr(i32* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %11, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = call i8* @CopyStr(i8* %11)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32*, i32** %4, align 8
  %75 = trunc i64 %9 to i32
  %76 = call i64 @PackGetStr(i32* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %11, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = call i8* @CopyStr(i8* %11)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %73
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %17
  %84 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %7, align 4
  switch i32 %85, label %87 [
    i32 0, label %86
    i32 1, label %86
  ]

86:                                               ; preds = %83, %83
  ret void

87:                                               ; preds = %83
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #2

declare dso_local i8* @PackGetInt(i32*, i8*) #2

declare dso_local i64 @PackGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i8* @CopyStr(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
