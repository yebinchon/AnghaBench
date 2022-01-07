; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-conn-pool-lua.c_network_connection_pool_lua_swap.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-conn-pool-lua.c_network_connection_pool_lua_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__*, %struct.TYPE_13__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@G_STRLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @network_connection_pool_lua_swap(%struct.TYPE_18__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %8, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %10, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.TYPE_19__* @network_backends_get(i32 %20, i32 %21)
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %8, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %24 = icmp ne %struct.TYPE_19__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %66

26:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %28 = call i32* @chassis_event_thread_pool(%struct.TYPE_19__* %27)
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32* @network_connection_pool_get(i32* %29)
  store i32* %30, i32** %9, align 8
  %31 = icmp eq i32* null, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  store i32 1, i32* %11, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @self_connect(%struct.TYPE_18__* %33, %struct.TYPE_19__* %34, i32* %35)
  store i32* %36, i32** %9, align 8
  %37 = icmp eq i32* null, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 8
  store i32* null, i32** %4, align 8
  br label %66

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %26
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %42
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = call i32 @g_atomic_int_compare_and_exchange(i32* %55, i32 0, i32 0)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %51
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = call i32 @g_atomic_int_dec_and_test(i32* %62)
  br label %64

64:                                               ; preds = %58, %51, %42
  %65 = load i32*, i32** %9, align 8
  store i32* %65, i32** %4, align 8
  br label %66

66:                                               ; preds = %64, %38, %25
  %67 = load i32*, i32** %4, align 8
  ret i32* %67
}

declare dso_local %struct.TYPE_19__* @network_backends_get(i32, i32) #1

declare dso_local i32* @chassis_event_thread_pool(%struct.TYPE_19__*) #1

declare dso_local i32* @network_connection_pool_get(i32*) #1

declare dso_local i32* @self_connect(%struct.TYPE_18__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @g_atomic_int_compare_and_exchange(i32*, i32, i32) #1

declare dso_local i32 @g_atomic_int_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
