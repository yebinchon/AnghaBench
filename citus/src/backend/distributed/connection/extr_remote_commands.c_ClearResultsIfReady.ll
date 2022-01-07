; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_ClearResultsIfReady.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_ClearResultsIfReady.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@CONNECTION_OK = common dso_local global i64 0, align 8
@PGRES_COPY_IN = common dso_local global i64 0, align 8
@PGRES_COPY_OUT = common dso_local global i64 0, align 8
@PGRES_SINGLE_TUPLE = common dso_local global i64 0, align 8
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ClearResultsIfReady(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @PQstatus(i32* %10)
  %12 = load i64, i64* @CONNECTION_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

15:                                               ; preds = %1
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @PQisnonblocking(i32* %16)
  %18 = call i32 @Assert(i32 %17)
  br label %19

19:                                               ; preds = %15, %71
  store i32* null, i32** %5, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @PQisBusy(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @PQflush(i32* %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %72

28:                                               ; preds = %23
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @PQconsumeInput(i32* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %72

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @PQisBusy(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %72

39:                                               ; preds = %34
  %40 = load i32*, i32** %4, align 8
  %41 = call i32* @PQgetResult(i32* %40)
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %72

45:                                               ; preds = %39
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @PQresultStatus(i32* %46)
  store i64 %47, i64* %6, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @PQclear(i32* %48)
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @PGRES_COPY_IN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @PGRES_COPY_OUT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %45
  store i32 0, i32* %2, align 4
  br label %72

58:                                               ; preds = %53
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @PGRES_SINGLE_TUPLE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %71, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %72

71:                                               ; preds = %66, %62, %58
  br label %19

72:                                               ; preds = %70, %57, %44, %38, %32, %27, %14
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @PQstatus(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PQisnonblocking(i32*) #1

declare dso_local i64 @PQisBusy(i32*) #1

declare dso_local i32 @PQflush(i32*) #1

declare dso_local i64 @PQconsumeInput(i32*) #1

declare dso_local i32* @PQgetResult(i32*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
