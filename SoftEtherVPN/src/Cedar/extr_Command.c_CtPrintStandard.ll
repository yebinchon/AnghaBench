; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CtPrintStandard.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CtPrintStandard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8** }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [4 x i32] [i32 45, i32 45, i32 45, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CtPrintStandard(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = icmp eq %struct.TYPE_10__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  br label %82

16:                                               ; preds = %12
  %17 = call %struct.TYPE_10__* (...) @CtNewStandard()
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %5, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %75, %16
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @LIST_NUM(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %19, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %18
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %6, align 8
  %31 = call i8* @LIST_DATA(i32 %29, i64 %30)
  %32 = bitcast i8* %31 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %8, align 8
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %59, %26
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @LIST_NUM(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %34, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %33
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i8* @LIST_DATA(i32 %44, i64 %45)
  %47 = bitcast i8* %46 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %9, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @CtInsert(%struct.TYPE_10__* %48, i8* %51, i8* %57)
  br label %59

59:                                               ; preds = %41
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  br label %33

62:                                               ; preds = %33
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @LIST_NUM(i32 %66)
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %63, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = call i32 @CtInsert(%struct.TYPE_10__* %72, i8* bitcast ([4 x i32]* @.str to i8*), i8* bitcast ([4 x i32]* @.str to i8*))
  br label %74

74:                                               ; preds = %71, %62
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %6, align 8
  br label %18

78:                                               ; preds = %18
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @CtFree(%struct.TYPE_10__* %79, i32* %80)
  br label %82

82:                                               ; preds = %78, %15
  ret void
}

declare dso_local %struct.TYPE_10__* @CtNewStandard(...) #1

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i32 @CtInsert(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i32 @CtFree(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
