; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_proc_copy_uptrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_proc_copy_uptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, i64, i64, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kevent_proc_copy_uptrs(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.filedesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %7, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.filedesc*, %struct.filedesc** %17, align 8
  store %struct.filedesc* %18, %struct.filedesc** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 4
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  br label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = call i32 @proc_fdlock(%struct.TYPE_9__* %30)
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %49, %29
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %35 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %40 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @klist_copy_udata(i32* %44, i32* %45, i64 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %32

52:                                               ; preds = %32
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = call i32 @knhash_lock(%struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = call i32 @proc_fdunlock(%struct.TYPE_9__* %55)
  %57 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %58 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %81, %61
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %65 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = add nsw i32 %67, 1
  %69 = icmp slt i32 %63, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %62
  %71 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %72 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32*, i32** %5, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @klist_copy_udata(i32* %76, i32* %77, i64 %78, i32 %79)
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %70
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %62

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84, %52
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = call i32 @knhash_unlock(%struct.TYPE_9__* %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = call i32 @kqhash_lock(%struct.TYPE_9__* %88)
  %90 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %91 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %85
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %115, %94
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %98 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = add nsw i32 %100, 1
  %102 = icmp slt i32 %96, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %95
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %106 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32*, i32** %5, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @kqlist_copy_dynamicids(%struct.TYPE_9__* %104, i32* %110, i32* %111, i64 %112, i32 %113)
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %103
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %95

118:                                              ; preds = %95
  br label %119

119:                                              ; preds = %118, %85
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = call i32 @kqhash_unlock(%struct.TYPE_9__* %120)
  %122 = load i32, i32* %9, align 4
  ret i32 %122
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @proc_fdlock(%struct.TYPE_9__*) #1

declare dso_local i32 @klist_copy_udata(i32*, i32*, i64, i32) #1

declare dso_local i32 @knhash_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_9__*) #1

declare dso_local i32 @knhash_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @kqhash_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @kqlist_copy_dynamicids(%struct.TYPE_9__*, i32*, i32*, i64, i32) #1

declare dso_local i32 @kqhash_unlock(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
