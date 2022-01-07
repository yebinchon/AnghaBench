; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_ColocationIdForNewTable.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_ColocationIdForNewTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@INVALID_COLOCATION_ID = common dso_local global i64 0, align 8
@DISTRIBUTE_BY_APPEND = common dso_local global i8 0, align 1
@DISTRIBUTE_BY_RANGE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@NAMEDATALEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot distribute relation\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"Currently, colocate_with option is only supported for hash distributed tables.\00", align 1
@DISTRIBUTE_BY_NONE = common dso_local global i8 0, align 1
@ExclusiveLock = common dso_local global i32 0, align 4
@ShardCount = common dso_local global i32 0, align 4
@ShardReplicationFactor = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_3__*, i8, i8, i8*, i32)* @ColocationIdForNewTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ColocationIdForNewTable(i32 %0, %struct.TYPE_3__* %1, i8 signext %2, i8 signext %3, i8* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i8 %2, i8* %10, align 1
  store i8 %3, i8* %11, align 1
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i64, i64* @INVALID_COLOCATION_ID, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i64, i64* %14, align 8
  store i64 %24, i64* %7, align 8
  br label %120

25:                                               ; preds = %6
  %26 = load i8, i8* %10, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @DISTRIBUTE_BY_APPEND, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load i8, i8* %10, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @DISTRIBUTE_BY_RANGE, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31, %25
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* @NAMEDATALEN, align 4
  %40 = call i64 @pg_strncasecmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @errdetail(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i64, i64* %14, align 8
  store i64 %50, i64* %7, align 8
  br label %120

51:                                               ; preds = %31
  %52 = load i8, i8* %10, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i64 (...) @CreateReferenceTableColocationId()
  store i64 %58, i64* %7, align 8
  br label %120

59:                                               ; preds = %51
  %60 = call i32 (...) @DistColocationRelationId()
  %61 = load i32, i32* @ExclusiveLock, align 4
  %62 = call i32 @heap_open(i32 %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %66 = load i8*, i8** %12, align 8
  %67 = load i32, i32* @NAMEDATALEN, align 4
  %68 = call i64 @pg_strncasecmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %59
  %71 = load i32, i32* @ShardCount, align 4
  %72 = load i32, i32* @ShardReplicationFactor, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i64 @ColocationId(i32 %71, i32 %72, i32 %73)
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* @INVALID_COLOCATION_ID, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load i32, i32* @ShardCount, align 4
  %80 = load i32, i32* @ShardReplicationFactor, align 4
  %81 = load i32, i32* %16, align 4
  %82 = call i64 @CreateColocationGroup(i32 %79, i32 %80, i32 %81)
  store i64 %82, i64* %14, align 8
  store i32 1, i32* %17, align 4
  br label %83

83:                                               ; preds = %78, %70
  br label %104

84:                                               ; preds = %59
  %85 = load i8*, i8** %12, align 8
  %86 = load i32, i32* @NAMEDATALEN, align 4
  %87 = call i64 @pg_strncasecmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i64 (...) @GetNextColocationId()
  store i64 %90, i64* %14, align 8
  store i32 1, i32* %17, align 4
  br label %103

91:                                               ; preds = %84
  %92 = load i8*, i8** %12, align 8
  %93 = call i32* @cstring_to_text(i8* %92)
  store i32* %93, i32** %18, align 8
  %94 = load i32*, i32** %18, align 8
  %95 = call i32 @ResolveRelationId(i32* %94, i32 0)
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i8, i8* %11, align 1
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @EnsureTableCanBeColocatedWith(i32 %96, i8 signext %97, i32 %98, i32 %99)
  %101 = load i32, i32* %19, align 4
  %102 = call i64 @TableColocationId(i32 %101)
  store i64 %102, i64* %14, align 8
  br label %103

103:                                              ; preds = %91, %89
  br label %104

104:                                              ; preds = %103, %83
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* @NoLock, align 4
  %110 = call i32 @heap_close(i32 %108, i32 %109)
  br label %115

111:                                              ; preds = %104
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @ExclusiveLock, align 4
  %114 = call i32 @heap_close(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %107
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %14, align 8
  store i64 %119, i64* %7, align 8
  br label %120

120:                                              ; preds = %118, %57, %49, %23
  %121 = load i64, i64* %7, align 8
  ret i64 %121
}

declare dso_local i64 @pg_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i64 @CreateReferenceTableColocationId(...) #1

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @DistColocationRelationId(...) #1

declare dso_local i64 @ColocationId(i32, i32, i32) #1

declare dso_local i64 @CreateColocationGroup(i32, i32, i32) #1

declare dso_local i64 @GetNextColocationId(...) #1

declare dso_local i32* @cstring_to_text(i8*) #1

declare dso_local i32 @ResolveRelationId(i32*, i32) #1

declare dso_local i32 @EnsureTableCanBeColocatedWith(i32, i8 signext, i32, i32) #1

declare dso_local i64 @TableColocationId(i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
