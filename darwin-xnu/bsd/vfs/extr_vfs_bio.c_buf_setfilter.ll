; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_setfilter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_setfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { void (%struct.TYPE_6__*, i8*)*, i32, i8*, i32 }

@BL_BUSY = common dso_local global i32 0, align 4
@B_FILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buf_setfilter(%struct.TYPE_6__* %0, void (%struct.TYPE_6__*, i8*)* %1, i8* %2, void (%struct.TYPE_6__*, i8*)** %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca void (%struct.TYPE_6__*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca void (%struct.TYPE_6__*, i8*)**, align 8
  %10 = alloca i8**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store void (%struct.TYPE_6__*, i8*)* %1, void (%struct.TYPE_6__*, i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store void (%struct.TYPE_6__*, i8*)** %3, void (%struct.TYPE_6__*, i8*)*** %9, align 8
  store i8** %4, i8*** %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BL_BUSY, align 4
  %15 = call i32 @ISSET(i32 %13, i32 %14)
  %16 = call i32 @assert(i32 %15)
  %17 = load void (%struct.TYPE_6__*, i8*)**, void (%struct.TYPE_6__*, i8*)*** %9, align 8
  %18 = icmp ne void (%struct.TYPE_6__*, i8*)** %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load void (%struct.TYPE_6__*, i8*)*, void (%struct.TYPE_6__*, i8*)** %21, align 8
  %23 = load void (%struct.TYPE_6__*, i8*)**, void (%struct.TYPE_6__*, i8*)*** %9, align 8
  store void (%struct.TYPE_6__*, i8*)* %22, void (%struct.TYPE_6__*, i8*)** %23, align 8
  br label %24

24:                                               ; preds = %19, %5
  %25 = load i8**, i8*** %10, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** %10, align 8
  store i8* %30, i8** %31, align 8
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load void (%struct.TYPE_6__*, i8*)*, void (%struct.TYPE_6__*, i8*)** %7, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store void (%struct.TYPE_6__*, i8*)* %36, void (%struct.TYPE_6__*, i8*)** %38, align 8
  %39 = load void (%struct.TYPE_6__*, i8*)*, void (%struct.TYPE_6__*, i8*)** %7, align 8
  %40 = icmp ne void (%struct.TYPE_6__*, i8*)* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load i32, i32* @B_FILTER, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %54

47:                                               ; preds = %32
  %48 = load i32, i32* @B_FILTER, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %47, %41
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ISSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
