; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_fasttrap_isa.c_fasttrap_return_probe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_fasttrap_isa.c_fasttrap_return_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64, i64, i8*, i8* }

@DATAMODEL_LP64 = common dso_local global i32 0, align 4
@DATAMODEL_ILP32 = common dso_local global i32 0, align 4
@P_LINVFORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fasttrap_return_probe(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @is_saved_state64(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call %struct.TYPE_10__* @saved_state64(i32* %14)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  %16 = load i32, i32* @DATAMODEL_LP64, align 4
  store i32 %16, i32* %5, align 4
  br label %21

17:                                               ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call %struct.TYPE_11__* @saved_state32(i32* %18)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %4, align 8
  %20 = load i32, i32* @DATAMODEL_ILP32, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = call %struct.TYPE_13__* (...) @current_proc()
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %6, align 8
  %23 = call i32 (...) @current_thread()
  %24 = call i32 @get_bsdthread_info(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %7, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %8, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %9, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  store i8* null, i8** %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  store i8* null, i8** %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = call i32 (...) @proc_list_lock()
  br label %42

42:                                               ; preds = %49, %21
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @P_LINVFORK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %6, align 8
  br label %42

53:                                               ; preds = %42
  %54 = call i32 (...) @proc_list_unlock()
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @DATAMODEL_LP64, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  br label %67

63:                                               ; preds = %53
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32*, i32** %2, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @fasttrap_return_common(i32* %68, i8* %69, i32 %72, i8* %73)
  ret i32 0
}

declare dso_local i64 @is_saved_state64(i32*) #1

declare dso_local %struct.TYPE_10__* @saved_state64(i32*) #1

declare dso_local %struct.TYPE_11__* @saved_state32(i32*) #1

declare dso_local %struct.TYPE_13__* @current_proc(...) #1

declare dso_local i32 @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @fasttrap_return_common(i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
