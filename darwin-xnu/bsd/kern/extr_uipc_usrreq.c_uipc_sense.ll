; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_uipc_sense.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_uipc_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i8* }
%struct.unpcb = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.socket* }
%struct.stat64 = type { i64, i8*, i8* }
%struct.stat = type { i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@unp_ino = common dso_local global i32 0, align 4
@NODEV = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i8*, i32)* @uipc_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uipc_sense(%struct.socket* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.unpcb*, align 8
  %9 = alloca %struct.socket*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat64*, align 8
  %12 = alloca %struct.stat*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = call %struct.unpcb* @sotounpcb(%struct.socket* %13)
  store %struct.unpcb* %14, %struct.unpcb** %8, align 8
  %15 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %16 = icmp eq %struct.unpcb* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %89

19:                                               ; preds = %3
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SOCK_STREAM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %19
  %30 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %31 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %36 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.socket*, %struct.socket** %38, align 8
  store %struct.socket* %39, %struct.socket** %9, align 8
  %40 = load %struct.socket*, %struct.socket** %9, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr i8, i8* %44, i64 %43
  store i8* %45, i8** %10, align 8
  br label %46

46:                                               ; preds = %34, %29, %19
  %47 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %48 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @unp_ino, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @unp_ino, align 4
  %54 = sext i32 %52 to i64
  %55 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %56 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = bitcast i8* %61 to %struct.stat64*
  store %struct.stat64* %62, %struct.stat64** %11, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.stat64*, %struct.stat64** %11, align 8
  %65 = getelementptr inbounds %struct.stat64, %struct.stat64* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @NODEV, align 8
  %67 = load %struct.stat64*, %struct.stat64** %11, align 8
  %68 = getelementptr inbounds %struct.stat64, %struct.stat64* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %70 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.stat64*, %struct.stat64** %11, align 8
  %73 = getelementptr inbounds %struct.stat64, %struct.stat64* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %88

74:                                               ; preds = %57
  %75 = load i8*, i8** %6, align 8
  %76 = bitcast i8* %75 to %struct.stat*
  store %struct.stat* %76, %struct.stat** %12, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load %struct.stat*, %struct.stat** %12, align 8
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** @NODEV, align 8
  %81 = load %struct.stat*, %struct.stat** %12, align 8
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %84 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.stat*, %struct.stat** %12, align 8
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %74, %60
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
