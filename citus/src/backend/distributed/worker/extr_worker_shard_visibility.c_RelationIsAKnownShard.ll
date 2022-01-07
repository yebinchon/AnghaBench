; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_shard_visibility.c_RelationIsAKnownShard.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_shard_visibility.c_RelationIsAKnownShard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_SHARD_ID = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@RELKIND_INDEX = common dso_local global i8 0, align 1
@NAMEDATALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RelationIsAKnownShard(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 1, i32* %9, align 4
  %15 = load i64, i64* @INVALID_SHARD_ID, align 8
  store i64 %15, i64* %10, align 8
  %16 = load i32, i32* @InvalidOid, align 4
  store i32 %16, i32* %11, align 4
  store i8 0, i8* %12, align 1
  store i32* null, i32** %13, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @OidIsValid(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

21:                                               ; preds = %2
  %22 = call i32 (...) @GetLocalGroupId()
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  store i32 0, i32* %14, align 4
  %26 = call i32 @PrimaryNodeForGroup(i32 0, i32* %14)
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %96

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @AccessShareLock, align 4
  %34 = call i32* @try_relation_open(i32 %32, i32 %33)
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %96

38:                                               ; preds = %31
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* @NoLock, align 4
  %41 = call i32 @relation_close(i32* %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @RelationIsVisible(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %96

49:                                               ; preds = %45, %38
  %50 = load i32, i32* %4, align 4
  %51 = call signext i8 @get_rel_relkind(i32 %50)
  store i8 %51, i8* %12, align 1
  %52 = load i8, i8* %12, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* @RELKIND_INDEX, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @IndexGetRelation(i32 %58, i32 0)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i32, i32* %4, align 4
  %62 = call i8* @get_rel_name(i32 %61)
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @ExtractShardIdFromTableName(i8* %63, i32 %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @INVALID_SHARD_ID, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %96

70:                                               ; preds = %60
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @LookupShardRelation(i64 %71, i32 1)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @OidIsValid(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %96

77:                                               ; preds = %70
  %78 = load i32, i32* %4, align 4
  %79 = call i64 @get_rel_namespace(i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @get_rel_namespace(i32 %80)
  %82 = icmp ne i64 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %96

84:                                               ; preds = %77
  %85 = load i32, i32* %11, align 4
  %86 = call i8* @get_rel_name(i32 %85)
  store i8* %86, i8** %8, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @AppendShardIdToName(i8** %8, i64 %87)
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* @NAMEDATALEN, align 4
  %92 = call i64 @strncmp(i8* %89, i8* %90, i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %96

95:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %94, %83, %76, %69, %48, %37, %29, %20
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @GetLocalGroupId(...) #1

declare dso_local i32 @PrimaryNodeForGroup(i32, i32*) #1

declare dso_local i32* @try_relation_open(i32, i32) #1

declare dso_local i32 @relation_close(i32*, i32) #1

declare dso_local i32 @RelationIsVisible(i32) #1

declare dso_local signext i8 @get_rel_relkind(i32) #1

declare dso_local i32 @IndexGetRelation(i32, i32) #1

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i64 @ExtractShardIdFromTableName(i8*, i32) #1

declare dso_local i32 @LookupShardRelation(i64, i32) #1

declare dso_local i64 @get_rel_namespace(i32) #1

declare dso_local i32 @AppendShardIdToName(i8**, i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
