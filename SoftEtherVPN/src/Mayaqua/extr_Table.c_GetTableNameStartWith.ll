; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_GetTableNameStartWith.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_GetTableNameStartWith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8** }
%struct.TYPE_6__ = type { i8* }

@MAX_SIZE = common dso_local global i32 0, align 4
@TableList = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @GetTableNameStartWith(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @MAX_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call %struct.TYPE_5__* (...) @NullToken()
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %2, align 8
  store i32 1, i32* %10, align 4
  br label %102

21:                                               ; preds = %1
  %22 = trunc i64 %14 to i32
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @StrCpy(i8* %16, i32 %22, i8* %23)
  %25 = call i32 @StrUpper(i8* %16)
  %26 = call i64 @StrLen(i8* %16)
  store i64 %26, i64* %5, align 8
  %27 = call i32* @NewListFast(i32* null)
  store i32* %27, i32** %6, align 8
  store i64 0, i64* %4, align 8
  br label %28

28:                                               ; preds = %61, %21
  %29 = load i64, i64* %4, align 8
  %30 = load i32*, i32** @TableList, align 8
  %31 = call i64 @LIST_NUM(i32* %30)
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %28
  %34 = load i32*, i32** @TableList, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i8* @LIST_DATA(i32* %34, i64 %35)
  %37 = bitcast i8* %36 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %11, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @StrLen(i8* %40)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %33
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @Cmp(i8* %48, i8* %16, i64 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @CopyStr(i8* %56)
  %58 = call i32 @Insert(i32* %53, i32 %57)
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59, %33
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %4, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %4, align 8
  br label %28

64:                                               ; preds = %28
  %65 = call i8* @ZeroMalloc(i32 16)
  %66 = bitcast i8* %65 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %7, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 @LIST_NUM(i32* %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = mul i64 8, %73
  %75 = trunc i64 %74 to i32
  %76 = call i8* @ZeroMalloc(i32 %75)
  %77 = bitcast i8* %76 to i8**
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i8** %77, i8*** %79, align 8
  store i64 0, i64* %4, align 8
  br label %80

80:                                               ; preds = %95, %64
  %81 = load i64, i64* %4, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load i32*, i32** %6, align 8
  %88 = load i64, i64* %4, align 8
  %89 = call i8* @LIST_DATA(i32* %87, i64 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  %93 = load i64, i64* %4, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  store i8* %89, i8** %94, align 8
  br label %95

95:                                               ; preds = %86
  %96 = load i64, i64* %4, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %4, align 8
  br label %80

98:                                               ; preds = %80
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @ReleaseList(i32* %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %101, %struct.TYPE_5__** %2, align 8
  store i32 1, i32* %10, align 4
  br label %102

102:                                              ; preds = %98, %19
  %103 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_5__* @NullToken(...) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @StrUpper(i8*) #2

declare dso_local i64 @StrLen(i8*) #2

declare dso_local i32* @NewListFast(i32*) #2

declare dso_local i64 @LIST_NUM(i32*) #2

declare dso_local i8* @LIST_DATA(i32*, i64) #2

declare dso_local i64 @Cmp(i8*, i8*, i64) #2

declare dso_local i32 @Insert(i32*, i32) #2

declare dso_local i32 @CopyStr(i8*) #2

declare dso_local i8* @ZeroMalloc(i32) #2

declare dso_local i32 @ReleaseList(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
