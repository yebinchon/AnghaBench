; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_socket_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_socket_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOF1_IN_KERNEL_SOCKET = common dso_local global i32 0, align 4
@net_api_stats = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_socket_common(i32 %0, i32 %1, i32 %2, i32* %3, i8* %4, %struct.TYPE_6__** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_6__**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.TYPE_6__** %5, %struct.TYPE_6__*** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %18 = icmp eq %struct.TYPE_6__** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %8, align 4
  br label %61

21:                                               ; preds = %7
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @socreate(i32 %22, %struct.TYPE_6__** %23, i32 %24, i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %21
  %30 = load i32, i32* @SOF1_IN_KERNEL_SOCKET, align 4
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @net_api_stats, i32 0, i32 1), align 4
  %37 = call i32 @INC_ATOMIC_INT64_LIM(i32 %36)
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @net_api_stats, i32 0, i32 0), align 4
  %42 = call i32 @INC_ATOMIC_INT64_LIM(i32 %41)
  br label %43

43:                                               ; preds = %40, %29
  %44 = load i32*, i32** %12, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @sock_setupcall(%struct.TYPE_6__* %48, i32* %49, i8* %50)
  br label %52

52:                                               ; preds = %46, %43
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %52, %21
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %19
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @socreate(i32, %struct.TYPE_6__**, i32, i32) #1

declare dso_local i32 @INC_ATOMIC_INT64_LIM(i32) #1

declare dso_local i32 @sock_setupcall(%struct.TYPE_6__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
