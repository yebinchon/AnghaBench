; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_list.c_mmal_list_insert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_list.c_mmal_list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_16__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmal_list_insert(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i64 (%struct.TYPE_16__*, %struct.TYPE_16__*)* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64 (%struct.TYPE_16__*, %struct.TYPE_16__*)*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i64 (%struct.TYPE_16__*, %struct.TYPE_16__*)* %2, i64 (%struct.TYPE_16__*, %struct.TYPE_16__*)** %6, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = call i32 @mmal_list_lock(%struct.TYPE_15__* %8)
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = icmp eq %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = call i32 @mmal_list_unlock(%struct.TYPE_15__* %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = call i32 @mmal_list_push_front(%struct.TYPE_15__* %17, %struct.TYPE_16__* %18)
  br label %77

20:                                               ; preds = %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %7, align 8
  br label %24

24:                                               ; preds = %67, %20
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = icmp ne %struct.TYPE_16__* %25, null
  br i1 %26, label %27, label %71

27:                                               ; preds = %24
  %28 = load i64 (%struct.TYPE_16__*, %struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*, %struct.TYPE_16__*)** %6, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = call i64 %28(%struct.TYPE_16__* %29, %struct.TYPE_16__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %27
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = icmp eq %struct.TYPE_16__* %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %46, align 8
  br label %53

47:                                               ; preds = %33
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %52, align 8
  br label %53

53:                                               ; preds = %47, %43
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %58, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  store %struct.TYPE_16__* %59, %struct.TYPE_16__** %61, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = call i32 @mmal_list_unlock(%struct.TYPE_15__* %65)
  br label %77

67:                                               ; preds = %27
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %7, align 8
  br label %24

71:                                               ; preds = %24
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = call i32 @mmal_list_unlock(%struct.TYPE_15__* %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = call i32 @mmal_list_push_back(%struct.TYPE_15__* %74, %struct.TYPE_16__* %75)
  br label %77

77:                                               ; preds = %71, %53, %14
  ret void
}

declare dso_local i32 @mmal_list_lock(%struct.TYPE_15__*) #1

declare dso_local i32 @mmal_list_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @mmal_list_push_front(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @mmal_list_push_back(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
