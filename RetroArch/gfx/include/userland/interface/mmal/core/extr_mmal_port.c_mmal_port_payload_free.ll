; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_payload_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_payload_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i64, i64, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, i32*)*, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s(%i:%i) port %p, payload %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmal_port_payload_free(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = icmp ne %struct.TYPE_12__* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %2
  br label %56

13:                                               ; preds = %7
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i32 %26, %struct.TYPE_12__* %27, i32* %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %13
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @vcos_free(i32* %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = call i32 @mmal_port_release(%struct.TYPE_12__* %39)
  br label %56

41:                                               ; preds = %13
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = call i32 @LOCK_PORT(%struct.TYPE_12__* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_12__*, i32*)*, i32 (%struct.TYPE_12__*, i32*)** %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 %48(%struct.TYPE_12__* %49, i32* %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = call i32 @UNLOCK_PORT(%struct.TYPE_12__* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = call i32 @mmal_port_release(%struct.TYPE_12__* %54)
  br label %56

56:                                               ; preds = %41, %36, %12
  ret void
}

declare dso_local i32 @LOG_TRACE(i8*, i32, i32, i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @vcos_free(i32*) #1

declare dso_local i32 @mmal_port_release(%struct.TYPE_12__*) #1

declare dso_local i32 @LOCK_PORT(%struct.TYPE_12__*) #1

declare dso_local i32 @UNLOCK_PORT(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
