; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soclose_wait_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soclose_wait_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32* (%struct.socket*, i32)* }
%struct.TYPE_5__ = type { i32* }

@PR_F_WILLUNLOCK = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@SOF_UPCALLCLOSEWAIT = common dso_local global i32 0, align 4
@SB_UPCALL = common dso_local global i32 0, align 4
@SOF_CLOSEWAIT = common dso_local global i32 0, align 4
@PZERO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"soclose_wait_locked\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @soclose_wait_locked(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca i32*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = getelementptr inbounds %struct.socket, %struct.socket* %4, i32 0, i32 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %7, align 8
  %9 = icmp ne i32* (%struct.socket*, i32)* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %14, align 8
  %16 = load %struct.socket*, %struct.socket** %2, align 8
  %17 = load i32, i32* @PR_F_WILLUNLOCK, align 4
  %18 = call i32* %15(%struct.socket* %16, i32 %17)
  store i32* %18, i32** %3, align 8
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.socket*, %struct.socket** %2, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %3, align 8
  br label %27

27:                                               ; preds = %19, %10
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %30 = call i32 @LCK_MTX_ASSERT(i32* %28, i32 %29)
  %31 = load %struct.socket*, %struct.socket** %2, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.socket*, %struct.socket** %2, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SOF_UPCALLCLOSEWAIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35, %27
  br label %79

43:                                               ; preds = %35
  %44 = load i32, i32* @SB_UPCALL, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.socket*, %struct.socket** %2, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %45
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @SB_UPCALL, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.socket*, %struct.socket** %2, align 8
  %54 = getelementptr inbounds %struct.socket, %struct.socket* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %52
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @SOF_CLOSEWAIT, align 4
  %59 = load %struct.socket*, %struct.socket** %2, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.socket*, %struct.socket** %2, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 1
  %65 = ptrtoint i32* %64 to i32
  %66 = load i32*, i32** %3, align 8
  %67 = load i64, i64* @PZERO, align 8
  %68 = sub nsw i64 %67, 1
  %69 = call i32 @msleep(i32 %65, i32* %66, i64 %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null)
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %72 = call i32 @LCK_MTX_ASSERT(i32* %70, i32 %71)
  %73 = load i32, i32* @SOF_CLOSEWAIT, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.socket*, %struct.socket** %2, align 8
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %43, %42
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @msleep(i32, i32*, i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
