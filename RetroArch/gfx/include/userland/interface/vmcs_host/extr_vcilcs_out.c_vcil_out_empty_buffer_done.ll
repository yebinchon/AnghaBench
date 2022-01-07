; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_out.c_vcil_out_empty_buffer_done.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_out.c_vcil_out_empty_buffer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_12__, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*, i32, %struct.TYPE_16__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcil_out_empty_buffer_done(i32* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %11, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %12, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %13, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %14, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %15, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %16, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %17, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %18, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %19, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = call i32 @memcpy(%struct.TYPE_16__* %48, %struct.TYPE_12__* %50, i32 40)
  %52 = load i32*, i32** %15, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 4
  store i32* %52, i32** %54, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 3
  store i32* %55, i32** %57, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load i32*, i32** %10, align 8
  store i32 0, i32* %67, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_15__*, i32, %struct.TYPE_16__*)*, i32 (%struct.TYPE_15__*, i32, %struct.TYPE_16__*)** %70, align 8
  %72 = call i32 @vcos_assert(i32 (%struct.TYPE_15__*, i32, %struct.TYPE_16__*)* %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32 (%struct.TYPE_15__*, i32, %struct.TYPE_16__*)*, i32 (%struct.TYPE_15__*, i32, %struct.TYPE_16__*)** %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %82 = call i32 %76(%struct.TYPE_15__* %77, i32 %80, %struct.TYPE_16__* %81)
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @vcos_assert(i32 (%struct.TYPE_15__*, i32, %struct.TYPE_16__*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
