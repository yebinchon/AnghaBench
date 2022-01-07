; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_getlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_getlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.inpcb = type { i32 }
%struct.mptcb = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"tcp_getlock: so=%p usecount=%x lrh= %s\0A\00", align 1
@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"tcp_getlock: so=%p NULL so_pcb %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tcp_getlock(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca %struct.mptcb*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = call %struct.inpcb* @sotoinpcb(%struct.socket* %8)
  store %struct.inpcb* %9, %struct.inpcb** %6, align 8
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %2
  %15 = load %struct.socket*, %struct.socket** %4, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.socket*, %struct.socket** %4, align 8
  %21 = load %struct.socket*, %struct.socket** %4, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.socket*, %struct.socket** %4, align 8
  %25 = call i32 @solockhistory_nr(%struct.socket* %24)
  %26 = call i32 (i8*, %struct.socket*, i64, ...) @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.socket* %20, i64 %23, i32 %25)
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.socket*, %struct.socket** %4, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SOF_MP_SUBFLOW, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.socket*, %struct.socket** %4, align 8
  %36 = call i32 @sototcpcb(%struct.socket* %35)
  %37 = call %struct.mptcb* @tptomptp(i32 %36)
  store %struct.mptcb* %37, %struct.mptcb** %7, align 8
  %38 = load %struct.mptcb*, %struct.mptcb** %7, align 8
  %39 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32* @mpte_getlock(i32 %40, i32 %41)
  store i32* %42, i32** %3, align 8
  br label %59

43:                                               ; preds = %27
  %44 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %45 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %44, i32 0, i32 0
  store i32* %45, i32** %3, align 8
  br label %59

46:                                               ; preds = %2
  %47 = load %struct.socket*, %struct.socket** %4, align 8
  %48 = load %struct.socket*, %struct.socket** %4, align 8
  %49 = call i32 @solockhistory_nr(%struct.socket* %48)
  %50 = sext i32 %49 to i64
  %51 = call i32 (i8*, %struct.socket*, i64, ...) @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.socket* %47, i64 %50)
  %52 = load %struct.socket*, %struct.socket** %4, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %3, align 8
  br label %59

59:                                               ; preds = %46, %43, %34
  %60 = load i32*, i32** %3, align 8
  ret i32* %60
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @panic(i8*, %struct.socket*, i64, ...) #1

declare dso_local i32 @solockhistory_nr(%struct.socket*) #1

declare dso_local %struct.mptcb* @tptomptp(i32) #1

declare dso_local i32 @sototcpcb(%struct.socket*) #1

declare dso_local i32* @mpte_getlock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
