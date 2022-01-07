; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_client_executor.c_ClientConnectionReady.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_client_executor.c_ClientConnectionReady.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.timeval = type { i32, i32 }

@PGRES_POLLING_READING = common dso_local global i64 0, align 8
@PGRES_POLLING_WRITING = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"select()/poll() failed: %m\00", align 1
@POLLERR = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @ClientConnectionReady to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ClientConnectionReady(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @PQsocket(i32 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %11, align 4
  %18 = call i32 @FD_ZERO(i32* %7)
  %19 = call i32 @FD_ZERO(i32* %8)
  %20 = call i32 @FD_ZERO(i32* %9)
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @PGRES_POLLING_READING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @FD_SET(i32 %25, i32* %9)
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @FD_SET(i32 %27, i32* %7)
  br label %39

29:                                               ; preds = %2
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @PGRES_POLLING_WRITING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @FD_SET(i32 %34, i32* %9)
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @FD_SET(i32 %36, i32* %8)
  br label %38

38:                                               ; preds = %33, %29
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  %42 = ptrtoint %struct.timeval* %10 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %71

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %70

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EINTR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %68

58:                                               ; preds = %53
  %59 = load i64, i64* @errno, align 8
  %60 = load i64, i64* @ENOMEM, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @Assert(i32 %62)
  %64 = load i32, i32* @ERROR, align 4
  %65 = call i32 (...) @errcode_for_socket_access()
  %66 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %67 = call i32 @ereport(i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %58, %57
  br label %69

69:                                               ; preds = %68, %50
  br label %70

70:                                               ; preds = %69, %49
  br label %71

71:                                               ; preds = %70, %45
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @PQsocket(i32) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_socket_access(...) #2

declare dso_local i32 @errmsg(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
