; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_if_request_classq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_if_request_classq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i64 }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fq_if_request_classq(%struct.ifclassq* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ifclassq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.ifclassq* %0, %struct.ifclassq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.ifclassq*, %struct.ifclassq** %4, align 8
  %10 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  %13 = load %struct.ifclassq*, %struct.ifclassq** %4, align 8
  %14 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IFCQ_CONVERT_LOCK(i32 %17)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %43 [
    i32 131, label %20
    i32 130, label %23
    i32 132, label %28
    i32 128, label %33
    i32 129, label %38
  ]

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = call i32 @fq_if_purge(%struct.TYPE_7__* %21)
  br label %43

23:                                               ; preds = %3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = call i32 @fq_if_purge_sc(%struct.TYPE_7__* %24, i32* %26)
  br label %43

28:                                               ; preds = %3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = call i32 @fq_if_event(%struct.TYPE_7__* %29, i32 %31)
  br label %43

33:                                               ; preds = %3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = call i32 @fq_if_throttle(%struct.TYPE_7__* %34, i32* %36)
  br label %43

38:                                               ; preds = %3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = call i32 @fq_if_stat_sc(%struct.TYPE_7__* %39, i32* %41)
  br label %43

43:                                               ; preds = %3, %38, %33, %28, %23, %20
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_CONVERT_LOCK(i32) #1

declare dso_local i32 @fq_if_purge(%struct.TYPE_7__*) #1

declare dso_local i32 @fq_if_purge_sc(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @fq_if_event(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fq_if_throttle(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @fq_if_stat_sc(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
