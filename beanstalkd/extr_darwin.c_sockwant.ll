; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_darwin.c_sockwant.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_darwin.c_sockwant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }
%struct.kevent = type { i8*, %struct.TYPE_3__*, i32, i32, i32, i32, i32 }
%struct.timespec = type { i32, i32 }

@EV_DELETE = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i8* null, align 8
@EVFILT_WRITE = common dso_local global i8* null, align 8
@NOTE_LOWAT = common dso_local global i32 0, align 4
@Infinity = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@kq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sockwant(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.kevent], align 16
  %7 = alloca %struct.kevent*, align 8
  %8 = alloca %struct.timespec, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = bitcast [2 x %struct.kevent]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 80, i1 false)
  %10 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %6, i64 0, i64 0
  store %struct.kevent* %10, %struct.kevent** %7, align 8
  %11 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.kevent*, %struct.kevent** %7, align 8
  %21 = getelementptr inbounds %struct.kevent, %struct.kevent* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.kevent*, %struct.kevent** %7, align 8
  %26 = getelementptr inbounds %struct.kevent, %struct.kevent* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @EV_DELETE, align 4
  %28 = load %struct.kevent*, %struct.kevent** %7, align 8
  %29 = getelementptr inbounds %struct.kevent, %struct.kevent* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.kevent*, %struct.kevent** %7, align 8
  %31 = getelementptr inbounds %struct.kevent, %struct.kevent* %30, i32 1
  store %struct.kevent* %31, %struct.kevent** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %16, %2
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %34
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.kevent*, %struct.kevent** %7, align 8
  %42 = getelementptr inbounds %struct.kevent, %struct.kevent* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %4, align 4
  switch i32 %43, label %52 [
    i32 114, label %44
    i32 119, label %48
  ]

44:                                               ; preds = %37
  %45 = load i8*, i8** @EVFILT_READ, align 8
  %46 = load %struct.kevent*, %struct.kevent** %7, align 8
  %47 = getelementptr inbounds %struct.kevent, %struct.kevent* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %62

48:                                               ; preds = %37
  %49 = load i8*, i8** @EVFILT_WRITE, align 8
  %50 = load %struct.kevent*, %struct.kevent** %7, align 8
  %51 = getelementptr inbounds %struct.kevent, %struct.kevent* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %62

52:                                               ; preds = %37
  %53 = load i8*, i8** @EVFILT_READ, align 8
  %54 = load %struct.kevent*, %struct.kevent** %7, align 8
  %55 = getelementptr inbounds %struct.kevent, %struct.kevent* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @NOTE_LOWAT, align 4
  %57 = load %struct.kevent*, %struct.kevent** %7, align 8
  %58 = getelementptr inbounds %struct.kevent, %struct.kevent* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @Infinity, align 4
  %60 = load %struct.kevent*, %struct.kevent** %7, align 8
  %61 = getelementptr inbounds %struct.kevent, %struct.kevent* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %52, %48, %44
  %63 = load i32, i32* @EV_ADD, align 4
  %64 = load %struct.kevent*, %struct.kevent** %7, align 8
  %65 = getelementptr inbounds %struct.kevent, %struct.kevent* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = load %struct.kevent*, %struct.kevent** %7, align 8
  %68 = getelementptr inbounds %struct.kevent, %struct.kevent* %67, i32 0, i32 1
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %68, align 8
  %69 = load %struct.kevent*, %struct.kevent** %7, align 8
  %70 = getelementptr inbounds %struct.kevent, %struct.kevent* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.kevent*, %struct.kevent** %7, align 8
  %75 = getelementptr inbounds %struct.kevent, %struct.kevent* %74, i32 1
  store %struct.kevent* %75, %struct.kevent** %7, align 8
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %62, %34
  %79 = load i32, i32* @kq, align 4
  %80 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %6, i64 0, i64 0
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @kevent(i32 %79, %struct.kevent* %80, i32 %81, i32* null, i32 0, %struct.timespec* %8)
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, i32*, i32, %struct.timespec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
