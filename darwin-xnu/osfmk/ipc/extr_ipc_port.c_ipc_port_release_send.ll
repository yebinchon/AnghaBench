; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_release_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_release_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32 }

@IP_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Over-release of port %p send right!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_port_release_send(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load i64, i64* @IP_NULL, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = call i32 @IP_VALID(%struct.TYPE_10__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %74

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = call i32 @ip_lock(%struct.TYPE_10__* %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %25)
  br label %27

27:                                               ; preds = %24, %11
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = call i32 @ip_active(%struct.TYPE_10__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = call i32 @ip_unlock(%struct.TYPE_10__* %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = call i32 @ip_release(%struct.TYPE_10__* %38)
  br label %74

40:                                               ; preds = %27
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IP_NULL, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %3, align 8
  %56 = load i64, i64* @IP_NULL, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %4, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %63 = call i32 @ip_unlock(%struct.TYPE_10__* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %65 = call i32 @ip_release(%struct.TYPE_10__* %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @ipc_notify_no_senders(%struct.TYPE_10__* %66, i32 %67)
  br label %74

69:                                               ; preds = %45, %40
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = call i32 @ip_unlock(%struct.TYPE_10__* %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = call i32 @ip_release(%struct.TYPE_10__* %72)
  br label %74

74:                                               ; preds = %10, %35, %69, %51
  ret void
}

declare dso_local i32 @IP_VALID(%struct.TYPE_10__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_10__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @ip_release(%struct.TYPE_10__*) #1

declare dso_local i32 @ipc_notify_no_senders(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
