; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_copyout_dynkqextinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_copyout_dynkqextinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32 }

@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kevent_copyout_dynkqextinfo(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.kqueue*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 @kqhash_lock(i32* %21)
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.kqueue* @kqueue_hash_lookup(i32* %23, i32 %24)
  store %struct.kqueue* %25, %struct.kqueue** %13, align 8
  %26 = load %struct.kqueue*, %struct.kqueue** %13, align 8
  %27 = icmp ne %struct.kqueue* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %5
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @kqhash_unlock(i32* %29)
  %31 = load i32, i32* @ESRCH, align 4
  store i32 %31, i32* %6, align 4
  br label %47

32:                                               ; preds = %5
  %33 = load %struct.kqueue*, %struct.kqueue** %13, align 8
  %34 = call i32 @kqueue_retain(%struct.kqueue* %33)
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @kqhash_unlock(i32* %35)
  %37 = load i32*, i32** %12, align 8
  %38 = load %struct.kqueue*, %struct.kqueue** %13, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @pid_kqueue_extinfo(i32* %37, %struct.kqueue* %38, i32 %39, i32 %40, i32* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load %struct.kqueue*, %struct.kqueue** %13, align 8
  %45 = call i32 @kqueue_release_last(i32* %43, %struct.kqueue* %44)
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %32, %28
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kqhash_lock(i32*) #1

declare dso_local %struct.kqueue* @kqueue_hash_lookup(i32*, i32) #1

declare dso_local i32 @kqhash_unlock(i32*) #1

declare dso_local i32 @kqueue_retain(%struct.kqueue*) #1

declare dso_local i32 @pid_kqueue_extinfo(i32*, %struct.kqueue*, i32, i32, i32*) #1

declare dso_local i32 @kqueue_release_last(i32*, %struct.kqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
