; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_CreateTypeDDLCommandsIdempotent.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_CreateTypeDDLCommandsIdempotent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@NIL = common dso_local global i32* null, align 8
@TypeRelationId = common dso_local global i64 0, align 8
@ALTER_TYPE_OWNER_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CreateTypeDDLCommandsIdempotent(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %9 = load i32*, i32** @NIL, align 8
  store i32* %9, i32** %4, align 8
  store i8* null, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  store i8* null, i8** %8, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TypeRelationId, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @type_is_array(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32*, i32** @NIL, align 8
  store i32* %24, i32** %2, align 8
  br label %52

25:                                               ; preds = %1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = call i32* @CreateTypeStmtByObjectAddress(%struct.TYPE_9__* %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i8* @DeparseTreeNode(i32* %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @WrapCreateOrReplace(i8* %30)
  store i8* %31, i8** %5, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32* @lappend(i32* %32, i8* %33)
  store i32* %34, i32** %4, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @GetTypeOwner(i32 %37)
  %39 = call i8* @GetUserNameFromId(i32 %38, i32 0)
  store i8* %39, i8** %8, align 8
  %40 = call i32 @initStringInfo(%struct.TYPE_8__* %7)
  %41 = load i32, i32* @ALTER_TYPE_OWNER_COMMAND, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = call i32 @getObjectIdentity(%struct.TYPE_9__* %42)
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @quote_identifier(i8* %44)
  %46 = call i32 @appendStringInfo(%struct.TYPE_8__* %7, i32 %41, i32 %43, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32* @lappend(i32* %47, i8* %49)
  store i32* %50, i32** %4, align 8
  %51 = load i32*, i32** %4, align 8
  store i32* %51, i32** %2, align 8
  br label %52

52:                                               ; preds = %25, %23
  %53 = load i32*, i32** %2, align 8
  ret i32* %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i64 @type_is_array(i32) #2

declare dso_local i32* @CreateTypeStmtByObjectAddress(%struct.TYPE_9__*) #2

declare dso_local i8* @DeparseTreeNode(i32*) #2

declare dso_local i8* @WrapCreateOrReplace(i8*) #2

declare dso_local i32* @lappend(i32*, i8*) #2

declare dso_local i8* @GetUserNameFromId(i32, i32) #2

declare dso_local i32 @GetTypeOwner(i32) #2

declare dso_local i32 @initStringInfo(%struct.TYPE_8__*) #2

declare dso_local i32 @appendStringInfo(%struct.TYPE_8__*, i32, i32, i32) #2

declare dso_local i32 @getObjectIdentity(%struct.TYPE_9__*) #2

declare dso_local i32 @quote_identifier(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
