; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_get_soprocinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_get_soprocinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.socket* }
%struct.socket = type { i64, i32, i64, i32, i32 }
%struct.so_procinfo = type { i64, i32, i64, i32, i32 }

@SOF_DELEGATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inp_get_soprocinfo(%struct.inpcb* %0, %struct.so_procinfo* %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.so_procinfo*, align 8
  %5 = alloca %struct.socket*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store %struct.so_procinfo* %1, %struct.so_procinfo** %4, align 8
  %6 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %7 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %6, i32 0, i32 0
  %8 = load %struct.socket*, %struct.socket** %7, align 8
  store %struct.socket* %8, %struct.socket** %5, align 8
  %9 = load %struct.socket*, %struct.socket** %5, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %13 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %20 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @uuid_copy(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %18, %2
  %27 = load %struct.socket*, %struct.socket** %5, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SOF_DELEGATED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %35 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %40 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %42 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.socket*, %struct.socket** %5, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @uuid_copy(i32 %43, i32 %46)
  br label %56

48:                                               ; preds = %26
  %49 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %50 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = load %struct.socket*, %struct.socket** %5, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %55 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %48, %33
  ret void
}

declare dso_local i32 @uuid_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
