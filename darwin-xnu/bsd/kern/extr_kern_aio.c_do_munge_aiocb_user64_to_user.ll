; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_do_munge_aiocb_user64_to_user.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_do_munge_aiocb_user64_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user64_aiocb = type { %struct.TYPE_12__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.user_aiocb = type { %struct.TYPE_11__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.user64_aiocb*, %struct.user_aiocb*)* @do_munge_aiocb_user64_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_munge_aiocb_user64_to_user(%struct.user64_aiocb* %0, %struct.user_aiocb* %1) #0 {
  %3 = alloca %struct.user64_aiocb*, align 8
  %4 = alloca %struct.user_aiocb*, align 8
  store %struct.user64_aiocb* %0, %struct.user64_aiocb** %3, align 8
  store %struct.user_aiocb* %1, %struct.user_aiocb** %4, align 8
  %5 = load %struct.user64_aiocb*, %struct.user64_aiocb** %3, align 8
  %6 = getelementptr inbounds %struct.user64_aiocb, %struct.user64_aiocb* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %9 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load %struct.user64_aiocb*, %struct.user64_aiocb** %3, align 8
  %11 = getelementptr inbounds %struct.user64_aiocb, %struct.user64_aiocb* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %14 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.user64_aiocb*, %struct.user64_aiocb** %3, align 8
  %16 = getelementptr inbounds %struct.user64_aiocb, %struct.user64_aiocb* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %19 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.user64_aiocb*, %struct.user64_aiocb** %3, align 8
  %21 = getelementptr inbounds %struct.user64_aiocb, %struct.user64_aiocb* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %24 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.user64_aiocb*, %struct.user64_aiocb** %3, align 8
  %26 = getelementptr inbounds %struct.user64_aiocb, %struct.user64_aiocb* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %29 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.user64_aiocb*, %struct.user64_aiocb** %3, align 8
  %31 = getelementptr inbounds %struct.user64_aiocb, %struct.user64_aiocb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %34 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.user64_aiocb*, %struct.user64_aiocb** %3, align 8
  %36 = getelementptr inbounds %struct.user64_aiocb, %struct.user64_aiocb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %40 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 4
  store i32 %38, i32* %41, align 4
  %42 = load %struct.user64_aiocb*, %struct.user64_aiocb** %3, align 8
  %43 = getelementptr inbounds %struct.user64_aiocb, %struct.user64_aiocb* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %47 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  %49 = load %struct.user64_aiocb*, %struct.user64_aiocb** %3, align 8
  %50 = getelementptr inbounds %struct.user64_aiocb, %struct.user64_aiocb* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %56 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  %60 = load %struct.user64_aiocb*, %struct.user64_aiocb** %3, align 8
  %61 = getelementptr inbounds %struct.user64_aiocb, %struct.user64_aiocb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %65 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.user64_aiocb*, %struct.user64_aiocb** %3, align 8
  %68 = getelementptr inbounds %struct.user64_aiocb, %struct.user64_aiocb* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %72 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
