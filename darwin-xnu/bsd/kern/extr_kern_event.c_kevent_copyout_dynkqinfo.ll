; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_copyout_dynkqinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_copyout_dynkqinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32 }
%struct.kqueue_dyninfo = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kevent_copyout_dynkqinfo(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.kqueue*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.kqueue_dyninfo, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = bitcast %struct.kqueue_dyninfo* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load i32*, i32** %12, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 4
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @ENOBUFS, align 4
  store i32 %27, i32* %6, align 4
  br label %71

28:                                               ; preds = %5
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @kqhash_lock(i32* %29)
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.kqueue* @kqueue_hash_lookup(i32* %31, i32 %32)
  store %struct.kqueue* %33, %struct.kqueue** %13, align 8
  %34 = load %struct.kqueue*, %struct.kqueue** %13, align 8
  %35 = icmp ne %struct.kqueue* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @kqhash_unlock(i32* %37)
  %39 = load i32, i32* @ESRCH, align 4
  store i32 %39, i32* %6, align 4
  br label %71

40:                                               ; preds = %28
  %41 = load %struct.kqueue*, %struct.kqueue** %13, align 8
  %42 = call i32 @kqueue_retain(%struct.kqueue* %41)
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @kqhash_unlock(i32* %43)
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp uge i64 %46, 4
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  store i32 4, i32* %10, align 4
  %49 = load %struct.kqueue*, %struct.kqueue** %13, align 8
  %50 = call i32 @fill_kqueue_dyninfo(%struct.kqueue* %49, %struct.kqueue_dyninfo* %15)
  store i32 %50, i32* %14, align 4
  br label %55

51:                                               ; preds = %40
  store i32 4, i32* %10, align 4
  %52 = load %struct.kqueue*, %struct.kqueue** %13, align 8
  %53 = getelementptr inbounds %struct.kqueue_dyninfo, %struct.kqueue_dyninfo* %15, i32 0, i32 0
  %54 = call i32 @fill_kqueueinfo(%struct.kqueue* %52, i32* %53)
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @copyout(%struct.kqueue_dyninfo* %15, i32 %59, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %11, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %58, %55
  %67 = load i32*, i32** %12, align 8
  %68 = load %struct.kqueue*, %struct.kqueue** %13, align 8
  %69 = call i32 @kqueue_release_last(i32* %67, %struct.kqueue* %68)
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %66, %36, %26
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @kqhash_lock(i32*) #2

declare dso_local %struct.kqueue* @kqueue_hash_lookup(i32*, i32) #2

declare dso_local i32 @kqhash_unlock(i32*) #2

declare dso_local i32 @kqueue_retain(%struct.kqueue*) #2

declare dso_local i32 @fill_kqueue_dyninfo(%struct.kqueue*, %struct.kqueue_dyninfo*) #2

declare dso_local i32 @fill_kqueueinfo(%struct.kqueue*, i32*) #2

declare dso_local i32 @copyout(%struct.kqueue_dyninfo*, i32, i32) #2

declare dso_local i32 @kqueue_release_last(i32*, %struct.kqueue*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
