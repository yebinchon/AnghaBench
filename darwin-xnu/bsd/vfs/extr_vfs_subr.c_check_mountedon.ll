; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_check_mountedon.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_check_mountedon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i64, i32, %struct.TYPE_8__* }

@speclisth = common dso_local global %struct.TYPE_8__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_mountedon(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %43, %3
  %12 = call i32 (...) @SPECHASH_LOCK()
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @speclisth, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @SPECHASH(i64 %14)
  %16 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %13, i64 %15
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %8, align 8
  br label %18

18:                                               ; preds = %72, %11
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %76

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21
  br label %72

34:                                               ; preds = %27
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = call i32 (...) @SPECHASH_UNLOCK()
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @vnode_getwithvid(%struct.TYPE_8__* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %11

44:                                               ; preds = %34
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = call i32 @vnode_lock_spin(%struct.TYPE_8__* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %44
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %65

56:                                               ; preds = %51, %44
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = call i32 @vnode_unlock(%struct.TYPE_8__* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = call i32 @vfs_mountedon(%struct.TYPE_8__* %59)
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 1, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %56
  br label %68

65:                                               ; preds = %51
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = call i32 @vnode_unlock(%struct.TYPE_8__* %66)
  br label %68

68:                                               ; preds = %65, %64
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = call i32 @vnode_put(%struct.TYPE_8__* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %78

72:                                               ; preds = %33
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %8, align 8
  br label %18

76:                                               ; preds = %18
  %77 = call i32 (...) @SPECHASH_UNLOCK()
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %68
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @SPECHASH_LOCK(...) #1

declare dso_local i64 @SPECHASH(i64) #1

declare dso_local i32 @SPECHASH_UNLOCK(...) #1

declare dso_local i64 @vnode_getwithvid(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vnode_lock_spin(%struct.TYPE_8__*) #1

declare dso_local i32 @vnode_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @vfs_mountedon(%struct.TYPE_8__*) #1

declare dso_local i32 @vnode_put(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
