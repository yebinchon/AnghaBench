; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_monitor.c_mode.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_monitor.c_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_output = type { i32 }
%struct._GLFWmonitor = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_output*, i32, i32, i32, i32)* @mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mode(i8* %0, %struct.wl_output* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct._GLFWmonitor*, align 8
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.wl_output* %1, %struct.wl_output** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct._GLFWmonitor*
  store %struct._GLFWmonitor* %18, %struct._GLFWmonitor** %13, align 8
  %19 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 20, i1 false)
  %20 = load i32, i32* %10, align 4
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %11, align 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %12, align 4
  %27 = sdiv i32 %26, 1000
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %33 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %38 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %36, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %6
  %43 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %44 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 2
  store i32 %47, i32* %15, align 4
  %48 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %49 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 20
  %55 = trunc i64 %54 to i32
  %56 = call %struct.TYPE_10__* @realloc(%struct.TYPE_10__* %51, i32 %55)
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %16, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %58 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %59 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %60, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %63 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %42, %6
  %66 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %67 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = load %struct._GLFWmonitor*, %struct._GLFWmonitor** %13, align 8
  %71 = getelementptr inbounds %struct._GLFWmonitor, %struct._GLFWmonitor* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %75
  %77 = bitcast %struct.TYPE_10__* %76 to i8*
  %78 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 20, i1 false)
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
