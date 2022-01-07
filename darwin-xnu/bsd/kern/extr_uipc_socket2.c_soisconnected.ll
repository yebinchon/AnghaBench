; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_soisconnected.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_soisconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i32, i32, i32, %struct.socket*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@SS_ISCONNECTING = common dso_local global i32 0, align 4
@SS_ISDISCONNECTING = common dso_local global i32 0, align 4
@SS_ISCONFIRMING = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@sock_evt_connected = common dso_local global i32 0, align 4
@SS_INCOMP = common dso_local global i32 0, align 4
@SS_COMP = common dso_local global i32 0, align 4
@so_list = common dso_local global i32 0, align 4
@EV_RCONN = common dso_local global i32 0, align 4
@EV_WCONN = common dso_local global i32 0, align 4
@SO_FILT_HINT_LOCKED = common dso_local global i32 0, align 4
@SO_FILT_HINT_CONNECTED = common dso_local global i32 0, align 4
@SO_FILT_HINT_CONNINFO_UPDATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @soisconnected(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  %5 = load i32, i32* @SS_ISCONNECTING, align 4
  %6 = load i32, i32* @SS_ISDISCONNECTING, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SS_ISCONFIRMING, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load i32, i32* @SS_ISCONNECTED, align 4
  %16 = load %struct.socket*, %struct.socket** %2, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.socket*, %struct.socket** %2, align 8
  %21 = call i32 @soreserve_preconnect(%struct.socket* %20, i32 0)
  %22 = load %struct.socket*, %struct.socket** %2, align 8
  %23 = load i32, i32* @sock_evt_connected, align 4
  %24 = call i32 @sflt_notify(%struct.socket* %22, i32 %23, i32* null)
  %25 = load %struct.socket*, %struct.socket** %2, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 5
  %27 = load %struct.socket*, %struct.socket** %26, align 8
  %28 = icmp ne %struct.socket* %27, null
  br i1 %28, label %29, label %126

29:                                               ; preds = %1
  %30 = load %struct.socket*, %struct.socket** %2, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SS_INCOMP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %126

36:                                               ; preds = %29
  %37 = load %struct.socket*, %struct.socket** %2, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 5
  %39 = load %struct.socket*, %struct.socket** %38, align 8
  store %struct.socket* %39, %struct.socket** %3, align 8
  store i32 0, i32* %4, align 4
  %40 = load %struct.socket*, %struct.socket** %3, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 6
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load %struct.socket*, %struct.socket** %3, align 8
  %48 = call i32 @socket_lock(%struct.socket* %47, i32 1)
  %49 = load %struct.socket*, %struct.socket** %3, align 8
  %50 = load %struct.socket*, %struct.socket** %2, align 8
  %51 = call i32 @so_acquire_accept_list(%struct.socket* %49, %struct.socket* %50)
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %36
  %53 = load %struct.socket*, %struct.socket** %2, align 8
  %54 = getelementptr inbounds %struct.socket, %struct.socket* %53, i32 0, i32 5
  %55 = load %struct.socket*, %struct.socket** %54, align 8
  %56 = load %struct.socket*, %struct.socket** %3, align 8
  %57 = icmp eq %struct.socket* %55, %56
  br i1 %57, label %58, label %116

58:                                               ; preds = %52
  %59 = load %struct.socket*, %struct.socket** %2, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SS_INCOMP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %116

65:                                               ; preds = %58
  %66 = load i32, i32* @SS_INCOMP, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.socket*, %struct.socket** %2, align 8
  %69 = getelementptr inbounds %struct.socket, %struct.socket* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* @SS_COMP, align 4
  %73 = load %struct.socket*, %struct.socket** %2, align 8
  %74 = getelementptr inbounds %struct.socket, %struct.socket* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.socket*, %struct.socket** %3, align 8
  %78 = getelementptr inbounds %struct.socket, %struct.socket* %77, i32 0, i32 4
  %79 = load %struct.socket*, %struct.socket** %2, align 8
  %80 = load i32, i32* @so_list, align 4
  %81 = call i32 @TAILQ_REMOVE(i32* %78, %struct.socket* %79, i32 %80)
  %82 = load %struct.socket*, %struct.socket** %3, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 3
  %84 = load %struct.socket*, %struct.socket** %2, align 8
  %85 = load i32, i32* @so_list, align 4
  %86 = call i32 @TAILQ_INSERT_TAIL(i32* %83, %struct.socket* %84, i32 %85)
  %87 = load %struct.socket*, %struct.socket** %3, align 8
  %88 = getelementptr inbounds %struct.socket, %struct.socket* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %65
  %94 = load %struct.socket*, %struct.socket** %3, align 8
  %95 = call i32 @so_release_accept_list(%struct.socket* %94)
  %96 = load %struct.socket*, %struct.socket** %2, align 8
  %97 = call i32 @socket_unlock(%struct.socket* %96, i32 0)
  br label %98

98:                                               ; preds = %93, %65
  %99 = load %struct.socket*, %struct.socket** %3, align 8
  %100 = load i32, i32* @EV_RCONN, align 4
  %101 = call i32 @postevent(%struct.socket* %99, i32 0, i32 %100)
  %102 = load %struct.socket*, %struct.socket** %3, align 8
  %103 = call i32 @sorwakeup(%struct.socket* %102)
  %104 = load %struct.socket*, %struct.socket** %3, align 8
  %105 = getelementptr inbounds %struct.socket, %struct.socket* %104, i32 0, i32 1
  %106 = ptrtoint i32* %105 to i32
  %107 = call i32 @wakeup_one(i32 %106)
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %98
  %111 = load %struct.socket*, %struct.socket** %3, align 8
  %112 = call i32 @socket_unlock(%struct.socket* %111, i32 1)
  %113 = load %struct.socket*, %struct.socket** %2, align 8
  %114 = call i32 @socket_lock(%struct.socket* %113, i32 0)
  br label %115

115:                                              ; preds = %110, %98
  br label %125

116:                                              ; preds = %58, %52
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load %struct.socket*, %struct.socket** %3, align 8
  %121 = call i32 @so_release_accept_list(%struct.socket* %120)
  %122 = load %struct.socket*, %struct.socket** %3, align 8
  %123 = call i32 @socket_unlock(%struct.socket* %122, i32 1)
  br label %124

124:                                              ; preds = %119, %116
  br label %125

125:                                              ; preds = %124, %115
  br label %145

126:                                              ; preds = %29, %1
  %127 = load %struct.socket*, %struct.socket** %2, align 8
  %128 = load i32, i32* @EV_WCONN, align 4
  %129 = call i32 @postevent(%struct.socket* %127, i32 0, i32 %128)
  %130 = load %struct.socket*, %struct.socket** %2, align 8
  %131 = getelementptr inbounds %struct.socket, %struct.socket* %130, i32 0, i32 1
  %132 = ptrtoint i32* %131 to i32
  %133 = call i32 @wakeup(i32 %132)
  %134 = load %struct.socket*, %struct.socket** %2, align 8
  %135 = call i32 @sorwakeup(%struct.socket* %134)
  %136 = load %struct.socket*, %struct.socket** %2, align 8
  %137 = call i32 @sowwakeup(%struct.socket* %136)
  %138 = load %struct.socket*, %struct.socket** %2, align 8
  %139 = load i32, i32* @SO_FILT_HINT_LOCKED, align 4
  %140 = load i32, i32* @SO_FILT_HINT_CONNECTED, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @SO_FILT_HINT_CONNINFO_UPDATED, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @soevent(%struct.socket* %138, i32 %143)
  br label %145

145:                                              ; preds = %126, %125
  ret void
}

declare dso_local i32 @soreserve_preconnect(%struct.socket*, i32) #1

declare dso_local i32 @sflt_notify(%struct.socket*, i32, i32*) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @so_acquire_accept_list(%struct.socket*, %struct.socket*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.socket*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.socket*, i32) #1

declare dso_local i32 @so_release_accept_list(%struct.socket*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @postevent(%struct.socket*, i32, i32) #1

declare dso_local i32 @sorwakeup(%struct.socket*) #1

declare dso_local i32 @wakeup_one(i32) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @sowwakeup(%struct.socket*) #1

declare dso_local i32 @soevent(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
