; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/spawn/extr_posix_spawn.c_posix_spawnattr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i32, i32*, i32*, i32*, i64, i64, i64, i64, i32, i64, i64, i64, i32*, i32, i64, i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@POSIX_SPAWN_PROCESS_TYPE_DEFAULT = common dso_local global i32 0, align 4
@POSIX_SPAWN_PROC_CLAMP_NONE = common dso_local global i32 0, align 4
@POSIX_SPAWN_DARWIN_ROLE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_spawnattr_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_2__**, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to %struct.TYPE_2__**
  store %struct.TYPE_2__** %6, %struct.TYPE_2__*** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = call i64 @malloc(i32 4)
  %8 = inttoptr i64 %7 to %struct.TYPE_2__*
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %9, align 8
  %10 = icmp eq %struct.TYPE_2__* %8, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  store i32 %12, i32* %4, align 4
  br label %91

13:                                               ; preds = %1
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 23
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 22
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 21
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 20
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 19
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @memset(i32 %29, i32 0, i32 4)
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 18
  store i32* null, i32** %33, align 8
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 17
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 16
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 15
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @POSIX_SPAWN_PROCESS_TYPE_DEFAULT, align 4
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 14
  store i32 %43, i32* %46, align 8
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 13
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 -1, i32* %55, align 4
  %56 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 -1, i32* %58, align 8
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 12
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 11
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 10
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 9
  store i32* null, i32** %70, align 8
  %71 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 8
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 7
  store i32* null, i32** %76, align 8
  %77 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i32 1, i32* %79, align 4
  %80 = load i32, i32* @POSIX_SPAWN_PROC_CLAMP_NONE, align 4
  %81 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 6
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @POSIX_SPAWN_DARWIN_ROLE_NONE, align 4
  %85 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 5
  store i32 %84, i32* %87, align 8
  %88 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %3, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %13, %11
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
