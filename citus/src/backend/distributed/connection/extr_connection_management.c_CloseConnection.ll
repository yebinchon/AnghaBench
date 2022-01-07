; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_management.c_CloseConnection.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_management.c_CloseConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@MAX_NODE_LENGTH = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@ConnectionHash = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"closing untracked connection\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CloseConnection(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @PQfinish(i32* %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 5
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MAX_NODE_LENGTH, align 4
  %17 = call i32 @strlcpy(i32 %12, i32 %15, i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NAMEDATALEN, align 4
  %28 = call i32 @strlcpy(i32 %23, i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NAMEDATALEN, align 4
  %35 = call i32 @strlcpy(i32 %30, i32 %33, i32 %34)
  %36 = load i32, i32* @ConnectionHash, align 4
  %37 = load i32, i32* @HASH_FIND, align 4
  %38 = call i32 @hash_search(i32 %36, %struct.TYPE_9__* %3, i32 %37, i32* %4)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = call i32 @dlist_delete(i32* %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = call i32 @CloseRemoteTransaction(%struct.TYPE_8__* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = call i32 @CloseShardPlacementAssociation(%struct.TYPE_8__* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = call i32 @pfree(%struct.TYPE_8__* %49)
  br label %55

51:                                               ; preds = %1
  %52 = load i32, i32* @ERROR, align 4
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %54 = call i32 @ereport(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %41
  ret void
}

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @hash_search(i32, %struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @dlist_delete(i32*) #1

declare dso_local i32 @CloseRemoteTransaction(%struct.TYPE_8__*) #1

declare dso_local i32 @CloseShardPlacementAssociation(%struct.TYPE_8__*) #1

declare dso_local i32 @pfree(%struct.TYPE_8__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
