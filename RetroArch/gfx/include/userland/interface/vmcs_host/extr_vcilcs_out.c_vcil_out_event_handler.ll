; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_out.c_vcil_out_event_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_out.c_vcil_out_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i32, i32, i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcil_out_event_handler(i32* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %12, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %13, align 8
  %23 = load i32*, i32** %10, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_9__*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32, i32, i32)** %26, align 8
  %28 = call i32 @vcos_assert(i32 (%struct.TYPE_9__*, i32, i32, i32, i32, i32)* %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_9__*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32, i32, i32)** %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %32(%struct.TYPE_9__* %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48)
  ret void
}

declare dso_local i32 @vcos_assert(i32 (%struct.TYPE_9__*, i32, i32, i32, i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
