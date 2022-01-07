; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sosend_reinject.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sosend_reinject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, i32)* }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32, i64, %struct.mbuf* }

@M_PKTHDR = common dso_local global i32 0, align 4
@MT_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sosend_reinject(%struct.socket* %0, %struct.sockaddr* %1, %struct.mbuf* %2, %struct.mbuf* %3, i32 %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.mbuf* %2, %struct.mbuf** %8, align 8
  store %struct.mbuf* %3, %struct.mbuf** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = call i32 @socket_lock_assert_owned(%struct.socket* %14)
  %16 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %17 = icmp ne %struct.mbuf* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %5
  %19 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %20 = icmp eq %struct.mbuf* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @M_PKTHDR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %21, %18
  %29 = phi i1 [ true, %18 ], [ %27, %21 ]
  br label %30

30:                                               ; preds = %28, %5
  %31 = phi i1 [ false, %5 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @VERIFY(i32 %32)
  %34 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %35 = icmp eq %struct.mbuf* %34, null
  br i1 %35, label %36, label %100

36:                                               ; preds = %30
  %37 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @M_PKTHDR, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %100

43:                                               ; preds = %36
  %44 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %44, %struct.mbuf** %11, align 8
  br label %45

45:                                               ; preds = %89, %43
  %46 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %47 = icmp ne %struct.mbuf* %46, null
  br i1 %47, label %48, label %93

48:                                               ; preds = %45
  %49 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @M_PKTHDR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %56, %struct.mbuf** %8, align 8
  br label %93

57:                                               ; preds = %48
  %58 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MT_CONTROL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %57
  %64 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %65 = icmp eq %struct.mbuf* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %67, %struct.mbuf** %9, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %70 = icmp ne %struct.mbuf* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 2
  %74 = load %struct.mbuf*, %struct.mbuf** %73, align 8
  %75 = icmp ne %struct.mbuf* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 2
  %79 = load %struct.mbuf*, %struct.mbuf** %78, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MT_CONTROL, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %85, %struct.mbuf** %12, align 8
  br label %86

86:                                               ; preds = %84, %76, %71, %68
  br label %87

87:                                               ; preds = %86, %57
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 2
  %92 = load %struct.mbuf*, %struct.mbuf** %91, align 8
  store %struct.mbuf* %92, %struct.mbuf** %11, align 8
  br label %45

93:                                               ; preds = %55, %45
  %94 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %95 = icmp ne %struct.mbuf* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %98 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %97, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %98, align 8
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %36, %30
  %101 = load %struct.socket*, %struct.socket** %6, align 8
  %102 = getelementptr inbounds %struct.socket, %struct.socket* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, i32)*, i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, i32)** %106, align 8
  %108 = load %struct.socket*, %struct.socket** %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %111 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %112 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %113 = call i32 (...) @current_proc()
  %114 = call i32 %107(%struct.socket* %108, i32 %109, %struct.mbuf* %110, %struct.sockaddr* %111, %struct.mbuf* %112, i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  ret i32 %115
}

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @current_proc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
