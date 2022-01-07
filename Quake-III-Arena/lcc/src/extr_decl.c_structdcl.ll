; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_decl.c_structdcl.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_decl.c_structdcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }

@t = common dso_local global i8 0, align 1
@src = common dso_local global i32 0, align 4
@ID = common dso_local global i8 0, align 1
@token = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@structdcl.stop = internal global [3 x i8] c"\80,\00", align 1
@tsym = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid %k field declarations\0A\00", align 1
@types = common dso_local global i32 0, align 4
@level = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"missing %k tag\0A\00", align 1
@xref = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32)* @structdcl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @structdcl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call signext i8 (...) @gettok()
  store i8 %7, i8* @t, align 1
  %8 = load i32, i32* @src, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8, i8* @t, align 1
  %10 = sext i8 %9 to i32
  %11 = load i8, i8* @ID, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i8*, i8** @token, align 8
  store i8* %15, i8** %3, align 8
  %16 = call signext i8 (...) @gettok()
  store i8 %16, i8* @t, align 1
  br label %18

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i8, i8* @t, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 123
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call %struct.TYPE_10__* @newstruct(i32 %23, i8* %24)
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store i32 %26, i32* %31, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = call signext i8 (...) @gettok()
  store i8 %37, i8* @t, align 1
  %38 = load i8, i8* @t, align 1
  %39 = load i32, i32* @tsym, align 4
  %40 = call i64 @istypename(i8 signext %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %22
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = call i32 @fields(%struct.TYPE_10__* %43)
  br label %48

45:                                               ; preds = %22
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = call i32 @test(i8 signext 125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @structdcl.stop, i64 0, i64 0))
  br label %99

50:                                               ; preds = %18
  %51 = load i8*, i8** %3, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %50
  %56 = load i8*, i8** %3, align 8
  %57 = load i32, i32* @types, align 4
  %58 = call %struct.TYPE_11__* @lookup(i8* %56, i32 %57)
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %5, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %60, label %86

60:                                               ; preds = %55
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %2, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %60
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %4, align 8
  %72 = load i8, i8* @t, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 59
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @level, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* %2, align 4
  %83 = load i8*, i8** %3, align 8
  %84 = call %struct.TYPE_10__* @newstruct(i32 %82, i8* %83)
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %4, align 8
  br label %85

85:                                               ; preds = %81, %75, %68
  br label %98

86:                                               ; preds = %60, %55, %50
  %87 = load i8*, i8** %3, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %2, align 4
  %93 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %2, align 4
  %96 = load i8*, i8** %3, align 8
  %97 = call %struct.TYPE_10__* @newstruct(i32 %95, i8* %96)
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %4, align 8
  br label %98

98:                                               ; preds = %94, %85
  br label %99

99:                                               ; preds = %98, %48
  %100 = load i8*, i8** %3, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i64, i64* @xref, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @use(%struct.TYPE_12__* %111, i32 %112)
  br label %114

114:                                              ; preds = %107, %104, %99
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %115
}

declare dso_local signext i8 @gettok(...) #1

declare dso_local %struct.TYPE_10__* @newstruct(i32, i8*) #1

declare dso_local i64 @istypename(i8 signext, i32) #1

declare dso_local i32 @fields(%struct.TYPE_10__*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @test(i8 signext, i8*) #1

declare dso_local %struct.TYPE_11__* @lookup(i8*, i32) #1

declare dso_local i32 @use(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
