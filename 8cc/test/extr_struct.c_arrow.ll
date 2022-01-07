; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_struct.c_arrow.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_struct.c_arrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cell = type { i32, %struct.cell* }

@__const.arrow.v1 = private unnamed_addr constant %struct.cell { i32 5, %struct.cell* null }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @arrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arrow() #0 {
  %1 = alloca %struct.cell, align 8
  %2 = alloca %struct.cell, align 8
  %3 = alloca %struct.cell, align 8
  %4 = alloca %struct.cell*, align 8
  %5 = bitcast %struct.cell* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.cell* @__const.arrow.v1 to i8*), i64 16, i1 false)
  %6 = getelementptr inbounds %struct.cell, %struct.cell* %2, i32 0, i32 0
  store i32 6, i32* %6, align 8
  %7 = getelementptr inbounds %struct.cell, %struct.cell* %2, i32 0, i32 1
  store %struct.cell* %1, %struct.cell** %7, align 8
  %8 = getelementptr inbounds %struct.cell, %struct.cell* %3, i32 0, i32 0
  store i32 7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.cell, %struct.cell* %3, i32 0, i32 1
  store %struct.cell* %2, %struct.cell** %9, align 8
  store %struct.cell* %3, %struct.cell** %4, align 8
  %10 = getelementptr inbounds %struct.cell, %struct.cell* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @expect(i32 7, i32 %11)
  %13 = load %struct.cell*, %struct.cell** %4, align 8
  %14 = getelementptr inbounds %struct.cell, %struct.cell* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @expect(i32 7, i32 %15)
  %17 = load %struct.cell*, %struct.cell** %4, align 8
  %18 = getelementptr inbounds %struct.cell, %struct.cell* %17, i32 0, i32 1
  %19 = load %struct.cell*, %struct.cell** %18, align 8
  %20 = getelementptr inbounds %struct.cell, %struct.cell* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @expect(i32 6, i32 %21)
  %23 = load %struct.cell*, %struct.cell** %4, align 8
  %24 = getelementptr inbounds %struct.cell, %struct.cell* %23, i32 0, i32 1
  %25 = load %struct.cell*, %struct.cell** %24, align 8
  %26 = getelementptr inbounds %struct.cell, %struct.cell* %25, i32 0, i32 1
  %27 = load %struct.cell*, %struct.cell** %26, align 8
  %28 = getelementptr inbounds %struct.cell, %struct.cell* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @expect(i32 5, i32 %29)
  %31 = load %struct.cell*, %struct.cell** %4, align 8
  %32 = getelementptr inbounds %struct.cell, %struct.cell* %31, i32 0, i32 0
  store i32 10, i32* %32, align 8
  %33 = load %struct.cell*, %struct.cell** %4, align 8
  %34 = getelementptr inbounds %struct.cell, %struct.cell* %33, i32 0, i32 1
  %35 = load %struct.cell*, %struct.cell** %34, align 8
  %36 = getelementptr inbounds %struct.cell, %struct.cell* %35, i32 0, i32 0
  store i32 11, i32* %36, align 8
  %37 = load %struct.cell*, %struct.cell** %4, align 8
  %38 = getelementptr inbounds %struct.cell, %struct.cell* %37, i32 0, i32 1
  %39 = load %struct.cell*, %struct.cell** %38, align 8
  %40 = getelementptr inbounds %struct.cell, %struct.cell* %39, i32 0, i32 1
  %41 = load %struct.cell*, %struct.cell** %40, align 8
  %42 = getelementptr inbounds %struct.cell, %struct.cell* %41, i32 0, i32 0
  store i32 12, i32* %42, align 8
  %43 = load %struct.cell*, %struct.cell** %4, align 8
  %44 = getelementptr inbounds %struct.cell, %struct.cell* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @expect(i32 10, i32 %45)
  %47 = load %struct.cell*, %struct.cell** %4, align 8
  %48 = getelementptr inbounds %struct.cell, %struct.cell* %47, i32 0, i32 1
  %49 = load %struct.cell*, %struct.cell** %48, align 8
  %50 = getelementptr inbounds %struct.cell, %struct.cell* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @expect(i32 11, i32 %51)
  %53 = load %struct.cell*, %struct.cell** %4, align 8
  %54 = getelementptr inbounds %struct.cell, %struct.cell* %53, i32 0, i32 1
  %55 = load %struct.cell*, %struct.cell** %54, align 8
  %56 = getelementptr inbounds %struct.cell, %struct.cell* %55, i32 0, i32 1
  %57 = load %struct.cell*, %struct.cell** %56, align 8
  %58 = getelementptr inbounds %struct.cell, %struct.cell* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @expect(i32 12, i32 %59)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @expect(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
