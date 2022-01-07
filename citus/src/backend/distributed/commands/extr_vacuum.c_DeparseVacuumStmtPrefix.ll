; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_vacuum.c_DeparseVacuumStmtPrefix.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_vacuum.c_DeparseVacuumStmtPrefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i32, i64, i64 }

@VACOPT_VACUUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"VACUUM \00", align 1
@VACOPT_ANALYZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ANALYZE \00", align 1
@VACOPT_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"VERBOSE \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ANALYZE,\00", align 1
@VACOPT_DISABLE_PAGE_SKIPPING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"DISABLE_PAGE_SKIPPING,\00", align 1
@VACOPT_FREEZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"FREEZE,\00", align 1
@VACOPT_FULL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"FULL,\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"VERBOSE,\00", align 1
@VACOPT_SKIP_LOCKED = common dso_local global i32 0, align 4
@VACOPT_TERNARY_DEFAULT = common dso_local global i64 0, align 8
@VACOPT_TERNARY_ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_9__*)* @DeparseVacuumStmtPrefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @DeparseVacuumStmtPrefix(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = call %struct.TYPE_8__* (...) @makeStringInfo()
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @VACOPT_VACUUM, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = call i32 @appendStringInfoString(%struct.TYPE_8__* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @VACOPT_VACUUM, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @VACOPT_ANALYZE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = call i32 @appendStringInfoString(%struct.TYPE_8__* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @VACOPT_ANALYZE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @VACOPT_VERBOSE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %19
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = call i32 @appendStringInfoString(%struct.TYPE_8__* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @VACOPT_VERBOSE, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %19
  br label %44

44:                                               ; preds = %43, %12
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %2, align 8
  br label %104

49:                                               ; preds = %44
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = call i32 @appendStringInfoChar(%struct.TYPE_8__* %50, i8 signext 40)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @VACOPT_ANALYZE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = call i32 @appendStringInfoString(%struct.TYPE_8__* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @VACOPT_DISABLE_PAGE_SKIPPING, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = call i32 @appendStringInfoString(%struct.TYPE_8__* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @VACOPT_FREEZE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = call i32 @appendStringInfoString(%struct.TYPE_8__* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @VACOPT_FULL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = call i32 @appendStringInfoString(%struct.TYPE_8__* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @VACOPT_VERBOSE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = call i32 @appendStringInfoString(%struct.TYPE_8__* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %94, i64 %99
  store i8 41, i8* %100, align 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = call i32 @appendStringInfoChar(%struct.TYPE_8__* %101, i8 signext 32)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %103, %struct.TYPE_8__** %2, align 8
  br label %104

104:                                              ; preds = %91, %47
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %105
}

declare dso_local %struct.TYPE_8__* @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_8__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
