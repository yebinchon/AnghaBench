; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_btlog.c_btlog_add_record_to_freelist.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_btlog.c_btlog_add_record_to_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i32 }

@BTLOG_RECORDINDEX_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64)* @btlog_add_record_to_freelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btlog_add_record_to_freelist(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @BTLOG_RECORDINDEX_NONE, align 8
  store i64 %8, i64* %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call %struct.TYPE_7__* @lookup_btrecord(%struct.TYPE_6__* %9, i64 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = call i32 @TAILQ_EMPTY(i32* %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.TYPE_7__* @lookup_btrecord(%struct.TYPE_6__* %21, i64 %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BTLOG_RECORDINDEX_NONE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %27
  %51 = load i64, i64* @BTLOG_RECORDINDEX_NONE, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %50, %27
  br label %109

61:                                               ; preds = %2
  br label %62

62:                                               ; preds = %107, %61
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @BTLOG_RECORDINDEX_NONE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %108

66:                                               ; preds = %62
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %4, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %66
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* %4, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %4, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %72
  %96 = load i64, i64* %5, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %72
  br label %108

100:                                              ; preds = %66
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %5, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = load i64, i64* %5, align 8
  %106 = call %struct.TYPE_7__* @lookup_btrecord(%struct.TYPE_6__* %104, i64 %105)
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %6, align 8
  br label %107

107:                                              ; preds = %100
  br label %62

108:                                              ; preds = %99, %62
  br label %109

109:                                              ; preds = %108, %60
  ret void
}

declare dso_local %struct.TYPE_7__* @lookup_btrecord(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
