; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_management.c_MultiConnectionStatePoll.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_management.c_MultiConnectionStatePoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MULTI_CONNECTION_PHASE_CONNECTING = common dso_local global i64 0, align 8
@CONNECTION_OK = common dso_local global i64 0, align 8
@MULTI_CONNECTION_PHASE_CONNECTED = common dso_local global i8* null, align 8
@CONNECTION_BAD = common dso_local global i64 0, align 8
@MULTI_CONNECTION_PHASE_ERROR = common dso_local global i8* null, align 8
@PGRES_POLLING_FAILED = common dso_local global i32 0, align 4
@PGRES_POLLING_OK = common dso_local global i32 0, align 4
@PGRES_POLLING_WRITING = common dso_local global i32 0, align 4
@PGRES_POLLING_READING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @MultiConnectionStatePoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MultiConnectionStatePoll(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @PQstatus(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MULTI_CONNECTION_PHASE_CONNECTING, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @CONNECTION_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i8*, i8** @MULTI_CONNECTION_PHASE_CONNECTED, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  store i32 1, i32* %2, align 4
  br label %99

32:                                               ; preds = %1
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @CONNECTION_BAD, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8*, i8** @MULTI_CONNECTION_PHASE_ERROR, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  store i32 1, i32* %2, align 4
  br label %99

41:                                               ; preds = %32
  %42 = load i64, i64* @MULTI_CONNECTION_PHASE_CONNECTING, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PQconnectPoll(i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PGRES_POLLING_FAILED, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %46
  %59 = load i8*, i8** @MULTI_CONNECTION_PHASE_ERROR, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  store i32 1, i32* %2, align 4
  br label %99

63:                                               ; preds = %46
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PGRES_POLLING_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i8*, i8** @MULTI_CONNECTION_PHASE_CONNECTED, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  store i32 1, i32* %2, align 4
  br label %99

74:                                               ; preds = %63
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PGRES_POLLING_WRITING, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @PGRES_POLLING_READING, align 4
  %85 = icmp eq i32 %83, %84
  br label %86

86:                                               ; preds = %80, %74
  %87 = phi i1 [ true, %74 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @Assert(i32 %88)
  br label %90

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %92, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %91, %69, %58, %36, %27
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i64 @PQstatus(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PQconnectPoll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
