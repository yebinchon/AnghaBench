; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_dictEncObjKeyCompare.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_dictEncObjKeyCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@OBJ_ENCODING_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dictEncObjKeyCompare(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OBJ_ENCODING_INT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OBJ_ENCODING_INT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %4, align 4
  br label %53

35:                                               ; preds = %20, %3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = call %struct.TYPE_5__* @getDecodedObject(%struct.TYPE_5__* %36)
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = call %struct.TYPE_5__* @getDecodedObject(%struct.TYPE_5__* %38)
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %9, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dictSdsKeyCompare(i8* %40, i64 %43, i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = call i32 @decrRefCount(%struct.TYPE_5__* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = call i32 @decrRefCount(%struct.TYPE_5__* %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %35, %26
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_5__* @getDecodedObject(%struct.TYPE_5__*) #1

declare dso_local i32 @dictSdsKeyCompare(i8*, i64, i64) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
