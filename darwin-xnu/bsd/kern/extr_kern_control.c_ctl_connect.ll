; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_connect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.socket = type { i64 }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.ctl_cb = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 (i32, %struct.TYPE_5__*, i32*)*, i32, i32, i32 (i32, i64, i32)* }

@.str = private unnamed_addr constant [25 x i8] c"ctl_connect so_pcb null\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ctl_connect kctl null\0A\00", align 1
@ctl_mtx = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@kctlstat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.proc*)* @ctl_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_connect(%struct.socket* %0, %struct.sockaddr* %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ctl_cb*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.proc* %2, %struct.proc** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ctl_cb*
  store %struct.ctl_cb* %13, %struct.ctl_cb** %9, align 8
  %14 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %15 = icmp eq %struct.ctl_cb* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.socket*, %struct.socket** %5, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = load %struct.proc*, %struct.proc** %7, align 8
  %22 = call i32 @ctl_setup_kctl(%struct.socket* %19, %struct.sockaddr* %20, %struct.proc* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %125

27:                                               ; preds = %18
  %28 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %29 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp eq %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = load %struct.socket*, %struct.socket** %5, align 8
  %36 = call i32 @soisconnecting(%struct.socket* %35)
  %37 = load %struct.socket*, %struct.socket** %5, align 8
  %38 = call i32 @socket_unlock(%struct.socket* %37, i32 0)
  %39 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %40 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (i32, %struct.TYPE_5__*, i32*)*, i32 (i32, %struct.TYPE_5__*, i32*)** %42, align 8
  %44 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %45 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %50 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %49, i32 0, i32 0
  %51 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %52 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %51, i32 0, i32 2
  %53 = call i32 %43(i32 %48, %struct.TYPE_5__* %50, i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.socket*, %struct.socket** %5, align 8
  %55 = call i32 @socket_lock(%struct.socket* %54, i32 0)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %34
  br label %62

59:                                               ; preds = %34
  %60 = load %struct.socket*, %struct.socket** %5, align 8
  %61 = call i32 @soisconnected(%struct.socket* %60)
  br label %62

62:                                               ; preds = %59, %58
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %62
  %66 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %67 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %69, align 8
  %71 = icmp ne i32 (i32, i64, i32)* %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %65
  %73 = load %struct.socket*, %struct.socket** %5, align 8
  %74 = call i32 @socket_unlock(%struct.socket* %73, i32 0)
  %75 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %76 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %78, align 8
  %80 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %81 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %86 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %90 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 %79(i32 %84, i64 %88, i32 %91)
  %93 = load %struct.socket*, %struct.socket** %5, align 8
  %94 = call i32 @socket_lock(%struct.socket* %93, i32 0)
  br label %95

95:                                               ; preds = %72, %65, %62
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %95
  %99 = load %struct.socket*, %struct.socket** %5, align 8
  %100 = call i32 @soisdisconnected(%struct.socket* %99)
  %101 = load i32, i32* @ctl_mtx, align 4
  %102 = call i32 @lck_mtx_lock(i32 %101)
  %103 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %104 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %108 = load i32, i32* @next, align 4
  %109 = call i32 @TAILQ_REMOVE(i32* %106, %struct.ctl_cb* %107, i32 %108)
  %110 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %111 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %110, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %111, align 8
  %112 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %113 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kctlstat, i32 0, i32 2), align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kctlstat, i32 0, i32 2), align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kctlstat, i32 0, i32 1), align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kctlstat, i32 0, i32 1), align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kctlstat, i32 0, i32 0), align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kctlstat, i32 0, i32 0), align 4
  %121 = load i32, i32* @ctl_mtx, align 4
  %122 = call i32 @lck_mtx_unlock(i32 %121)
  br label %123

123:                                              ; preds = %98, %95
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %123, %25
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ctl_setup_kctl(%struct.socket*, %struct.sockaddr*, %struct.proc*) #1

declare dso_local i32 @soisconnecting(%struct.socket*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @soisconnected(%struct.socket*) #1

declare dso_local i32 @soisdisconnected(%struct.socket*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ctl_cb*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
