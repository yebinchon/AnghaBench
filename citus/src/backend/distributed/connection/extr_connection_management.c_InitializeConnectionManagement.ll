; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_management.c_InitializeConnectionManagement.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_management.c_InitializeConnectionManagement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@TopMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Connection Context\00", align 1
@ALLOCSET_DEFAULT_MINSIZE = common dso_local global i32 0, align 4
@ALLOCSET_DEFAULT_INITSIZE = common dso_local global i32 0, align 4
@ALLOCSET_DEFAULT_MAXSIZE = common dso_local global i32 0, align 4
@ConnectionContext = common dso_local global i32 0, align 4
@ConnectionHashHash = common dso_local global i32 0, align 4
@ConnectionHashCompare = common dso_local global i32 0, align 4
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_FUNCTION = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@HASH_COMPARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"citus connection cache (host,port,user,database)\00", align 1
@ConnectionHash = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"citus connparams cache (host,port,user,database)\00", align 1
@ConnParamsHash = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitializeConnectionManagement() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @TopMemoryContext, align 4
  %5 = load i32, i32* @ALLOCSET_DEFAULT_MINSIZE, align 4
  %6 = load i32, i32* @ALLOCSET_DEFAULT_INITSIZE, align 4
  %7 = load i32, i32* @ALLOCSET_DEFAULT_MAXSIZE, align 4
  %8 = call i32 @AllocSetContextCreateExtended(i32 %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i32 %7)
  store i32 %8, i32* @ConnectionContext, align 4
  %9 = call i32 @memset(%struct.TYPE_6__* %1, i32 0, i32 20)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 4, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  store i32 4, i32* %11, align 4
  %12 = load i32, i32* @ConnectionHashHash, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @ConnectionHashCompare, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @ConnectionContext, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @HASH_ELEM, align 4
  %19 = load i32, i32* @HASH_FUNCTION, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @HASH_CONTEXT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @HASH_COMPARE, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = call i32 @memcpy(%struct.TYPE_6__* %2, %struct.TYPE_6__* %1, i32 20)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i32 4, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i8* @hash_create(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 64, %struct.TYPE_6__* %1, i32 %27)
  store i8* %28, i8** @ConnectionHash, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i8* @hash_create(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 64, %struct.TYPE_6__* %2, i32 %29)
  store i8* %30, i8** @ConnParamsHash, align 8
  ret void
}

declare dso_local i32 @AllocSetContextCreateExtended(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i8* @hash_create(i8*, i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
