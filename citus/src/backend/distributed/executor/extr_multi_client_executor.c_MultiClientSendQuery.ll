; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_client_executor.c_MultiClientSendQuery.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_client_executor.c_MultiClientSendQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@INVALID_CONNECTION_ID = common dso_local global i64 0, align 8
@ClientConnectionArray = common dso_local global %struct.TYPE_4__** null, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not send remote query \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Client error: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MultiClientSendQuery(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @INVALID_CONNECTION_ID, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ClientConnectionArray, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %14, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %5, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @SendRemoteCommand(%struct.TYPE_4__* %22, i8* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PQerrorMessage(i32 %30)
  %32 = call i8* @pchomp(i32 %31)
  store i8* %32, i8** %8, align 8
  %33 = load i32, i32* @WARNING, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @ApplyLogRedaction(i8* %34)
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @ApplyLogRedaction(i8* %37)
  %39 = call i32 @errdetail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = call i32 @ereport(i32 %33, i32 %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %27, %2
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SendRemoteCommand(%struct.TYPE_4__*, i8*) #1

declare dso_local i8* @pchomp(i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @ApplyLogRedaction(i8*) #1

declare dso_local i32 @errdetail(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
