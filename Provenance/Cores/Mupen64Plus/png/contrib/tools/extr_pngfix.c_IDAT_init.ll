; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_IDAT_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_IDAT_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IDAT = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.file* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.file = type { %struct.IDAT*, i32*, i32 (%struct.file*, i32)*, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IDAT*, %struct.file*)* @IDAT_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IDAT_init(%struct.IDAT* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.IDAT*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.IDAT* %0, %struct.IDAT** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load %struct.file*, %struct.file** %4, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.IDAT*, %struct.IDAT** %12, align 8
  %14 = icmp eq %struct.IDAT* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.IDAT*, %struct.IDAT** %3, align 8
  %18 = call i32 @CLEAR(%struct.IDAT* byval(%struct.IDAT) align 8 %17)
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = load %struct.IDAT*, %struct.IDAT** %3, align 8
  %21 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %20, i32 0, i32 3
  store %struct.file* %19, %struct.file** %21, align 8
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.IDAT*, %struct.IDAT** %3, align 8
  %26 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %25, i32 0, i32 0
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %26, align 8
  %27 = load %struct.IDAT*, %struct.IDAT** %3, align 8
  %28 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.IDAT*, %struct.IDAT** %3, align 8
  %33 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.IDAT*, %struct.IDAT** %3, align 8
  %37 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %36, i32 0, i32 1
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %37, align 8
  %38 = load %struct.IDAT*, %struct.IDAT** %3, align 8
  %39 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %38, i32 0, i32 2
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %39, align 8
  %40 = load %struct.file*, %struct.file** %4, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 2
  %42 = load i32 (%struct.file*, i32)*, i32 (%struct.file*, i32)** %41, align 8
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = call i32 %42(%struct.file* %43, i32 0)
  %45 = load %struct.file*, %struct.file** %4, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.IDAT*, %struct.IDAT** %3, align 8
  %52 = load %struct.file*, %struct.file** %4, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 0
  store %struct.IDAT* %51, %struct.IDAT** %53, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CLEAR(%struct.IDAT* byval(%struct.IDAT) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
