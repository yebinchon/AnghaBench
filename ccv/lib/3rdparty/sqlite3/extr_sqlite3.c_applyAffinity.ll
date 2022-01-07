; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_applyAffinity.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_applyAffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SQLITE_AFF_NUMERIC = common dso_local global i8 0, align 1
@SQLITE_AFF_INTEGER = common dso_local global i8 0, align 1
@SQLITE_AFF_REAL = common dso_local global i8 0, align 1
@MEM_Int = common dso_local global i32 0, align 4
@MEM_Real = common dso_local global i32 0, align 4
@MEM_Str = common dso_local global i32 0, align 4
@SQLITE_AFF_TEXT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8, i32)* @applyAffinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applyAffinity(%struct.TYPE_6__* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %7 = load i8, i8* %5, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @SQLITE_AFF_NUMERIC, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sge i32 %8, %10
  br i1 %11, label %12, label %63

12:                                               ; preds = %3
  %13 = load i8, i8* %5, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @SQLITE_AFF_INTEGER, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %12
  %19 = load i8, i8* %5, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* @SQLITE_AFF_REAL, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i8, i8* %5, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @SQLITE_AFF_NUMERIC, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br label %30

30:                                               ; preds = %24, %18, %12
  %31 = phi i1 [ true, %18 ], [ true, %12 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MEM_Int, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %30
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MEM_Real, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MEM_Str, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = call i32 @applyNumericAffinity(%struct.TYPE_6__* %55, i32 1)
  br label %57

57:                                               ; preds = %54, %47
  br label %61

58:                                               ; preds = %40
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = call i32 @sqlite3VdbeIntegerAffinity(%struct.TYPE_6__* %59)
  br label %61

61:                                               ; preds = %58, %57
  br label %62

62:                                               ; preds = %61, %30
  br label %100

63:                                               ; preds = %3
  %64 = load i8, i8* %5, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* @SQLITE_AFF_TEXT, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MEM_Str, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 0, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %69
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MEM_Real, align 4
  %81 = load i32, i32* @MEM_Int, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @sqlite3VdbeMemStringify(%struct.TYPE_6__* %86, i32 %87, i32 1)
  br label %89

89:                                               ; preds = %85, %76
  br label %90

90:                                               ; preds = %89, %69
  %91 = load i32, i32* @MEM_Real, align 4
  %92 = load i32, i32* @MEM_Int, align 4
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %90, %63
  br label %100

100:                                              ; preds = %99, %62
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @applyNumericAffinity(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sqlite3VdbeIntegerAffinity(%struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3VdbeMemStringify(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
