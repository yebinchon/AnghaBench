; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_struct.c_address.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_struct.c_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tag = type { i32, %struct.anon }
%struct.anon = type { i32 }

@__const.address.x = private unnamed_addr constant %struct.tag { i32 6, %struct.anon { i32 7 } }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @address() #0 {
  %1 = alloca %struct.tag, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tag*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = bitcast %struct.tag* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.tag* @__const.address.x to i8*), i64 8, i1 false)
  %8 = getelementptr inbounds %struct.tag, %struct.tag* %1, i32 0, i32 0
  store i32* %8, i32** %2, align 8
  %9 = getelementptr inbounds %struct.tag, %struct.tag* %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 6, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 7, i32 %15)
  %17 = getelementptr inbounds %struct.tag, %struct.tag* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 6, i32 %18)
  %20 = getelementptr inbounds %struct.tag, %struct.tag* %1, i32 0, i32 1
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 7, i32 %22)
  store %struct.tag* %1, %struct.tag** %4, align 8
  %24 = load %struct.tag*, %struct.tag** %4, align 8
  %25 = getelementptr inbounds %struct.tag, %struct.tag* %24, i32 0, i32 0
  store i32* %25, i32** %5, align 8
  %26 = load %struct.tag*, %struct.tag** %4, align 8
  %27 = getelementptr inbounds %struct.tag, %struct.tag* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 0
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 6, i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 7, i32 %33)
  %35 = load %struct.tag*, %struct.tag** %4, align 8
  %36 = getelementptr inbounds %struct.tag, %struct.tag* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 6, i32 %37)
  %39 = load %struct.tag*, %struct.tag** %4, align 8
  %40 = getelementptr inbounds %struct.tag, %struct.tag* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i32, ...) bitcast (i32 (...)* @expect to i32 (i32, i32, ...)*)(i32 7, i32 %42)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @expect(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
