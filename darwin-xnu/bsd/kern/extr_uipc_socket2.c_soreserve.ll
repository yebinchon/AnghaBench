; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_soreserve.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_soreserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i8* }

@MCLBYTES = common dso_local global i64 0, align 8
@SB_SEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soreserve(%struct.socket* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.socket*, %struct.socket** %5, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @sbreserve(%struct.TYPE_3__* %9, i8* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %89

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  store i8* %15, i8** %18, align 8
  br label %19

19:                                               ; preds = %14
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 1
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @sbreserve(%struct.TYPE_3__* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %74

26:                                               ; preds = %19
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  store i8* %27, i8** %30, align 8
  br label %31

31:                                               ; preds = %26
  %32 = load %struct.socket*, %struct.socket** %5, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.socket*, %struct.socket** %5, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i64, i64* @MCLBYTES, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.socket*, %struct.socket** %5, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.socket*, %struct.socket** %5, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load %struct.socket*, %struct.socket** %5, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %58, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %53
  %65 = load %struct.socket*, %struct.socket** %5, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.socket*, %struct.socket** %5, align 8
  %71 = getelementptr inbounds %struct.socket, %struct.socket* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  br label %73

73:                                               ; preds = %64, %53
  store i32 0, i32* %4, align 4
  br label %91

74:                                               ; preds = %25
  %75 = load i32, i32* @SB_SEL, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.socket*, %struct.socket** %5, align 8
  %78 = getelementptr inbounds %struct.socket, %struct.socket* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %76
  store i32 %81, i32* %79, align 4
  %82 = load %struct.socket*, %struct.socket** %5, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = call i32 @selthreadclear(i32* %84)
  %86 = load %struct.socket*, %struct.socket** %5, align 8
  %87 = getelementptr inbounds %struct.socket, %struct.socket* %86, i32 0, i32 0
  %88 = call i32 @sbrelease(%struct.TYPE_3__* %87)
  br label %89

89:                                               ; preds = %74, %13
  %90 = load i32, i32* @ENOBUFS, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %73
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @sbreserve(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @selthreadclear(i32*) #1

declare dso_local i32 @sbrelease(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
