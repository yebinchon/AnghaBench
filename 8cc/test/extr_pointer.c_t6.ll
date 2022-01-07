; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_pointer.c_t6.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_pointer.c_t6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tag = type { i32, %struct.tag* }

@__const.t6.node1 = private unnamed_addr constant %struct.tag { i32 1, %struct.tag* null }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @t6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t6() #0 {
  %1 = alloca %struct.tag, align 8
  %2 = alloca %struct.tag, align 8
  %3 = alloca %struct.tag, align 8
  %4 = alloca %struct.tag*, align 8
  %5 = bitcast %struct.tag* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.tag* @__const.t6.node1 to i8*), i64 16, i1 false)
  %6 = getelementptr inbounds %struct.tag, %struct.tag* %2, i32 0, i32 0
  store i32 2, i32* %6, align 8
  %7 = getelementptr inbounds %struct.tag, %struct.tag* %2, i32 0, i32 1
  store %struct.tag* %1, %struct.tag** %7, align 8
  %8 = getelementptr inbounds %struct.tag, %struct.tag* %3, i32 0, i32 0
  store i32 3, i32* %8, align 8
  %9 = getelementptr inbounds %struct.tag, %struct.tag* %3, i32 0, i32 1
  store %struct.tag* %2, %struct.tag** %9, align 8
  store %struct.tag* %3, %struct.tag** %4, align 8
  %10 = load %struct.tag*, %struct.tag** %4, align 8
  %11 = getelementptr inbounds %struct.tag, %struct.tag* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @expect(i32 3, i32 %12)
  %14 = load %struct.tag*, %struct.tag** %4, align 8
  %15 = getelementptr inbounds %struct.tag, %struct.tag* %14, i32 0, i32 1
  %16 = load %struct.tag*, %struct.tag** %15, align 8
  %17 = getelementptr inbounds %struct.tag, %struct.tag* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @expect(i32 2, i32 %18)
  %20 = load %struct.tag*, %struct.tag** %4, align 8
  %21 = getelementptr inbounds %struct.tag, %struct.tag* %20, i32 0, i32 1
  %22 = load %struct.tag*, %struct.tag** %21, align 8
  %23 = getelementptr inbounds %struct.tag, %struct.tag* %22, i32 0, i32 1
  %24 = load %struct.tag*, %struct.tag** %23, align 8
  %25 = getelementptr inbounds %struct.tag, %struct.tag* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @expect(i32 1, i32 %26)
  %28 = load %struct.tag*, %struct.tag** %4, align 8
  %29 = getelementptr inbounds %struct.tag, %struct.tag* %28, i32 0, i32 1
  %30 = load %struct.tag*, %struct.tag** %29, align 8
  %31 = getelementptr inbounds %struct.tag, %struct.tag* %30, i32 0, i32 1
  %32 = load %struct.tag*, %struct.tag** %31, align 8
  %33 = load %struct.tag*, %struct.tag** %4, align 8
  %34 = getelementptr inbounds %struct.tag, %struct.tag* %33, i32 0, i32 1
  store %struct.tag* %32, %struct.tag** %34, align 8
  %35 = load %struct.tag*, %struct.tag** %4, align 8
  %36 = getelementptr inbounds %struct.tag, %struct.tag* %35, i32 0, i32 1
  %37 = load %struct.tag*, %struct.tag** %36, align 8
  %38 = getelementptr inbounds %struct.tag, %struct.tag* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @expect(i32 1, i32 %39)
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
