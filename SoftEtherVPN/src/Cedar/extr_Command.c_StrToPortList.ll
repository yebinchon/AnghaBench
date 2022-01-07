; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_StrToPortList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_StrToPortList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8** }

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@MAX_PUBLIC_PORT_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @StrToPortList(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %93

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.TYPE_4__* @ParseToken(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32* null, i32** %2, align 8
  br label %93

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = call i32 @FreeToken(%struct.TYPE_4__* %24)
  store i32* null, i32** %2, align 8
  br label %93

26:                                               ; preds = %18
  %27 = call i32* @NewListFast(i32* null)
  store i32* %27, i32** %4, align 8
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %78, %26
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @IsNum(i8* %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @ReleaseList(i32* %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = call i32 @FreeToken(%struct.TYPE_4__* %47)
  store i32* null, i32** %2, align 8
  br label %93

49:                                               ; preds = %34
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @ToInt(i8* %50)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %8, align 8
  %56 = icmp uge i64 %55, 65536
  br i1 %56, label %57, label %62

57:                                               ; preds = %54, %49
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @ReleaseList(i32* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = call i32 @FreeToken(%struct.TYPE_4__* %60)
  store i32* null, i32** %2, align 8
  br label %93

62:                                               ; preds = %54
  %63 = load i32*, i32** %4, align 8
  %64 = load i64, i64* %8, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call i64 @IsInList(i32* %63, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @ReleaseList(i32* %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = call i32 @FreeToken(%struct.TYPE_4__* %71)
  store i32* null, i32** %2, align 8
  br label %93

73:                                               ; preds = %62
  %74 = load i32*, i32** %4, align 8
  %75 = load i64, i64* %8, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @Add(i32* %74, i8* %76)
  br label %78

78:                                               ; preds = %73
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %6, align 8
  br label %28

81:                                               ; preds = %28
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = call i32 @FreeToken(%struct.TYPE_4__* %82)
  %84 = load i32*, i32** %4, align 8
  %85 = call i64 @LIST_NUM(i32* %84)
  %86 = load i64, i64* @MAX_PUBLIC_PORT_NUM, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @ReleaseList(i32* %89)
  store i32* null, i32** %2, align 8
  br label %93

91:                                               ; preds = %81
  %92 = load i32*, i32** %4, align 8
  store i32* %92, i32** %2, align 8
  br label %93

93:                                               ; preds = %91, %88, %68, %57, %44, %23, %17, %11
  %94 = load i32*, i32** %2, align 8
  ret i32* %94
}

declare dso_local %struct.TYPE_4__* @ParseToken(i8*, i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_4__*) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @IsNum(i8*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i64 @ToInt(i8*) #1

declare dso_local i64 @IsInList(i32*, i8*) #1

declare dso_local i32 @Add(i32*, i8*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
