; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/queues/extr_message_queue.c_msg_queue_push.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/queues/extr_message_queue.c_msg_queue_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, %struct.queue_elem** }
%struct.queue_elem = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msg_queue_push(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.queue_elem*, align 8
  %17 = alloca %struct.queue_elem*, align 8
  %18 = alloca %struct.queue_elem*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store %struct.queue_elem* null, %struct.queue_elem** %16, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %7
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp uge i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21, %7
  br label %106

30:                                               ; preds = %21
  %31 = call i64 @calloc(i32 1, i32 16)
  %32 = inttoptr i64 %31 to %struct.queue_elem*
  store %struct.queue_elem* %32, %struct.queue_elem** %16, align 8
  %33 = load %struct.queue_elem*, %struct.queue_elem** %16, align 8
  %34 = icmp ne %struct.queue_elem* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %106

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.queue_elem*, %struct.queue_elem** %16, align 8
  %39 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.queue_elem*, %struct.queue_elem** %16, align 8
  %42 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i8*, i8** %9, align 8
  %47 = call i32* @strdup(i8* %46)
  br label %49

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32* [ %47, %45 ], [ null, %48 ]
  %51 = load %struct.queue_elem*, %struct.queue_elem** %16, align 8
  %52 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.queue_elem*, %struct.queue_elem** %16, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load %struct.queue_elem**, %struct.queue_elem*** %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.queue_elem*, %struct.queue_elem** %56, i64 %59
  store %struct.queue_elem* %53, %struct.queue_elem** %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  store i64 %63, i64* %15, align 8
  br label %65

65:                                               ; preds = %90, %49
  %66 = load i64, i64* %15, align 8
  %67 = icmp ugt i64 %66, 1
  br i1 %67, label %68, label %106

68:                                               ; preds = %65
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load %struct.queue_elem**, %struct.queue_elem*** %70, align 8
  %72 = load i64, i64* %15, align 8
  %73 = lshr i64 %72, 1
  %74 = getelementptr inbounds %struct.queue_elem*, %struct.queue_elem** %71, i64 %73
  %75 = load %struct.queue_elem*, %struct.queue_elem** %74, align 8
  store %struct.queue_elem* %75, %struct.queue_elem** %17, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load %struct.queue_elem**, %struct.queue_elem*** %77, align 8
  %79 = load i64, i64* %15, align 8
  %80 = getelementptr inbounds %struct.queue_elem*, %struct.queue_elem** %78, i64 %79
  %81 = load %struct.queue_elem*, %struct.queue_elem** %80, align 8
  store %struct.queue_elem* %81, %struct.queue_elem** %18, align 8
  %82 = load %struct.queue_elem*, %struct.queue_elem** %18, align 8
  %83 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.queue_elem*, %struct.queue_elem** %17, align 8
  %86 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ule i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %68
  br label %106

90:                                               ; preds = %68
  %91 = load %struct.queue_elem*, %struct.queue_elem** %18, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load %struct.queue_elem**, %struct.queue_elem*** %93, align 8
  %95 = load i64, i64* %15, align 8
  %96 = lshr i64 %95, 1
  %97 = getelementptr inbounds %struct.queue_elem*, %struct.queue_elem** %94, i64 %96
  store %struct.queue_elem* %91, %struct.queue_elem** %97, align 8
  %98 = load %struct.queue_elem*, %struct.queue_elem** %17, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load %struct.queue_elem**, %struct.queue_elem*** %100, align 8
  %102 = load i64, i64* %15, align 8
  %103 = getelementptr inbounds %struct.queue_elem*, %struct.queue_elem** %101, i64 %102
  store %struct.queue_elem* %98, %struct.queue_elem** %103, align 8
  %104 = load i64, i64* %15, align 8
  %105 = lshr i64 %104, 1
  store i64 %105, i64* %15, align 8
  br label %65

106:                                              ; preds = %29, %35, %89, %65
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
