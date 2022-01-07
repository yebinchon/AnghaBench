; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3AddIf.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3AddIf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [12 x i8] c"i_max_l3_if\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @L3AddIf(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = icmp eq %struct.TYPE_9__* %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @IsSafeStr(i8* %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21, %17, %14, %4
  store i32 0, i32* %5, align 4
  br label %84

28:                                               ; preds = %24
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @Lock(i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @LIST_NUM(i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @GetServerCapsInt(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %43 = icmp sge i64 %36, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %78

45:                                               ; preds = %28
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %45
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32* @L3SearchIf(%struct.TYPE_9__* %51, i8* %52)
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %76

55:                                               ; preds = %50
  %56 = call %struct.TYPE_10__* @ZeroMalloc(i32 24)
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %10, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @StrCpy(i32 %62, i32 4, i8* %63)
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %75 = call i32 @Insert(i32 %73, %struct.TYPE_10__* %74)
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %55, %50
  br label %77

77:                                               ; preds = %76, %45
  br label %78

78:                                               ; preds = %77, %44
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @Unlock(i32 %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %78, %27
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @IsSafeStr(i8*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i64 @GetServerCapsInt(i32, i8*) #1

declare dso_local i32* @L3SearchIf(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.TYPE_10__* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @Insert(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
