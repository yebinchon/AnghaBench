; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_set_net_wm_fullscreen.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_set_net_wm_fullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, i8*, i32, i32 }
%struct.TYPE_5__ = type { i8** }

@.str = private unnamed_addr constant [14 x i8] c"_NET_WM_STATE\00", align 1
@False = common dso_local global i32 0, align 4
@XA_NET_WM_STATE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"_NET_WM_STATE_FULLSCREEN\00", align 1
@XA_NET_WM_STATE_FULLSCREEN = common dso_local global i8* null, align 8
@ClientMessage = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@_NET_WM_STATE_ADD = common dso_local global i8* null, align 8
@SubstructureRedirectMask = common dso_local global i32 0, align 4
@SubstructureNotifyMask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x11_set_net_wm_fullscreen(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 48, i1 false)
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @False, align 4
  %9 = call i8* @XInternAtom(i32* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i8* %9, i8** @XA_NET_WM_STATE, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @False, align 4
  %12 = call i8* @XInternAtom(i32* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  store i8* %12, i8** @XA_NET_WM_STATE_FULLSCREEN, align 8
  %13 = load i32, i32* @ClientMessage, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @True, align 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** @XA_NET_WM_STATE, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 32, i32* %26, align 8
  %27 = load i8*, i8** @_NET_WM_STATE_ADD, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* %27, i8** %32, align 8
  %33 = load i8*, i8** @XA_NET_WM_STATE_FULLSCREEN, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  store i8* %33, i8** %38, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @DefaultRootWindow(i32* %40)
  %42 = load i32, i32* @False, align 4
  %43 = load i32, i32* @SubstructureRedirectMask, align 4
  %44 = load i32, i32* @SubstructureNotifyMask, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @XSendEvent(i32* %39, i32 %41, i32 %42, i32 %45, %struct.TYPE_7__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @XInternAtom(i32*, i8*, i32) #2

declare dso_local i32 @XSendEvent(i32*, i32, i32, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @DefaultRootWindow(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
