; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/pthreads/extr_vcos_pthreads.c_vcos_thread_entry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/pthreads/extr_vcos_pthreads.c_vcos_thread_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i8* (i32)*, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 (i32)* }

@_vcos_thread_current_key = common dso_local global i32 0, align 4
@PR_SET_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @vcos_thread_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vcos_thread_entry(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32 (i32, i32)*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @vcos_assert(i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @_vcos_thread_current_key, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = call i32 @pthread_setspecific(i32 %15, %struct.TYPE_5__* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i8* (i32)*, i8* (i32)** %24, align 8
  %26 = bitcast i8* (i32)* %25 to i32 (i32, i32)*
  store i32 (i32, i32)* %26, i32 (i32, i32)** %6, align 8
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %6, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 %27(i32 0, i32 %30)
  store i8* null, i8** %4, align 8
  br label %40

32:                                               ; preds = %1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i8* (i32)*, i8* (i32)** %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i8* %35(i32 %38)
  store i8* %39, i8** %4, align 8
  br label %40

40:                                               ; preds = %32, %22
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %69, %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32 (i32)*, i32 (i32)** %48, align 8
  %50 = icmp ne i32 (i32)* %49, null
  br i1 %50, label %51, label %72

51:                                               ; preds = %41
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32 (i32)*, i32 (i32)** %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %59(i32 %67)
  br label %69

69:                                               ; preds = %51
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %41

72:                                               ; preds = %41
  %73 = load i8*, i8** %4, align 8
  ret i8* %73
}

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @pthread_setspecific(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
