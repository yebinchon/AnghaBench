; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_types.c_newstruct.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_types.c_newstruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i8, %struct.TYPE_8__*, i32, i32 }

@types = common dso_local global i32 0, align 4
@level = common dso_local global i64 0, align 8
@PARAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"redefinition of `%s' previously defined at %w\0A\00", align 1
@PERM = common dso_local global i32 0, align 4
@maxlevel = common dso_local global i64 0, align 8
@src = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @newstruct(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @assert(i8* %7)
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 @genlabel(i32 1)
  %15 = call i8* @stringd(i32 %14)
  store i8* %15, i8** %5, align 8
  br label %63

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @types, align 4
  %19 = call %struct.TYPE_9__* @lookup(i8* %17, i32 %18)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %6, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %62

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @level, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PARAM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %27
  %34 = load i64, i64* @level, align 8
  %35 = load i64, i64* @PARAM, align 8
  %36 = add nsw i64 %35, 1
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %33, %21
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %3, align 8
  br label %89

55:                                               ; preds = %46, %38
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %58, i8* %60)
  br label %62

62:                                               ; preds = %55, %33, %27, %16
  br label %63

63:                                               ; preds = %62, %13
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* @level, align 8
  %66 = load i32, i32* @PERM, align 4
  %67 = call %struct.TYPE_9__* @install(i8* %64, i32* @types, i64 %65, i32 %66)
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %6, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = call %struct.TYPE_8__* @type(i32 %68, i32* null, i32 0, i32 0, %struct.TYPE_9__* %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @maxlevel, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %63
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* @maxlevel, align 8
  br label %82

82:                                               ; preds = %78, %63
  %83 = load i8, i8* @src, align 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  store i8 %83, i8* %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %3, align 8
  br label %89

89:                                               ; preds = %82, %51
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %90
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @stringd(i32) #1

declare dso_local i32 @genlabel(i32) #1

declare dso_local %struct.TYPE_9__* @lookup(i8*, i32) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local %struct.TYPE_9__* @install(i8*, i32*, i64, i32) #1

declare dso_local %struct.TYPE_8__* @type(i32, i32*, i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
