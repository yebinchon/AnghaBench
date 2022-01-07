; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_deflate.c_deflateSetHeader.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_deflate.c_deflateSetHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.internal_state_deflate = type { i32, i32 }

@Z_NULL = common dso_local global %struct.TYPE_4__* null, align 8
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deflateSetHeader(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.internal_state_deflate*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = bitcast %struct.TYPE_4__* %9 to %struct.internal_state_deflate*
  store %struct.internal_state_deflate* %10, %struct.internal_state_deflate** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Z_NULL, align 8
  %13 = icmp eq %struct.TYPE_4__* %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Z_NULL, align 8
  %19 = icmp eq %struct.TYPE_4__* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %2
  %21 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %14
  %23 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %6, align 8
  %24 = getelementptr inbounds %struct.internal_state_deflate, %struct.internal_state_deflate* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %6, align 8
  %32 = getelementptr inbounds %struct.internal_state_deflate, %struct.internal_state_deflate* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @Z_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %27, %20
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
