; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_connectwait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_sock_connectwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32* (%struct.TYPE_10__*, i32)* }
%struct.TYPE_8__ = type { i32* }
%struct.timeval = type { i64, i32 }
%struct.timespec = type { i64, i32 }

@SS_ISCONNECTING = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@SHRT_MAX = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@EDOM = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@PR_F_WILLUNLOCK = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"sock_connectwait\00", align 1
@EINPROGRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sock_connectwait(%struct.TYPE_10__* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = call i32 @socket_lock(%struct.TYPE_10__* %8, i32 1)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SS_ISCONNECTING, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %16, %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  br label %43

32:                                               ; preds = %21
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SS_ISCONNECTED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i64 0, i64* %6, align 8
  br label %42

40:                                               ; preds = %32
  %41 = load i64, i64* @EINVAL, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %40, %39
  br label %43

43:                                               ; preds = %42, %26
  br label %150

44:                                               ; preds = %16
  %45 = load %struct.timeval*, %struct.timeval** %4, align 8
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %44
  %50 = load %struct.timeval*, %struct.timeval** %4, align 8
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SHRT_MAX, align 8
  %54 = load i64, i64* @hz, align 8
  %55 = sdiv i64 %53, %54
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %49
  %58 = load %struct.timeval*, %struct.timeval** %4, align 8
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.timeval*, %struct.timeval** %4, align 8
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %65, 1000000
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %57, %49, %44
  %68 = load i64, i64* @EDOM, align 8
  store i64 %68, i64* %6, align 8
  br label %150

69:                                               ; preds = %62
  %70 = load %struct.timeval*, %struct.timeval** %4, align 8
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i64 %72, i64* %73, align 8
  %74 = load %struct.timeval*, %struct.timeval** %4, align 8
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* @NSEC_PER_USEC, align 8
  %78 = trunc i64 %77 to i32
  %79 = mul nsw i32 %76, %78
  %80 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* @NSEC_PER_SEC, align 8
  %87 = sdiv i64 %85, %86
  %88 = add nsw i64 %82, %87
  %89 = sdiv i64 %88, 100
  %90 = load i64, i64* @SHRT_MAX, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %69
  %93 = load i64, i64* @EDOM, align 8
  store i64 %93, i64* %6, align 8
  br label %150

94:                                               ; preds = %69
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32* (%struct.TYPE_10__*, i32)*, i32* (%struct.TYPE_10__*, i32)** %98, align 8
  %100 = icmp ne i32* (%struct.TYPE_10__*, i32)* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32* (%struct.TYPE_10__*, i32)*, i32* (%struct.TYPE_10__*, i32)** %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = load i32, i32* @PR_F_WILLUNLOCK, align 4
  %109 = call i32* %106(%struct.TYPE_10__* %107, i32 %108)
  store i32* %109, i32** %5, align 8
  br label %118

110:                                              ; preds = %94
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %5, align 8
  br label %118

118:                                              ; preds = %110, %101
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = ptrtoint i32* %120 to i32
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* @PSOCK, align 4
  %124 = call i32 @msleep(i32 %121, i32* %122, i32 %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.timespec* %7)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @SS_ISCONNECTING, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %118
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i64, i64* @EINPROGRESS, align 8
  store i64 %137, i64* %6, align 8
  br label %150

138:                                              ; preds = %131, %118
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %6, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %143, %138
  br label %150

150:                                              ; preds = %149, %136, %92, %67, %43
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %152 = call i32 @socket_unlock(%struct.TYPE_10__* %151, i32 1)
  %153 = load i64, i64* %6, align 8
  ret i64 %153
}

declare dso_local i32 @socket_lock(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @msleep(i32, i32*, i32, i8*, %struct.timespec*) #1

declare dso_local i32 @socket_unlock(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
