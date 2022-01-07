; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_keysock.c_key_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_keysock.c_key_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.socket*, i32, %struct.proc*)* }
%struct.socket = type { i32, i32, i8* }
%struct.proc = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.keycb = type { %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32*, i32* }
%struct.TYPE_5__ = type { i64 }

@EISCONN = common dso_local global i32 0, align 4
@M_PCB = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@key_src = common dso_local global i32 0, align 4
@key_dst = common dso_local global i32 0, align 4
@raw_usrreqs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@SOF_PCBCLEARING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"key_usrreq: key_usrreq results %d\0A\00", align 1
@PF_KEY = common dso_local global i64 0, align 8
@key_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SO_USELOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.proc*)* @key_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_attach(%struct.socket* %0, i32 %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.keycb*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.proc* %2, %struct.proc** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call i64 @sotorawcb(%struct.socket* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EISCONN, align 4
  store i32 %14, i32* %4, align 4
  br label %86

15:                                               ; preds = %3
  %16 = load i32, i32* @M_PCB, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @_MALLOC(i32 40, i32 %16, i32 %19)
  %21 = inttoptr i64 %20 to %struct.keycb*
  store %struct.keycb* %21, %struct.keycb** %8, align 8
  %22 = load %struct.keycb*, %struct.keycb** %8, align 8
  %23 = icmp eq %struct.keycb* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @ENOBUFS, align 4
  store i32 %25, i32* %4, align 4
  br label %86

26:                                               ; preds = %15
  %27 = load %struct.keycb*, %struct.keycb** %8, align 8
  %28 = bitcast %struct.keycb* %27 to i8*
  %29 = load %struct.socket*, %struct.socket** %5, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.keycb*, %struct.keycb** %8, align 8
  %32 = getelementptr inbounds %struct.keycb, %struct.keycb* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.keycb*, %struct.keycb** %8, align 8
  %34 = getelementptr inbounds %struct.keycb, %struct.keycb* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.keycb*, %struct.keycb** %8, align 8
  %36 = getelementptr inbounds %struct.keycb, %struct.keycb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32* @key_src, i32** %37, align 8
  %38 = load %struct.keycb*, %struct.keycb** %8, align 8
  %39 = getelementptr inbounds %struct.keycb, %struct.keycb* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32* @key_dst, i32** %40, align 8
  %41 = load i32 (%struct.socket*, i32, %struct.proc*)*, i32 (%struct.socket*, i32, %struct.proc*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @raw_usrreqs, i32 0, i32 0), align 8
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.proc*, %struct.proc** %7, align 8
  %45 = call i32 %41(%struct.socket* %42, i32 %43, %struct.proc* %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.socket*, %struct.socket** %5, align 8
  %47 = call i64 @sotorawcb(%struct.socket* %46)
  %48 = inttoptr i64 %47 to %struct.keycb*
  store %struct.keycb* %48, %struct.keycb** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %26
  %52 = load %struct.keycb*, %struct.keycb** %8, align 8
  %53 = load i32, i32* @M_PCB, align 4
  %54 = call i32 @_FREE(%struct.keycb* %52, i32 %53)
  %55 = load %struct.socket*, %struct.socket** %5, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 2
  store i8* null, i8** %56, align 8
  %57 = load i32, i32* @SOF_PCBCLEARING, align 4
  %58 = load %struct.socket*, %struct.socket** %5, align 8
  %59 = getelementptr inbounds %struct.socket, %struct.socket* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %86

65:                                               ; preds = %26
  %66 = load %struct.keycb*, %struct.keycb** %8, align 8
  %67 = getelementptr inbounds %struct.keycb, %struct.keycb* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PF_KEY, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @key_cb, i32 0, i32 1), align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @key_cb, i32 0, i32 1), align 4
  br label %76

76:                                               ; preds = %73, %65
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @key_cb, i32 0, i32 0), align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @key_cb, i32 0, i32 0), align 4
  %79 = load %struct.socket*, %struct.socket** %5, align 8
  %80 = call i32 @soisconnected(%struct.socket* %79)
  %81 = load i32, i32* @SO_USELOOPBACK, align 4
  %82 = load %struct.socket*, %struct.socket** %5, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %76, %51, %24, %13
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @sotorawcb(%struct.socket*) #1

declare dso_local i64 @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @_FREE(%struct.keycb*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @soisconnected(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
