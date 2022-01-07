; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knotes_dealloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knotes_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, i64, %struct.klist*, %struct.klist* }
%struct.klist = type { i32 }
%struct.kqueue = type { i32 }
%struct.knote = type { i32 }

@M_KQUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @knotes_dealloc(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.filedesc*, align 8
  %4 = alloca %struct.kqueue*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.klist*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  store %struct.filedesc* %10, %struct.filedesc** %3, align 8
  store %struct.klist* null, %struct.klist** %6, align 8
  %11 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %12 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %45, %15
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %19 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %32, %22
  %24 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %25 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %24, i32 0, i32 3
  %26 = load %struct.klist*, %struct.klist** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.klist, %struct.klist* %26, i64 %28
  %30 = call %struct.knote* @SLIST_FIRST(%struct.klist* %29)
  store %struct.knote* %30, %struct.knote** %5, align 8
  %31 = icmp ne %struct.knote* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %23
  %33 = load %struct.knote*, %struct.knote** %5, align 8
  %34 = call %struct.kqueue* @knote_get_kq(%struct.knote* %33)
  store %struct.kqueue* %34, %struct.kqueue** %4, align 8
  %35 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %36 = call i32 @kqlock(%struct.kqueue* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = call i32 @proc_fdunlock(%struct.TYPE_7__* %37)
  %39 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %40 = load %struct.knote*, %struct.knote** %5, align 8
  %41 = call i32 @knote_drop(%struct.kqueue* %39, %struct.knote* %40, i32* null)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = call i32 @proc_fdlock(%struct.TYPE_7__* %42)
  br label %23

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %16

48:                                               ; preds = %16
  %49 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %50 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %49, i32 0, i32 3
  %51 = load %struct.klist*, %struct.klist** %50, align 8
  %52 = load i32, i32* @M_KQUEUE, align 4
  %53 = call i32 @FREE(%struct.klist* %51, i32 %52)
  %54 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %55 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %54, i32 0, i32 3
  store %struct.klist* null, %struct.klist** %55, align 8
  br label %56

56:                                               ; preds = %48, %1
  %57 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %58 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %57, i32 0, i32 0
  store i32 -1, i32* %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = call i32 @knhash_lock(%struct.TYPE_7__* %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = call i32 @proc_fdunlock(%struct.TYPE_7__* %61)
  %63 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %64 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %109

67:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %98, %67
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %71 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = icmp sle i32 %69, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %85, %75
  %77 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %78 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %77, i32 0, i32 2
  %79 = load %struct.klist*, %struct.klist** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.klist, %struct.klist* %79, i64 %81
  %83 = call %struct.knote* @SLIST_FIRST(%struct.klist* %82)
  store %struct.knote* %83, %struct.knote** %5, align 8
  %84 = icmp ne %struct.knote* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %76
  %86 = load %struct.knote*, %struct.knote** %5, align 8
  %87 = call %struct.kqueue* @knote_get_kq(%struct.knote* %86)
  store %struct.kqueue* %87, %struct.kqueue** %4, align 8
  %88 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %89 = call i32 @kqlock(%struct.kqueue* %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %91 = call i32 @knhash_unlock(%struct.TYPE_7__* %90)
  %92 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %93 = load %struct.knote*, %struct.knote** %5, align 8
  %94 = call i32 @knote_drop(%struct.kqueue* %92, %struct.knote* %93, i32* null)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = call i32 @knhash_lock(%struct.TYPE_7__* %95)
  br label %76

97:                                               ; preds = %76
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %68

101:                                              ; preds = %68
  %102 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %103 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %102, i32 0, i32 2
  %104 = load %struct.klist*, %struct.klist** %103, align 8
  store %struct.klist* %104, %struct.klist** %6, align 8
  %105 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %106 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %108 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %107, i32 0, i32 2
  store %struct.klist* null, %struct.klist** %108, align 8
  br label %109

109:                                              ; preds = %101, %56
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %111 = call i32 @knhash_unlock(%struct.TYPE_7__* %110)
  %112 = load %struct.klist*, %struct.klist** %6, align 8
  %113 = icmp ne %struct.klist* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.klist*, %struct.klist** %6, align 8
  %116 = load i32, i32* @M_KQUEUE, align 4
  %117 = call i32 @FREE(%struct.klist* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %109
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %120 = call i32 @proc_fdlock(%struct.TYPE_7__* %119)
  ret void
}

declare dso_local %struct.knote* @SLIST_FIRST(%struct.klist*) #1

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i32 @kqlock(%struct.kqueue*) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_7__*) #1

declare dso_local i32 @knote_drop(%struct.kqueue*, %struct.knote*, i32*) #1

declare dso_local i32 @proc_fdlock(%struct.TYPE_7__*) #1

declare dso_local i32 @FREE(%struct.klist*, i32) #1

declare dso_local i32 @knhash_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @knhash_unlock(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
