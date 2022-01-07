; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_shash.c_taosAddStrHashWithSize.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_shash.c_taosAddStrHashWithSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64, i64 (%struct.TYPE_4__*, i8*)*, i32, %struct.TYPE_5__** }

@.str = private unnamed_addr constant [20 x i8] c"hash:%d:%s is added\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @taosAddStrHashWithSize(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %12, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %4
  store i8* null, i8** %5, align 8
  br label %114

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %23
  store i8* null, i8** %5, align 8
  br label %114

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64 (%struct.TYPE_4__*, i8*)*, i64 (%struct.TYPE_4__*, i8*)** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 %36(%struct.TYPE_4__* %37, i8* %38)
  store i64 %39, i64* %10, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = call i32 @pthread_mutex_lock(i32* %41)
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 32, %44
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = add i64 %45, %47
  %49 = add i64 %48, 1
  %50 = call i64 @malloc(i64 %49)
  %51 = inttoptr i64 %50 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %11, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 @memcpy(i8* %54, i8* %55, i64 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %63, i64 %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr i8, i8* %71, i64 %73
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @strcpy(i8* %79, i8* %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %83, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %84, i64 %85
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = icmp ne %struct.TYPE_5__* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %33
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %93, i64 %94
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %97, align 8
  br label %98

98:                                               ; preds = %89, %33
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %102, i64 %103
  store %struct.TYPE_5__* %99, %struct.TYPE_5__** %104, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = call i32 @pthread_mutex_unlock(i32* %106)
  %108 = load i64, i64* %10, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @pTrace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %108, i8* %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %5, align 8
  br label %114

114:                                              ; preds = %98, %32, %22
  %115 = load i8*, i8** %5, align 8
  ret i8* %115
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pTrace(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
