; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_monitor.c_mode.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_monitor.c_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_output = type { i32 }
%struct._GLFWmonitor = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_output*, i32, i8*, i8*, i8*)* @mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mode(i8* %0, %struct.wl_output* %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct._GLFWmonitor*, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.wl_output* %1, %struct.wl_output** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct._GLFWmonitor*
  store %struct._GLFWmonitor* %18, %struct._GLFWmonitor** %13, align 8
  %19 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 40, i1 false)
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %32 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  %36 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %37 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %35, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %6
  %42 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %43 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 2
  store i32 %46, i32* %15, align 4
  %47 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %48 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 40
  %54 = trunc i64 %53 to i32
  %55 = call %struct.TYPE_10__* @realloc(%struct.TYPE_10__* %50, i32 %54)
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %16, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %57 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %58 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %59, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %62 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %41, %6
  %65 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %66 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %70 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 %74
  %76 = bitcast %struct.TYPE_10__* %75 to i8*
  %77 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 40, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_10__* @realloc(%struct.TYPE_10__*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
