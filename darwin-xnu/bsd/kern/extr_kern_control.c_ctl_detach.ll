; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_detach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i64 }
%struct.ctl_cb = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 (i32, i32, i32*)*, i32* }

@SS_ISCONNECTED = common dso_local global i32 0, align 4
@SOF_PCBCLEARING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @ctl_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_detach(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.ctl_cb*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %5 = load %struct.socket*, %struct.socket** %3, align 8
  %6 = getelementptr inbounds %struct.socket, %struct.socket* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.ctl_cb*
  store %struct.ctl_cb* %8, %struct.ctl_cb** %4, align 8
  %9 = load %struct.ctl_cb*, %struct.ctl_cb** %4, align 8
  %10 = icmp eq %struct.ctl_cb* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

12:                                               ; preds = %1
  %13 = load %struct.ctl_cb*, %struct.ctl_cb** %4, align 8
  %14 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %67

17:                                               ; preds = %12
  %18 = load %struct.ctl_cb*, %struct.ctl_cb** %4, align 8
  %19 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %67

24:                                               ; preds = %17
  %25 = load %struct.ctl_cb*, %struct.ctl_cb** %4, align 8
  %26 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  %30 = load %struct.socket*, %struct.socket** %3, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SS_ISCONNECTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %29
  %37 = load %struct.ctl_cb*, %struct.ctl_cb** %4, align 8
  %38 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %40, align 8
  %42 = icmp ne i32 (i32, i32, i32*)* %41, null
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = load %struct.socket*, %struct.socket** %3, align 8
  %45 = call i32 @socket_unlock(%struct.socket* %44, i32 0)
  %46 = load %struct.ctl_cb*, %struct.ctl_cb** %4, align 8
  %47 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %49, align 8
  %51 = load %struct.ctl_cb*, %struct.ctl_cb** %4, align 8
  %52 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ctl_cb*, %struct.ctl_cb** %4, align 8
  %57 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ctl_cb*, %struct.ctl_cb** %4, align 8
  %61 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 %50(i32 %55, i32 %59, i32* %62)
  %64 = load %struct.socket*, %struct.socket** %3, align 8
  %65 = call i32 @socket_lock(%struct.socket* %64, i32 0)
  br label %66

66:                                               ; preds = %43, %36
  br label %67

67:                                               ; preds = %66, %29, %24, %17, %12
  %68 = load %struct.socket*, %struct.socket** %3, align 8
  %69 = call i32 @soisdisconnected(%struct.socket* %68)
  %70 = load i32, i32* @SOF_PCBCLEARING, align 4
  %71 = load %struct.socket*, %struct.socket** %3, align 8
  %72 = getelementptr inbounds %struct.socket, %struct.socket* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %67, %11
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @soisdisconnected(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
