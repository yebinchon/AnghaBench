; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_chunk_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_chunk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk = type { i64, i64, i32, i32, i32, i32, %struct.file* }
%struct.file = type { %struct.chunk*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chunk*, %struct.file*)* @chunk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chunk_init(%struct.chunk* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.chunk*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.chunk* %0, %struct.chunk** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load %struct.file*, %struct.file** %4, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.chunk*, %struct.chunk** %6, align 8
  %8 = icmp eq %struct.chunk* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.chunk*, %struct.chunk** %3, align 8
  %12 = call i32 @CLEAR(%struct.chunk* byval(%struct.chunk) align 8 %11)
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = load %struct.chunk*, %struct.chunk** %3, align 8
  %15 = getelementptr inbounds %struct.chunk, %struct.chunk* %14, i32 0, i32 6
  store %struct.file* %13, %struct.file** %15, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.chunk*, %struct.chunk** %3, align 8
  %20 = getelementptr inbounds %struct.chunk, %struct.chunk* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.chunk*, %struct.chunk** %3, align 8
  %25 = getelementptr inbounds %struct.chunk, %struct.chunk* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.chunk*, %struct.chunk** %3, align 8
  %30 = getelementptr inbounds %struct.chunk, %struct.chunk* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.chunk*, %struct.chunk** %3, align 8
  %35 = getelementptr inbounds %struct.chunk, %struct.chunk* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.chunk*, %struct.chunk** %3, align 8
  %37 = getelementptr inbounds %struct.chunk, %struct.chunk* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.chunk*, %struct.chunk** %3, align 8
  %39 = getelementptr inbounds %struct.chunk, %struct.chunk* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.chunk*, %struct.chunk** %3, align 8
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  store %struct.chunk* %40, %struct.chunk** %42, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CLEAR(%struct.chunk* byval(%struct.chunk) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
