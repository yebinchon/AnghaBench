; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_OutRpcCapsList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_OutRpcCapsList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"CapsList\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"caps_%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"CT_%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"CapsName\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"CapsValue\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"CapsDescrption\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutRpcCapsList(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  br label %113

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @PackSetCurrentJsonGroupName(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %107, %18
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @LIST_NUM(i32 %25)
  %27 = icmp slt i64 %22, %26
  br i1 %27, label %28, label %110

28:                                               ; preds = %21
  %29 = load i32, i32* @MAX_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %6, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %7, align 8
  %33 = load i32, i32* @MAX_PATH, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %8, align 8
  %36 = load i32, i32* @MAX_PATH, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %9, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call %struct.TYPE_6__* @LIST_DATA(i32 %41, i64 %42)
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %11, align 8
  %44 = trunc i64 %30 to i32
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @Format(i8* %32, i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = trunc i64 %34 to i32
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @Format(i8* %35, i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = mul nuw i64 4, %37
  %55 = trunc i64 %54 to i32
  %56 = call i32 @Zero(i32* %38, i32 %55)
  %57 = call i32* @_UU(i8* %35)
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @UniIsEmptyStr(i32* %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %28
  %62 = mul nuw i64 4, %37
  %63 = trunc i64 %62 to i32
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @UniStrCpy(i32* %38, i32 %63, i32* %64)
  br label %73

66:                                               ; preds = %28
  %67 = mul nuw i64 4, %37
  %68 = trunc i64 %67 to i32
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @StrToUni(i32* %38, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @PackAddInt(i32* %74, i8* %32, i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @LIST_NUM(i32 %86)
  %88 = call i32 @PackAddStrEx(i32* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %82, i64 %83, i64 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %5, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @LIST_NUM(i32 %96)
  %98 = call i32 @PackAddIntEx(i32* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %92, i64 %93, i64 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @LIST_NUM(i32 %103)
  %105 = call i32 @PackAddUniStrEx(i32* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %38, i64 %100, i64 %104)
  %106 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %106)
  br label %107

107:                                              ; preds = %73
  %108 = load i64, i64* %5, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %5, align 8
  br label %21

110:                                              ; preds = %21
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @PackSetCurrentJsonGroupName(i32* %111, i8* null)
  br label %113

113:                                              ; preds = %110, %17
  ret void
}

declare dso_local i32 @PackSetCurrentJsonGroupName(i32*, i8*) #1

declare dso_local i64 @LIST_NUM(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_6__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @Format(i8*, i32, i8*, i32) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32 @UniIsEmptyStr(i32*) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #1

declare dso_local i32 @PackAddStrEx(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddIntEx(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @PackAddUniStrEx(i32*, i8*, i32*, i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
