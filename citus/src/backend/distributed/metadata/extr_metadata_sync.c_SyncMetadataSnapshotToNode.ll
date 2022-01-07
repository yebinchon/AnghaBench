; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_metadata_sync.c_SyncMetadataSnapshotToNode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_metadata_sync.c_SyncMetadataSnapshotToNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @SyncMetadataSnapshotToNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SyncMetadataSnapshotToNode(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = call i8* (...) @CitusExtensionOwnerName()
  store i8* %12, i8** %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @LocalGroupIdUpdateCommand(i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = call i32* (...) @MetadataDropCommands()
  store i32* %17, i32** %8, align 8
  %18 = call i32* (...) @MetadataCreateCommands()
  store i32* %18, i32** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32* @list_make1(i8* %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32* @list_concat(i32* %21, i32* %22)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* @list_concat(i32* %24, i32* %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @SendCommandListToWorkerInSingleTransaction(i32 %32, i32 %35, i8* %36, i32* %37)
  store i32 1, i32* %3, align 4
  br label %50

39:                                               ; preds = %2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @SendOptionalCommandListToWorkerInTransaction(i32 %42, i32 %45, i8* %46, i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %39, %29
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i8* @CitusExtensionOwnerName(...) #1

declare dso_local i8* @LocalGroupIdUpdateCommand(i32) #1

declare dso_local i32* @MetadataDropCommands(...) #1

declare dso_local i32* @MetadataCreateCommands(...) #1

declare dso_local i32* @list_make1(i8*) #1

declare dso_local i32* @list_concat(i32*, i32*) #1

declare dso_local i32 @SendCommandListToWorkerInSingleTransaction(i32, i32, i8*, i32*) #1

declare dso_local i32 @SendOptionalCommandListToWorkerInTransaction(i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
