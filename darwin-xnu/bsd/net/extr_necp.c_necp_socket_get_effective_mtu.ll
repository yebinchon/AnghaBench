; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_get_effective_mtu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_get_effective_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.inpcb = type { i32, %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@NECP_KERNEL_POLICY_RESULT_IP_TUNNEL = common dso_local global i64 0, align 8
@INP_BOUND_IF = common dso_local global i32 0, align 4
@ifindex2ifnet = common dso_local global %struct.TYPE_15__** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"ipsec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @necp_socket_get_effective_mtu(%struct.inpcb* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %13 = icmp eq %struct.inpcb* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %3, align 8
  br label %112

16:                                               ; preds = %2
  %17 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_IP_TUNNEL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %110

24:                                               ; preds = %16
  %25 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %26 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @INP_BOUND_IF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %110

31:                                               ; preds = %24
  %32 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %33 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  br i1 %35, label %36, label %110

36:                                               ; preds = %31
  %37 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %38 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %37, i32 0, i32 2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  %42 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %43 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %109

51:                                               ; preds = %36
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  %52 = call i32 (...) @ifnet_head_lock_shared()
  %53 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @ifindex2ifnet, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %53, i64 %54
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %8, align 8
  %57 = call i32 (...) @ifnet_head_done()
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = icmp ne %struct.TYPE_15__* %58, null
  br i1 %59, label %60, label %108

60:                                               ; preds = %51
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %9, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = icmp ne %struct.TYPE_13__* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  br label %77

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76, %69
  %78 = phi i64 [ %75, %69 ], [ 0, %76 ]
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %77
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %86 = call i64 @strncmp(i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %81
  %89 = call i64 @esp_hdrsiz(i32* null)
  %90 = add i64 %89, 4
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %10, align 8
  %97 = sub nsw i64 %96, %95
  store i64 %97, i64* %10, align 8
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i64, i64* %10, align 8
  store i64 %103, i64* %3, align 8
  br label %112

104:                                              ; preds = %98
  %105 = load i64, i64* %9, align 8
  store i64 %105, i64* %3, align 8
  br label %112

106:                                              ; preds = %81, %77
  %107 = load i64, i64* %9, align 8
  store i64 %107, i64* %3, align 8
  br label %112

108:                                              ; preds = %51
  br label %109

109:                                              ; preds = %108, %36
  br label %110

110:                                              ; preds = %109, %31, %24, %16
  %111 = load i64, i64* %5, align 8
  store i64 %111, i64* %3, align 8
  br label %112

112:                                              ; preds = %110, %106, %104, %102, %14
  %113 = load i64, i64* %3, align 8
  ret i64 %113
}

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @esp_hdrsiz(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
