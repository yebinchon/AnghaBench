; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_printf_ether_header.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_printf_ether_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_header = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [70 x i8] c"%02x:%02x:%02x:%02x:%02x:%02x > %02x:%02x:%02x:%02x:%02x:%02x 0x%04x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ether_header*)* @printf_ether_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printf_ether_header(%struct.ether_header* %0) #0 {
  %2 = alloca %struct.ether_header*, align 8
  store %struct.ether_header* %0, %struct.ether_header** %2, align 8
  %3 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %4 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %9 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %14 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %19 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %24 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %29 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %34 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %39 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %44 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %49 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %54 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %59 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ether_header*, %struct.ether_header** %2, align 8
  %64 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ntohs(i32 %65)
  %67 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %12, i32 %17, i32 %22, i32 %27, i32 %32, i32 %37, i32 %42, i32 %47, i32 %52, i32 %57, i32 %62, i32 %66)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
