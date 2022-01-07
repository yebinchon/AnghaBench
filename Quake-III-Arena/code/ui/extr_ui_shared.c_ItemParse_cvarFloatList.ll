; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_ItemParse_cvarFloatList.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_ItemParse_cvarFloatList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i64, i32*, i32*, i32 }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"end of file inside menu item\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@MAX_MULTI_CVARS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ItemParse_cvarFloatList(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = call i32 @Item_ValidateTypeData(%struct.TYPE_9__* %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @qfalse, align 4
  store i32 %15, i32* %3, align 4
  br label %105

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %7, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @qfalse, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @trap_PC_ReadToken(i32 %26, %struct.TYPE_7__* %6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %3, align 4
  br label %105

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 123
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @qfalse, align 4
  store i32 %38, i32* %3, align 4
  br label %105

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %68, %104
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @trap_PC_ReadToken(i32 %41, %struct.TYPE_7__* %6)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @PC_SourceError(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @qfalse, align 4
  store i32 %47, i32* %3, align 4
  br label %105

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 125
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @qtrue, align 4
  store i32 %55, i32* %3, align 4
  br label %105

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 44
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 59
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %56
  br label %40

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @String_Alloc(i8* %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  store i32 %72, i32* %79, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = call i32 @PC_Float_Parse(i32 %80, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %69
  %91 = load i32, i32* @qfalse, align 4
  store i32 %91, i32* %3, align 4
  br label %105

92:                                               ; preds = %69
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MAX_MULTI_CVARS, align 8
  %101 = icmp uge i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* @qfalse, align 4
  store i32 %103, i32* %3, align 4
  br label %105

104:                                              ; preds = %92
  br label %40

105:                                              ; preds = %102, %90, %54, %44, %37, %29, %14
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @Item_ValidateTypeData(%struct.TYPE_9__*) #1

declare dso_local i32 @trap_PC_ReadToken(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @PC_SourceError(i32, i8*) #1

declare dso_local i32 @String_Alloc(i8*) #1

declare dso_local i32 @PC_Float_Parse(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
