; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_close_all_connections.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_conncache.c_Curl_conncache_close_all_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conncache = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.connectdata = type { %struct.TYPE_7__* }

@pipe_st = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"kill all\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_conncache_close_all_connections(%struct.conncache* %0) #0 {
  %2 = alloca %struct.conncache*, align 8
  %3 = alloca %struct.connectdata*, align 8
  store %struct.conncache* %0, %struct.conncache** %2, align 8
  %4 = load %struct.conncache*, %struct.conncache** %2, align 8
  %5 = call %struct.connectdata* @conncache_find_first_connection(%struct.conncache* %4)
  store %struct.connectdata* %5, %struct.connectdata** %3, align 8
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %8 = icmp ne %struct.connectdata* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = load i32, i32* @pipe_st, align 4
  %11 = call i32 @SIGPIPE_VARIABLE(i32 %10)
  %12 = load %struct.conncache*, %struct.conncache** %2, align 8
  %13 = getelementptr inbounds %struct.conncache, %struct.conncache* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 0
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %16, align 8
  %17 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = call i32 @sigpipe_ignore(%struct.TYPE_7__* %19, i32* @pipe_st)
  %21 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %22 = call i32 @connclose(%struct.connectdata* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.conncache*, %struct.conncache** %2, align 8
  %24 = getelementptr inbounds %struct.conncache, %struct.conncache* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32 @Curl_disconnect(%struct.TYPE_7__* %25, %struct.connectdata* %26, i32 %27)
  %29 = call i32 @sigpipe_restore(i32* @pipe_st)
  %30 = load %struct.conncache*, %struct.conncache** %2, align 8
  %31 = call %struct.connectdata* @conncache_find_first_connection(%struct.conncache* %30)
  store %struct.connectdata* %31, %struct.connectdata** %3, align 8
  br label %6

32:                                               ; preds = %6
  %33 = load %struct.conncache*, %struct.conncache** %2, align 8
  %34 = getelementptr inbounds %struct.conncache, %struct.conncache* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load i32, i32* @pipe_st, align 4
  %39 = call i32 @SIGPIPE_VARIABLE(i32 %38)
  %40 = load %struct.conncache*, %struct.conncache** %2, align 8
  %41 = getelementptr inbounds %struct.conncache, %struct.conncache* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = call i32 @sigpipe_ignore(%struct.TYPE_7__* %42, i32* @pipe_st)
  %44 = load %struct.conncache*, %struct.conncache** %2, align 8
  %45 = getelementptr inbounds %struct.conncache, %struct.conncache* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load %struct.conncache*, %struct.conncache** %2, align 8
  %48 = getelementptr inbounds %struct.conncache, %struct.conncache* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @Curl_hostcache_clean(%struct.TYPE_7__* %46, i32 %52)
  %54 = load %struct.conncache*, %struct.conncache** %2, align 8
  %55 = getelementptr inbounds %struct.conncache, %struct.conncache* %54, i32 0, i32 0
  %56 = call i32 @Curl_close(%struct.TYPE_7__** %55)
  %57 = call i32 @sigpipe_restore(i32* @pipe_st)
  br label %58

58:                                               ; preds = %37, %32
  ret void
}

declare dso_local %struct.connectdata* @conncache_find_first_connection(%struct.conncache*) #1

declare dso_local i32 @SIGPIPE_VARIABLE(i32) #1

declare dso_local i32 @sigpipe_ignore(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @connclose(%struct.connectdata*, i8*) #1

declare dso_local i32 @Curl_disconnect(%struct.TYPE_7__*, %struct.connectdata*, i32) #1

declare dso_local i32 @sigpipe_restore(i32*) #1

declare dso_local i32 @Curl_hostcache_clean(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @Curl_close(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
