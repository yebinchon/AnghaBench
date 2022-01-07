; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_monitor.c_geometry.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_monitor.c_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_output = type { i32 }
%struct._GLFWmonitor = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_output*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geometry(i8* %0, %struct.wl_output* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wl_output*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct._GLFWmonitor*, align 8
  store i8* %0, i8** %11, align 8
  store %struct.wl_output* %1, %struct.wl_output** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to %struct._GLFWmonitor*
  store %struct._GLFWmonitor* %23, %struct._GLFWmonitor** %21, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %21, align 8
  %26 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %21, align 8
  %30 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %21, align 8
  %34 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %21, align 8
  %37 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
