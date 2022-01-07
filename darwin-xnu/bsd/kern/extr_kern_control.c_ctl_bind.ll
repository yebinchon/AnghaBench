; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_bind.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64 }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.ctl_cb = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*, i32*)*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"ctl_bind so_pcb null\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ctl_bind kctl null\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.proc*)* @ctl_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_bind(%struct.socket* %0, %struct.sockaddr* %1, %struct.proc* %2) #0 {
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
  %17 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
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
  br label %64

27:                                               ; preds = %18
  %28 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %29 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp eq %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %36 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %38, align 8
  %40 = icmp eq i32 (i32, i32*, i32*)* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %4, align 4
  br label %64

43:                                               ; preds = %34
  %44 = load %struct.socket*, %struct.socket** %5, align 8
  %45 = call i32 @socket_unlock(%struct.socket* %44, i32 0)
  %46 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %47 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %49, align 8
  %51 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %52 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %57 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %56, i32 0, i32 1
  %58 = load %struct.ctl_cb*, %struct.ctl_cb** %9, align 8
  %59 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %58, i32 0, i32 0
  %60 = call i32 %50(i32 %55, i32* %57, i32* %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.socket*, %struct.socket** %5, align 8
  %62 = call i32 @socket_lock(%struct.socket* %61, i32 0)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %43, %41, %25
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ctl_setup_kctl(%struct.socket*, %struct.sockaddr*, %struct.proc*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
