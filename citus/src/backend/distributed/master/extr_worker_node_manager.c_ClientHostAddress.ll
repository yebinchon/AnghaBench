; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_worker_node_manager.c_ClientHostAddress.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_worker_node_manager.c_ClientHostAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i8* }

@MyProcPort = common dso_local global %struct.TYPE_11__* null, align 8
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NAMEREQD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cannot find tcp/ip connection to client\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid address family in connection\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"could not resolve client host: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*)* @ClientHostAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ClientHostAddress(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MyProcPort, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %12 = load i32, i32* @NI_MAXHOST, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @NI_NAMEREQD, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = icmp eq %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %2, align 8
  br label %59

18:                                               ; preds = %1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %25 [
    i32 129, label %24
  ]

24:                                               ; preds = %18
  br label %27

25:                                               ; preds = %18
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %2, align 8
  br label %59

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @palloc0(i32 %28)
  store i8* %29, i8** %5, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @pg_getnameinfo_all(%struct.TYPE_12__* %32, i32 %36, i8* %37, i32 %38, i32* null, i32 0, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %27
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @appendStringInfo(%struct.TYPE_10__* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %57

47:                                               ; preds = %27
  %48 = call %struct.TYPE_10__* (...) @makeStringInfo()
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %10, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i8* @gai_strerror(i32 %50)
  %52 = call i32 @appendStringInfo(%struct.TYPE_10__* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  store i8* %56, i8** %2, align 8
  br label %59

57:                                               ; preds = %43
  %58 = load i8*, i8** %6, align 8
  store i8* %58, i8** %2, align 8
  br label %59

59:                                               ; preds = %57, %47, %25, %16
  %60 = load i8*, i8** %2, align 8
  ret i8* %60
}

declare dso_local i8* @palloc0(i32) #1

declare dso_local i32 @pg_getnameinfo_all(%struct.TYPE_12__*, i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local %struct.TYPE_10__* @makeStringInfo(...) #1

declare dso_local i8* @gai_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
