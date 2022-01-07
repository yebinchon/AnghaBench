; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_z_zone.c_Z_Init.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_z_zone.c_Z_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, i8*, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@mainzone = common dso_local global %struct.TYPE_6__* null, align 8
@PU_STATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Z_Init() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32, align 4
  %3 = call i64 @I_ZoneBase(i32* %2)
  %4 = inttoptr i64 %3 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** @mainzone, align 8
  %5 = load i32, i32* %2, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mainzone, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mainzone, align 8
  %9 = bitcast %struct.TYPE_6__* %8 to i32*
  %10 = getelementptr inbounds i32, i32* %9, i64 48
  %11 = bitcast i32* %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %1, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mainzone, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mainzone, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mainzone, align 8
  %19 = bitcast %struct.TYPE_6__* %18 to i8*
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mainzone, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* @PU_STATIC, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mainzone, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mainzone, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mainzone, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mainzone, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 48
  %43 = trunc i64 %42 to i32
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  ret void
}

declare dso_local i64 @I_ZoneBase(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
