; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_fill_kqueue_dyninfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_fill_kqueue_dyninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32 }
%struct.kqueue_dyninfo = type { i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.kqworkloop = type { i32, i32, %struct.kqrequest }
%struct.kqrequest = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@KQ_WORKLOOP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TRP_PRIORITY = common dso_local global i32 0, align 4
@TRP_POLICY = common dso_local global i32 0, align 4
@TRP_CPUPERCENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqueue*, %struct.kqueue_dyninfo*)* @fill_kqueue_dyninfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_kqueue_dyninfo(%struct.kqueue* %0, %struct.kqueue_dyninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kqueue*, align 8
  %5 = alloca %struct.kqueue_dyninfo*, align 8
  %6 = alloca %struct.kqworkloop*, align 8
  %7 = alloca %struct.kqrequest*, align 8
  %8 = alloca %struct.TYPE_2__, align 4
  %9 = alloca i32, align 4
  store %struct.kqueue* %0, %struct.kqueue** %4, align 8
  store %struct.kqueue_dyninfo* %1, %struct.kqueue_dyninfo** %5, align 8
  %10 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %11 = bitcast %struct.kqueue* %10 to %struct.kqworkloop*
  store %struct.kqworkloop* %11, %struct.kqworkloop** %6, align 8
  %12 = load %struct.kqworkloop*, %struct.kqworkloop** %6, align 8
  %13 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %12, i32 0, i32 2
  store %struct.kqrequest* %13, %struct.kqrequest** %7, align 8
  %14 = bitcast %struct.TYPE_2__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 20, i1 false)
  %15 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %16 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @KQ_WORKLOOP, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %116

23:                                               ; preds = %2
  %24 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %25 = load %struct.kqueue_dyninfo*, %struct.kqueue_dyninfo** %5, align 8
  %26 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %25, i32 0, i32 10
  %27 = call i32 @fill_kqueueinfo(%struct.kqueue* %24, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %116

31:                                               ; preds = %23
  %32 = load %struct.kqworkloop*, %struct.kqworkloop** %6, align 8
  %33 = call i32 @kq_req_lock(%struct.kqworkloop* %32)
  %34 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %35 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @thread_tid(i32 %36)
  %38 = load %struct.kqueue_dyninfo*, %struct.kqueue_dyninfo** %5, align 8
  %39 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %38, i32 0, i32 9
  store i8* %37, i8** %39, align 8
  %40 = load %struct.kqworkloop*, %struct.kqworkloop** %6, align 8
  %41 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @thread_tid(i32 %42)
  %44 = load %struct.kqueue_dyninfo*, %struct.kqueue_dyninfo** %5, align 8
  %45 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %44, i32 0, i32 8
  store i8* %43, i8** %45, align 8
  %46 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %47 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.kqueue_dyninfo*, %struct.kqueue_dyninfo** %5, align 8
  %50 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %52 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.kqueue_dyninfo*, %struct.kqueue_dyninfo** %5, align 8
  %55 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 8
  %56 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %57 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.kqueue_dyninfo*, %struct.kqueue_dyninfo** %5, align 8
  %60 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %62 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.kqueue_dyninfo*, %struct.kqueue_dyninfo** %5, align 8
  %65 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.kqueue_dyninfo*, %struct.kqueue_dyninfo** %5, align 8
  %67 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.kqworkloop*, %struct.kqworkloop** %6, align 8
  %69 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 4
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @TRP_PRIORITY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %31
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.kqueue_dyninfo*, %struct.kqueue_dyninfo** %5, align 8
  %81 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %85

82:                                               ; preds = %31
  %83 = load %struct.kqueue_dyninfo*, %struct.kqueue_dyninfo** %5, align 8
  %84 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %83, i32 0, i32 2
  store i32 0, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %77
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TRP_POLICY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.kqueue_dyninfo*, %struct.kqueue_dyninfo** %5, align 8
  %95 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %99

96:                                               ; preds = %85
  %97 = load %struct.kqueue_dyninfo*, %struct.kqueue_dyninfo** %5, align 8
  %98 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %97, i32 0, i32 1
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %91
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @TRP_CPUPERCENT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.kqueue_dyninfo*, %struct.kqueue_dyninfo** %5, align 8
  %109 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %113

110:                                              ; preds = %99
  %111 = load %struct.kqueue_dyninfo*, %struct.kqueue_dyninfo** %5, align 8
  %112 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %105
  %114 = load %struct.kqworkloop*, %struct.kqworkloop** %6, align 8
  %115 = call i32 @kq_req_unlock(%struct.kqworkloop* %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %113, %29, %21
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fill_kqueueinfo(%struct.kqueue*, i32*) #2

declare dso_local i32 @kq_req_lock(%struct.kqworkloop*) #2

declare dso_local i8* @thread_tid(i32) #2

declare dso_local i32 @kq_req_unlock(%struct.kqworkloop*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
