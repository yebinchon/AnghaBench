; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_resolve_multi.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_resolve_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 (%struct.ifnet*, %struct.sockaddr*)* }
%struct.sockaddr = type { i32 }
%struct.if_proto = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)* }
%struct.sockaddr_dl = type { i32 }
%struct.TYPE_4__ = type { i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)* }

@EOPNOTSUPP = common dso_local global i64 0, align 8
@kProtoKPI_v1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dlil_resolve_multi(%struct.ifnet* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.if_proto*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* @EOPNOTSUPP, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %16 = call i32 @ifnet_is_attached(%struct.ifnet* %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %5, align 8
  br label %99

20:                                               ; preds = %4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @bzero(%struct.sockaddr* %21, i64 %22)
  %24 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %25 = call i32 @ifnet_lock_shared(%struct.ifnet* %24)
  %26 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.if_proto* @find_attached_proto(%struct.ifnet* %26, i32 %29)
  store %struct.if_proto* %30, %struct.if_proto** %11, align 8
  %31 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %32 = call i32 @ifnet_lock_done(%struct.ifnet* %31)
  %33 = load %struct.if_proto*, %struct.if_proto** %11, align 8
  %34 = icmp ne %struct.if_proto* %33, null
  br i1 %34, label %35, label %69

35:                                               ; preds = %20
  %36 = load %struct.if_proto*, %struct.if_proto** %11, align 8
  %37 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @kProtoKPI_v1, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.if_proto*, %struct.if_proto** %11, align 8
  %43 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)*, i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)** %45, align 8
  br label %53

47:                                               ; preds = %35
  %48 = load %struct.if_proto*, %struct.if_proto** %11, align 8
  %49 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)*, i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)** %51, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = phi i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)* [ %46, %41 ], [ %52, %47 ]
  store i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)* %54, i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)** %13, align 8
  %55 = load i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)*, i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)** %13, align 8
  %56 = icmp ne i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)*, i64 (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr_dl*, i64)** %13, align 8
  %59 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %60 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %61 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %62 = bitcast %struct.sockaddr* %61 to i8*
  %63 = bitcast i8* %62 to %struct.sockaddr_dl*
  %64 = load i64, i64* %9, align 8
  %65 = call i64 %58(%struct.ifnet* %59, %struct.sockaddr* %60, %struct.sockaddr_dl* %63, i64 %64)
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %57, %53
  %67 = load %struct.if_proto*, %struct.if_proto** %11, align 8
  %68 = call i32 @if_proto_free(%struct.if_proto* %67)
  br label %69

69:                                               ; preds = %66, %20
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @EOPNOTSUPP, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %10, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %73, %69
  %77 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 0
  %79 = load i64 (%struct.ifnet*, %struct.sockaddr*)*, i64 (%struct.ifnet*, %struct.sockaddr*)** %78, align 8
  %80 = icmp ne i64 (%struct.ifnet*, %struct.sockaddr*)* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load i64, i64* %10, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  store %struct.sockaddr* %85, %struct.sockaddr** %12, align 8
  br label %88

86:                                               ; preds = %81
  %87 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %87, %struct.sockaddr** %12, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %90 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %89, i32 0, i32 0
  %91 = load i64 (%struct.ifnet*, %struct.sockaddr*)*, i64 (%struct.ifnet*, %struct.sockaddr*)** %90, align 8
  %92 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %93 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %94 = call i64 %91(%struct.ifnet* %92, %struct.sockaddr* %93)
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %88, %76, %73
  %96 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %97 = call i32 @ifnet_decr_iorefcnt(%struct.ifnet* %96)
  %98 = load i64, i64* %10, align 8
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %95, %18
  %100 = load i64, i64* %5, align 8
  ret i64 %100
}

declare dso_local i32 @ifnet_is_attached(%struct.ifnet*, i32) #1

declare dso_local i32 @bzero(%struct.sockaddr*, i64) #1

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local %struct.if_proto* @find_attached_proto(%struct.ifnet*, i32) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @if_proto_free(%struct.if_proto*) #1

declare dso_local i32 @ifnet_decr_iorefcnt(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
