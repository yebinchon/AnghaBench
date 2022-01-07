; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_IDAT_end.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_IDAT_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IDAT = type { %struct.file* }
%struct.file = type { i32, i32* }

@STATE_CHUNKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IDAT**)* @IDAT_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IDAT_end(%struct.IDAT** %0) #0 {
  %2 = alloca %struct.IDAT**, align 8
  %3 = alloca %struct.IDAT*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.IDAT** %0, %struct.IDAT*** %2, align 8
  %5 = load %struct.IDAT**, %struct.IDAT*** %2, align 8
  %6 = load %struct.IDAT*, %struct.IDAT** %5, align 8
  store %struct.IDAT* %6, %struct.IDAT** %3, align 8
  %7 = load %struct.IDAT*, %struct.IDAT** %3, align 8
  %8 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %7, i32 0, i32 0
  %9 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %9, %struct.file** %4, align 8
  %10 = load %struct.IDAT**, %struct.IDAT*** %2, align 8
  store %struct.IDAT* null, %struct.IDAT** %10, align 8
  %11 = load %struct.IDAT*, %struct.IDAT** %3, align 8
  %12 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %11, i32 0, i32 0
  %13 = load %struct.file*, %struct.file** %12, align 8
  %14 = call i32 @CLEAR(%struct.file* %13)
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 1
  %23 = call i32 @chunk_end(i32** %22)
  %24 = load i32, i32* @STATE_CHUNKS, align 4
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  ret void
}

declare dso_local i32 @CLEAR(%struct.file*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @chunk_end(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
