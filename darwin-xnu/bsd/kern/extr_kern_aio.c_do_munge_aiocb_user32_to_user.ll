; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_do_munge_aiocb_user32_to_user.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_do_munge_aiocb_user32_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user32_aiocb = type { %struct.TYPE_10__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.user_aiocb = type { %struct.TYPE_9__, i32, i32, i32, i8*, i32, i32 }
%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.user32_aiocb*, %struct.user_aiocb*)* @do_munge_aiocb_user32_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_munge_aiocb_user32_to_user(%struct.user32_aiocb* %0, %struct.user_aiocb* %1) #0 {
  %3 = alloca %struct.user32_aiocb*, align 8
  %4 = alloca %struct.user_aiocb*, align 8
  store %struct.user32_aiocb* %0, %struct.user32_aiocb** %3, align 8
  store %struct.user_aiocb* %1, %struct.user_aiocb** %4, align 8
  %5 = load %struct.user32_aiocb*, %struct.user32_aiocb** %3, align 8
  %6 = getelementptr inbounds %struct.user32_aiocb, %struct.user32_aiocb* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %9 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load %struct.user32_aiocb*, %struct.user32_aiocb** %3, align 8
  %11 = getelementptr inbounds %struct.user32_aiocb, %struct.user32_aiocb* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %14 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load %struct.user32_aiocb*, %struct.user32_aiocb** %3, align 8
  %16 = getelementptr inbounds %struct.user32_aiocb, %struct.user32_aiocb* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @CAST_USER_ADDR_T(i32 %17)
  %19 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %20 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load %struct.user32_aiocb*, %struct.user32_aiocb** %3, align 8
  %22 = getelementptr inbounds %struct.user32_aiocb, %struct.user32_aiocb* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %25 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.user32_aiocb*, %struct.user32_aiocb** %3, align 8
  %27 = getelementptr inbounds %struct.user32_aiocb, %struct.user32_aiocb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %30 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.user32_aiocb*, %struct.user32_aiocb** %3, align 8
  %32 = getelementptr inbounds %struct.user32_aiocb, %struct.user32_aiocb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %35 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.user32_aiocb*, %struct.user32_aiocb** %3, align 8
  %37 = getelementptr inbounds %struct.user32_aiocb, %struct.user32_aiocb* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %41 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 8
  %43 = load %struct.user32_aiocb*, %struct.user32_aiocb** %3, align 8
  %44 = getelementptr inbounds %struct.user32_aiocb, %struct.user32_aiocb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %48 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.user32_aiocb*, %struct.user32_aiocb** %3, align 8
  %51 = getelementptr inbounds %struct.user32_aiocb, %struct.user32_aiocb* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %56 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 8
  %60 = load %struct.user32_aiocb*, %struct.user32_aiocb** %3, align 8
  %61 = getelementptr inbounds %struct.user32_aiocb, %struct.user32_aiocb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @CAST_USER_ADDR_T(i32 %63)
  %65 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %66 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  %68 = load %struct.user32_aiocb*, %struct.user32_aiocb** %3, align 8
  %69 = getelementptr inbounds %struct.user32_aiocb, %struct.user32_aiocb* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @CAST_USER_ADDR_T(i32 %71)
  %73 = load %struct.user_aiocb*, %struct.user_aiocb** %4, align 8
  %74 = getelementptr inbounds %struct.user_aiocb, %struct.user_aiocb* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  ret void
}

declare dso_local i8* @CAST_USER_ADDR_T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
